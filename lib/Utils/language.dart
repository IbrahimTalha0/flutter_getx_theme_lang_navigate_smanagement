import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': "Hello",
          'button_text': 'You have clicked the button',
          'counter': 'Counter: ',
        },
        'tr_TR': {
          'hello': "Selamun Aleyküm",
          'button_text': 'Düğmeye Tıkla',
          'counter': 'Sayaç: ',
        }
      };
}
