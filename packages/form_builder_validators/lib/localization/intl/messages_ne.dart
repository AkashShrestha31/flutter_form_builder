// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ne locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ne';

  static String m0(value) => "यो क्षेत्र मान ${value} बराबर हुनुपर्छ ।";

  static String m1(max) => "मान ${max} भन्दा कम वा बराबर हुनुपर्छ ।";

  static String m2(maxLength) =>
      "मानको लम्बाइ ${maxLength} भन्दा कम वा बराबर हुनुपर्छ ।";

  static String m3(min) => "मान ${min} भन्दा बढी वा बराबर हुनुपर्छ ।";

  static String m4(minLength) =>
      "मानको लम्बाइ ${minLength} भन्दा बढी वा बराबर हुनुपर्छ ।";

  static String m5(value) => "यो क्षेत्र मान ${value} बराबर हुनु हुँदैन ।";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "creditCardErrorText": MessageLookupByLibrary.simpleMessage(
            "यो फिल्डलाई मान्य क्रेडिट कार्ड नम्बर चाहिन्छ ।"),
        "dateStringErrorText": MessageLookupByLibrary.simpleMessage(
            "यो फिल्डलाई मान्य मिति चाहिन्छ ।"),
        "emailErrorText": MessageLookupByLibrary.simpleMessage(
            "यो फिल्डलाई मान्य इमेल ठेगाना चाहिन्छ ।"),
        "equalErrorText": m0,
        "integerErrorText":
            MessageLookupByLibrary.simpleMessage("मान एक पूर्णांक हुनुपर्छ ।"),
        "ipErrorText": MessageLookupByLibrary.simpleMessage(
            "यो फिल्डलाई मान्य IP चाहिन्छ ।"),
        "matchErrorText":
            MessageLookupByLibrary.simpleMessage("मान ढाँचासँग मेल खाँदैन ।"),
        "maxErrorText": m1,
        "maxLengthErrorText": m2,
        "minErrorText": m3,
        "minLengthErrorText": m4,
        "notEqualErrorText": m5,
        "numericErrorText":
            MessageLookupByLibrary.simpleMessage("मान संख्यात्मक हुनुपर्छ ।"),
        "requiredErrorText": MessageLookupByLibrary.simpleMessage(
            "यो क्षेत्र खाली हुन सक्दैन ।"),
        "urlErrorText": MessageLookupByLibrary.simpleMessage(
            "यो फिल्डलाई मान्य URL ठेगाना चाहिन्छ ।")
      };
}
