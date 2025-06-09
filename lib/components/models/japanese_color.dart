import 'package:audioplayers/audioplayers.dart';

class JapaneseColor {
  final String image;
  final String englishColor;
  final String translationColor;
  final String sound;
  const JapaneseColor({
    required this.image,
    required this.englishColor,
    required this.translationColor,
    required this.sound,
  });
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
