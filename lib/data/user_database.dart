import 'package:moor_flutter/moor_flutter.dart';

part 'user_database.g.dart';

class User extends Table {
  IntColumn get uuid => integer().autoIncrement().nullable()();
  TextColumn get name => text().withLength(min: 1, max: 50).nullable()();
  IntColumn get phone => integer().nullable()();
  TextColumn get email => text().withLength(min: 1, max: 50).nullable()();
  IntColumn get age => integer().nullable()();
  IntColumn get salary => integer().nullable()();
  IntColumn get rent => integer().nullable()();

  @override
  Set<Column> get primaryKey => {uuid};
}

@UseMoor(
  tables: [User],
  include: {'user.moor'},
)
class UserDatabase extends _$UserDatabase {
  UserDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          logStatements: true,
        )));

  @override
  int get schemaVersion => 1;

  Future<List<UserData>> getAllUsers() => select(user).get();

  Future getUser() => select(user).getSingle();

  Stream<List<UserData>> watchAllUsers() => select(user).watch();

  Future insertUser(UserData _user) => into(user).insert(_user);

  Future updateUser(UserData _user) => update(user).replace(_user);

  Future deleteUser(UserData _user) => delete(user).delete(_user);

  Future deleteTable() => delete(user).go();
}
