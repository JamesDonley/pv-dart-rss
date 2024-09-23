import 'package:http/http.dart' as http;
import 'package:dart_rss/dart_rss.dart';

void main() {
  final client = http.Client();

  // RSS feed
  client.get(Uri.parse('https://system.careportal.org/rss?county=Volusia&status%5B0%5D=Open')).then((response) {
    return response.body;
  }).then((bodyString) {
    final channel = RssFeed.parse(bodyString);
    channel.items.forEach((element) {
      print(element.carePortal?.zip_code);
    });
    return channel;
  });

  // Atom feed
  // client.get(Uri.parse('https://www.theverge.com/rss/index.xml')).then((response) {
  //   return response.body;
  // }).then((bodyString) {
  //   final feed = AtomFeed.parse(bodyString);
  //   return feed;
  // });
}
