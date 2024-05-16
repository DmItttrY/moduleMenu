import 'dart:convert';
import 'dart:typed_data';

class Card {
  late String id;
  String title;
  String duration;
  String timePerDay;
  String equipment;
  String difficulty;
  int k = 1;

  Card({
    required this.title,
    required this.duration,
    required this.timePerDay,
    required this.equipment,
    required this.difficulty,
  }) {
    // Генерация уникального id на основе данных карточки
    id = _generateId();
  }

  String _generateId() {
    var hash = k++;
    return hash.toString();
  }
}

class Category {
  List<Card> abs = [];
  List<Card> arms = [];
  List<Card> weights = [];

  List<Card> getAbs() {
    setAbs();
    return abs;
  }

  List<Card> getArms() {
    setArms();
    return arms;
  }

  List<Card> getWeights() {
    setWeights();
    return weights;
  }

  void setAbs() {
    abs = [
      Card(
        title: 'super strong core',
        duration: '30 days',
        timePerDay: '30-40 min/day',
        equipment: 'NO',
        difficulty: '1',
      ),
      Card(
        title: 'abs of steel',
        duration: '15 days',
        timePerDay: '30-40 min/day',
        equipment: 'NO',
        difficulty: '2',
      ),
      Card(
        title: 'abs of steel2',
        duration: '15 days',
        timePerDay: '30-40 min/day',
        equipment: 'NO',
        difficulty: '3',
      ),
    ];
  }

  void setArms() {
    arms = [
      Card(
        title: 'strong arms',
        duration: '30 days',
        timePerDay: '30-40 min/day',
        equipment: 'NO',
        difficulty: '',
      ),
      Card(
        title: 'bulging biceps',
        duration: '15 days',
        timePerDay: '30-40 min/day',
        equipment: 'NO',
        difficulty: '',
      ),
    ];
  }

  void setWeights() {
    weights = [
      Card(
        title: 'heavy lifting',
        duration: '30 days',
        timePerDay: '30-40 min/day',
        equipment: 'YES',
        difficulty: '',
      ),
      Card(
        title: 'weight training',
        duration: '15 days',
        timePerDay: '30-40 min/day',
        equipment: 'YES',
        difficulty: '',
      ),
    ];
  }
}
