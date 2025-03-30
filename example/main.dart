import 'package:http/http.dart' as http;
import 'package:dart_rss/dart_rss.dart';

void main() {
  final client = http.Client();

  // RSS feed
  client.get(Uri.parse('https://anchor.fm/s/fa0c7704/podcast/rss')).then((response) {
    return response.body;
  }).then((bodyString) {
    final channel = RssFeed.parse(bodyString);
    channel.items.forEach((element) {
      print(element.carePortal?.zip_code);
      print(channel.atomHref);
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
