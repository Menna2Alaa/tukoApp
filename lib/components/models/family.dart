import 'package:audioplayers/audioplayers.dart';

class Family {
  final String image;
  final String englishName;
  final String translationName;
  final String sound;
  const Family({
    required this.image,
    required this.englishName,
    required this.translationName,
    required this.sound,
  });
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
