import 'package:dart_rss/util/helpers.dart';
import 'package:xml/xml.dart';

class CarePortal {
  factory CarePortal.parse(XmlElement element) {
    return CarePortal(
      id: findElementOrNull(element, 'careportal:id')?.innerText,
      state: findElementOrNull(element, 'careportal:state')?.innerText,
      zip_code: findElementOrNull(element, 'careportal:zip_code')?.innerText,
      status: findElementOrNull(element, 'careportal:status')?.innerText,
      purpose: findElementOrNull(element, 'careportal:purpose')?.innerText,
      agency_name: findElementOrNull(element, 'careportal:agency_name')?.innerText,
      county: findElementOrNull(element, 'careportal:county')?.innerText,
      urgency_as_string: findElementOrNull(element, 'careportal:urgency_as_string')?.innerText,
    );
  }

  const CarePortal({
    this.id,
    this.state,
    this.zip_code,
    this.status,
    this.purpose,
    this.agency_name,
    this.county,
    this.urgency_as_string,
  });

  final String? id;
  final String? state;
  final String? zip_code;
  final String? status;
  final String? purpose;
  final String? agency_name;
  final String? county;
  final String? urgency_as_string;
}
