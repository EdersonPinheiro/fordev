import 'package:fordev/domain/entities/account_entity.dart';

class RemoteAccountmodel {
  final String acessToken;

  RemoteAccountmodel(this.acessToken);

  factory RemoteAccountmodel.fromJson(Map json) =>
      RemoteAccountmodel(json['acessToken']);

  AccountEntity toEntity() => AccountEntity(acessToken);
}
