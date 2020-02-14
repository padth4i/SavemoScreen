// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class UserData extends DataClass implements Insertable<UserData> {
  final int uuid;
  final String name;
  final int phone;
  final String email;
  final int age;
  final int salary;
  final int rent;
  UserData(
      {this.uuid,
      this.name,
      this.phone,
      this.email,
      this.age,
      this.salary,
      this.rent});
  factory UserData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return UserData(
      uuid: intType.mapFromDatabaseResponse(data['${effectivePrefix}uuid']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      phone: intType.mapFromDatabaseResponse(data['${effectivePrefix}phone']),
      email:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      age: intType.mapFromDatabaseResponse(data['${effectivePrefix}age']),
      salary: intType.mapFromDatabaseResponse(data['${effectivePrefix}salary']),
      rent: intType.mapFromDatabaseResponse(data['${effectivePrefix}rent']),
    );
  }
  factory UserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserData(
      uuid: serializer.fromJson<int>(json['uuid']),
      name: serializer.fromJson<String>(json['name']),
      phone: serializer.fromJson<int>(json['phone']),
      email: serializer.fromJson<String>(json['email']),
      age: serializer.fromJson<int>(json['age']),
      salary: serializer.fromJson<int>(json['salary']),
      rent: serializer.fromJson<int>(json['rent']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<int>(uuid),
      'name': serializer.toJson<String>(name),
      'phone': serializer.toJson<int>(phone),
      'email': serializer.toJson<String>(email),
      'age': serializer.toJson<int>(age),
      'salary': serializer.toJson<int>(salary),
      'rent': serializer.toJson<int>(rent),
    };
  }

  @override
  UserCompanion createCompanion(bool nullToAbsent) {
    return UserCompanion(
      uuid: uuid == null && nullToAbsent ? const Value.absent() : Value(uuid),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      age: age == null && nullToAbsent ? const Value.absent() : Value(age),
      salary:
          salary == null && nullToAbsent ? const Value.absent() : Value(salary),
      rent: rent == null && nullToAbsent ? const Value.absent() : Value(rent),
    );
  }

  UserData copyWith(
          {int uuid,
          String name,
          int phone,
          String email,
          int age,
          int salary,
          int rent}) =>
      UserData(
        uuid: uuid ?? this.uuid,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        age: age ?? this.age,
        salary: salary ?? this.salary,
        rent: rent ?? this.rent,
      );
  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('uuid: $uuid, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('age: $age, ')
          ..write('salary: $salary, ')
          ..write('rent: $rent')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      uuid.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              phone.hashCode,
              $mrjc(
                  email.hashCode,
                  $mrjc(
                      age.hashCode, $mrjc(salary.hashCode, rent.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is UserData &&
          other.uuid == this.uuid &&
          other.name == this.name &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.age == this.age &&
          other.salary == this.salary &&
          other.rent == this.rent);
}

class UserCompanion extends UpdateCompanion<UserData> {
  final Value<int> uuid;
  final Value<String> name;
  final Value<int> phone;
  final Value<String> email;
  final Value<int> age;
  final Value<int> salary;
  final Value<int> rent;
  const UserCompanion({
    this.uuid = const Value.absent(),
    this.name = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.age = const Value.absent(),
    this.salary = const Value.absent(),
    this.rent = const Value.absent(),
  });
  UserCompanion.insert({
    this.uuid = const Value.absent(),
    this.name = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.age = const Value.absent(),
    this.salary = const Value.absent(),
    this.rent = const Value.absent(),
  });
  UserCompanion copyWith(
      {Value<int> uuid,
      Value<String> name,
      Value<int> phone,
      Value<String> email,
      Value<int> age,
      Value<int> salary,
      Value<int> rent}) {
    return UserCompanion(
      uuid: uuid ?? this.uuid,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      age: age ?? this.age,
      salary: salary ?? this.salary,
      rent: rent ?? this.rent,
    );
  }
}

class $UserTable extends User with TableInfo<$UserTable, UserData> {
  final GeneratedDatabase _db;
  final String _alias;
  $UserTable(this._db, [this._alias]);
  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  GeneratedIntColumn _uuid;
  @override
  GeneratedIntColumn get uuid => _uuid ??= _constructUuid();
  GeneratedIntColumn _constructUuid() {
    return GeneratedIntColumn('uuid', $tableName, true,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  GeneratedIntColumn _phone;
  @override
  GeneratedIntColumn get phone => _phone ??= _constructPhone();
  GeneratedIntColumn _constructPhone() {
    return GeneratedIntColumn(
      'phone',
      $tableName,
      true,
    );
  }

  final VerificationMeta _emailMeta = const VerificationMeta('email');
  GeneratedTextColumn _email;
  @override
  GeneratedTextColumn get email => _email ??= _constructEmail();
  GeneratedTextColumn _constructEmail() {
    return GeneratedTextColumn('email', $tableName, true,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _ageMeta = const VerificationMeta('age');
  GeneratedIntColumn _age;
  @override
  GeneratedIntColumn get age => _age ??= _constructAge();
  GeneratedIntColumn _constructAge() {
    return GeneratedIntColumn(
      'age',
      $tableName,
      true,
    );
  }

  final VerificationMeta _salaryMeta = const VerificationMeta('salary');
  GeneratedIntColumn _salary;
  @override
  GeneratedIntColumn get salary => _salary ??= _constructSalary();
  GeneratedIntColumn _constructSalary() {
    return GeneratedIntColumn(
      'salary',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rentMeta = const VerificationMeta('rent');
  GeneratedIntColumn _rent;
  @override
  GeneratedIntColumn get rent => _rent ??= _constructRent();
  GeneratedIntColumn _constructRent() {
    return GeneratedIntColumn(
      'rent',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [uuid, name, phone, email, age, salary, rent];
  @override
  $UserTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user';
  @override
  final String actualTableName = 'user';
  @override
  VerificationContext validateIntegrity(UserCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.uuid.present) {
      context.handle(
          _uuidMeta, uuid.isAcceptableValue(d.uuid.value, _uuidMeta));
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    }
    if (d.phone.present) {
      context.handle(
          _phoneMeta, phone.isAcceptableValue(d.phone.value, _phoneMeta));
    }
    if (d.email.present) {
      context.handle(
          _emailMeta, email.isAcceptableValue(d.email.value, _emailMeta));
    }
    if (d.age.present) {
      context.handle(_ageMeta, age.isAcceptableValue(d.age.value, _ageMeta));
    }
    if (d.salary.present) {
      context.handle(
          _salaryMeta, salary.isAcceptableValue(d.salary.value, _salaryMeta));
    }
    if (d.rent.present) {
      context.handle(
          _rentMeta, rent.isAcceptableValue(d.rent.value, _rentMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid};
  @override
  UserData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(UserCompanion d) {
    final map = <String, Variable>{};
    if (d.uuid.present) {
      map['uuid'] = Variable<int, IntType>(d.uuid.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.phone.present) {
      map['phone'] = Variable<int, IntType>(d.phone.value);
    }
    if (d.email.present) {
      map['email'] = Variable<String, StringType>(d.email.value);
    }
    if (d.age.present) {
      map['age'] = Variable<int, IntType>(d.age.value);
    }
    if (d.salary.present) {
      map['salary'] = Variable<int, IntType>(d.salary.value);
    }
    if (d.rent.present) {
      map['rent'] = Variable<int, IntType>(d.rent.value);
    }
    return map;
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(_db, alias);
  }
}

abstract class _$UserDatabase extends GeneratedDatabase {
  _$UserDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UserTable _user;
  $UserTable get user => _user ??= $UserTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [user];
}
