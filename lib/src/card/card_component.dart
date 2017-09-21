import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

// import the card object
import 'card.dart';

@Component(
  selector: 'card',
  styleUrls: const ['card_component.css'],
  templateUrl: 'card_component.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives
  ],
)

class CardComponent {

  // instatiate card
  final Card card = new Card(
    // question
    'What is professional wrestler, John Cena, catch phrase?',
    //options
    const [
      "Come at me",
      "You can't see me!",
      "Try me!",
      "I'm the best"
    ],
    //answer index
    1
  );

  int answer;

  bool get isCorrect => answer == null ? null : answer == card.answer;
}