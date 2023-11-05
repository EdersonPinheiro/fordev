import '../../data/http/http.dart';
import '../../domain/entities/account_entity.dart';

class RemoteAccountmodel {
  final String acessToken;

  RemoteAccountmodel(this.acessToken);

  factory RemoteAccountmodel.fromJson(Map json) {
    if (!json.containsKey('acessToken')) {
      throw HttpError.invalidData;
    }
    return RemoteAccountmodel(json['acessToken']);
  }

  AccountEntity toEntity() => AccountEntity(acessToken);
}
