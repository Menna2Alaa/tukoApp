import 'package:audioplayers/audioplayers.dart';

class Number {
  final String image;
  final String englishText;
  final String translationText;
  final String sound;
  const Number({
    required this.image,
    required this.englishText,
    required this.translationText,
    required this.sound,
  });
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
