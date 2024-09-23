import 'package:dart_rss/util/helpers.dart';
import 'package:xml/xml.dart';

class CarePortal {
  factory CarePortal.parse(XmlElement element) {
    return CarePortal(
      id: findElementOrNull(element, 'careportal:id')?.innerText,
      state: findElementOrNull(element, 'careportal:state')?.innerText,
      zip_code: findElementOrNull(element, 'careportal:zip_code')?.innerText,
    );
  }

  const CarePortal({
    this.id,
    this.state,
    this.zip_code,
  });

  final String? id;
  final String? state;
  final String? zip_code;
}
