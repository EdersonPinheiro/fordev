import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart';
import 'package:faker/faker.dart';
import 'package:test/test.dart';

class HttpAdapter {
  final Client client;

  HttpAdapter({required this.client});

  Future<Response> request({
    required String url,
    required String method,
  }) async {
    return client.post(any(named: url), 200);
  }
}

class ClientSpy extends Mock implements Client {}

void main() {

  group('post', () {
    test('Should call post with correct values', () async {
      final client = ClientSpy();
      final sut = HttpAdapter(client: client);
      final url = faker.internet.httpUrl();

      await sut.request(url: url, method: 'post');

      verify(client.post(Uri.parse(url)));
    });
  });
}
