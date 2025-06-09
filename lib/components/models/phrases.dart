import 'package:audioplayers/audioplayers.dart';

class Phrases {
  final String englishPhase;
  final String jpPhase;
  final String sound;
  const Phrases({
    required this.jpPhase,
    required this.englishPhase,
    required this.sound,
  });
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
