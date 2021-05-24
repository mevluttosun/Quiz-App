import 'dart:math';

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}



const List sample_data = [

  {
    'id': 1,
    'question': 'A place where we have been or described\n',
    'options': ['Location\n', 'Knowledge\n', 'Discount\n', 'Free\n'],
    'answer_index': 0
  },
  {
    'id': 2,
    'question': 'Green areas, usually in gardens and parks\n',
    'options': ['Current\n', 'Grass\n', 'Dictionary\n', 'Glass\n'],
    'answer_index': 1
  },
  {
    'id': 3,
    'question':
        'A kind of sport played by two teams and trying to circulate a ball belonging to the game\n',
    'options': ['Task\n', 'Run\n', 'Basketball\n', 'Discount\n'],
    'answer_index': 2
  },
  {
    'id': 4,
    'question': 'Organizing, planning about a situation or event\n',
    'options': ['Board\n', 'Panic\n', 'Plan\n', 'Early\n'],
    'answer_index': 2
  },
  {
    'id': 5,
    'question': 'A place without light\n',
    'options': ['Dark\n', 'Child\n', 'Disadvantage\n', 'Manage\n'],
    'answer_index': 0
  },
  {
    'id': 6,
    'question': 'A complete and wonderful job or situation\n',
    'options': ['Build\n', 'Child\n', 'Great\n', 'Circle\n'],
    'answer_index': 2
  },
  {
    'id': 7,
    'question': 'Standing directly against an individual or an object\n',
    'options': ['Experience\n', 'Team\n', 'Across\n', 'Umbrella\n'],
    'answer_index': 2
  },
  {
    'id': 8,
    'question': 'Talking about something\n',
    'options': ['Experiment\n', 'Speak\n', 'College\n', 'Contain\n'],
    'answer_index': 1
  },
  {
    'id': 9,
    'question':
        'It is a 24 hour zone created by the rotation of the world around its own axis\n',
    'options': ['Letter\n', 'Day\n', 'Choke\n', 'Know\n'],
    'answer_index': 1
  },
  {
    'id': 10,
    'question': 'Not being able to find a sought object\n',
    'options': ['Lost\n', 'Circle\n', 'Task\n', 'Circle\n'],
    'answer_index': 0
  },
  {
    'id': 11,
    'question':
        'It is the community that holds more than 2 objects or people in the same place\n',
    'options': ['Group\n', 'Break\n', 'Question\n', 'Use\n'],
    'answer_index': 0
  },
  {
    'id': 12,
    'question': 'To be in certain action, movement and activity\n',
    'options': ['Action\n', 'Ask\n', 'Waiter\n', 'Book\n'],
    'answer_index': 0
  },
  {
    'id': 13,
    'question': 'Quickness, to go above a certain speed\n',
    'options': ['Interest\n', 'Early\n', 'Speed\n', 'Result\n'],
    'answer_index': 2
  },
  {
    'id': 14,
    'question': 'Asking someone to do something or to ask for want something\n',
    'options': ['Experience\n', 'Milk\n', 'Please\n', 'Heavy\n'],
    'answer_index': 2
  },
  {
    'id': 15,
    'question': 'The end of a person’s life\n',
    'options': ['Berry\n', 'Fake\n', 'Dead\n', 'Lake\n'],
    'answer_index': 2
  },
  {
    'id': 16,
    'question':
        'Defines the words characterized the name and it is the word used before the name\n',
    'options': ['Adjective\n', 'Far\n', 'Eye\n', 'Cost\n'],
    'answer_index': 0
  },
  {
    'id': 17,
    'question':
        'Based on reason and some data, intuition about an event or situation\n',
    'options': ['Race\n', 'Guess\n', 'Plane\n', 'Approve\n'],
    'answer_index': 1
  },
  {
    'id': 18,
    'question': 'This word has two meanings\n',
    'options': ['Plane\n', 'Repair\n', 'Buy\n', 'Kind\n'],
    'answer_index': 0
  },
  {
    'id': 19,
    'question': 'It refers to the higher of the normal sound decibel\n',
    'options': ['Loud\n', 'Center\n', 'School\n', 'Distance\n'],
    'answer_index': 0
  },
  {
    'id': 20,
    'question': 'To reach a common decision on a certain subject\n',
    'options': ['Speak\n', 'Draw\n', 'Deal\n', 'Between\n'],
    'answer_index': 2
  },
  {
    'id': 21,
    'question': 'Repeating a topic or situation periodically\n',
    'options': ['Bed\n', 'Paint\n', 'Again\n', 'Draw\n'],
    'answer_index': 2
  },
  {
    'id': 22,
    'question': 'A tool used attack or defend\n',
    'options': ['Necessary\n', 'Gun\n', 'Increase\n', 'Panic\n'],
    'answer_index': 1
  },
  {
    'id': 23,
    'question': 'Connecting to someone or someone with love\n',
    'options': ['Say\n', 'Love\n', 'Plane\n', 'Day\n'],
    'answer_index': 1
  },
  {
    'id': 24,
    'question':
        'The breed that will fertilize the female of humans, animals or plants\n',
    'options': ['Table\n', 'Love\n', 'Man\n', 'Deep\n'],
    'answer_index': 2
  },
  {
    'id': 25,
    'question': 'To decide on a matter or a problem, to a conclusion\n',
    'options': ['Decide\n', 'Object\n', 'Remember\n', 'Arm\n'],
    'answer_index': 0
  },
  {
    'id': 26,
    'question': 'Being between two subjects or objects\n',
    'options': ['Among\n', 'Call\n', 'Beautiful\n', 'Decide\n'],
    'answer_index': 0
  },
  {
    'id': 27,
    'question': 'The whole of hairs on our heads\n',
    'options': ['Factors\n', 'Hair\n', 'Young\n', 'Cast\n'],
    'answer_index': 1
  },
  {
    'id': 28,
    'question':
        'It is an action used in conjunction with activities such as a sport, a computer game or dancing with music\n',
    'options': ['Cook\n', 'Past\n', 'Play\n', 'Famous\n'],
    'answer_index': 2
  },
  {
    'id': 29,
    'question': 'The area from the surface to the inside, the depth\n',
    'options': ['Common\n', 'Choke\n', 'Deep\n', 'Wound\n'],
    'answer_index': 2
  },
  {
    'id': 30,
    'question':
        'It is a drawing a part of the earth on a plane by reducing it with a certain scale\n',
    'options': ['Television\n', 'Map\n', 'Country\n', 'City\n'],
    'answer_index': 1
  },
  {
    'id': 31,
    'question':
        'Responding to a situation or a question, responding to things that are curious\n',
    'options': ['Complete\n', 'Taste\n', 'Answer\n', 'Task\n'],
    'answer_index': 2
  },
  {
    'id': 32,
    'question': 'Identifying a particular situation, object or person\n',
    'options': ['Second\n', 'Describe\n', 'Boast\n', 'Stop\n'],
    'answer_index': 1
  },
  {
    'id': 33,
    'question': 'Feeling joy in the face of a pleasing situation\n',
    'options': ['Kill\n', 'Happy\n', 'Boy\n', 'Agenda\n'],
    'answer_index': 1
  },
  {
    'id': 34,
    'question': 'The eyes and mind first perceive when looking at something\n',
    'options': ['President\n', 'Appear\n', 'Delicious\n', 'Feel\n'],
    'answer_index': 1
  },
  {
    'id': 35,
    'question': 'Anti singular\n',
    'options': ['Plural\n', 'Milk\n', 'Telephone\n', 'Umbrella\n'],
    'answer_index': 0
  },
  {
    'id': 36,
    'question': 'Symptom, sign\n',
    'options': ['Mark\n', 'Catch\n', 'Damage\n', 'Risk\n'],
    'answer_index': 0
  },
  {
    'id': 37,
    'question':
        'Decorating a certain group of items, objects or subjects according to a certain order\n',
    'options': ['Measure\n', 'Design\n', 'Rose\n', 'Repeat\n'],
    'answer_index': 1
  },
  {
    'id': 38,
    'question': 'Not easy, troublesome\n',
    'options': ['Fly\n', 'Century\n', 'Hard\n', 'Method\n'],
    'answer_index': 2
  },
  {
    'id': 39,
    'question':
        'It is a kind of fruit that grows in the tree with red, green and yellow colors\n',
    'options': ['Force\n', 'Apple\n', 'Television\n', 'Enjoy\n'],
    'answer_index': 1
  },
  {
    'id': 40,
    'question':
        'The way emotions and thoughts Express witout being in the form of prose\n',
    'options': ['Poem\n', 'Drive\n', 'Known\n', 'Home\n'],
    'answer_index': 0
  },
  {
    'id': 41,
    'question': 'A geometric shape whose four sides are equal\n',
    'options': ['Write\n', 'Feedback\n', 'Square\n', 'Baby\n'],
    'answer_index': 2
  },
  {
    'id': 42,
    'question': 'What is being talked about\n',
    'options': ['Yard\n', 'Paint\n', 'Matter\n', 'Continue\n'],
    'answer_index': 2
  },
  {
    'id': 43,
    'question': 'To consider the details of a whole\n',
    'options': ['Detail\n', 'Depress\n', 'Umbrella\n', 'Plane\n'],
    'answer_index': 0
  },
  {
    'id': 44,
    'question': 'A kind of head-mounted accessory\n',
    'options': ['Rate\n', 'Teacher\n', 'Hat\n', 'Quickly\n'],
    'answer_index': 2
  },
  {
    'id': 45,
    'question': 'To direct those who are curious about a subject\n',
    'options': ['Bright\n', 'Church\n', 'Ask\n', 'Emergency\n'],
    'answer_index': 2
  },
  {
    'id': 46,
    'question': 'Not rich\n',
    'options': ['Hour\n', 'Poor\n', 'Hair\n', 'Place\n'],
    'answer_index': 1
  },
  {
    'id': 47,
    'question':
        'To determine the specific features of a concept by explaining\n',
    'options': ['Correct\n', 'Determine\n', 'Snore\n', 'Corner\n'],
    'answer_index': 1
  },
  {
    'id': 48,
    'question': 'Explanations of concepts\n',
    'options': ['Sleepy\n', 'Mean\n', 'Play\n', 'Choose\n'],
    'answer_index': 1
  },
  {
    'id': 49,
    'question': 'The name given to individuals aged 0-3 years\n',
    'options': ['Baby\n', 'Across\n', 'Want\n', 'Hair\n'],
    'answer_index': 0
  },
  {
    'id': 50,
    'question':
        'The organ located in the thoracic cavity between the two lungs\n',
    'options': ['Hat\n', 'Heart\n', 'Baby\n', 'Eat\n'],
    'answer_index': 1
  },
  {
    'id': 51,
    'question': 'A situation getting better\n',
    'options': ['Letter\n', 'Date\n', 'Develop\n', 'Factors\n'],
    'answer_index': 2
  },
  {
    'id': 52,
    'question': 'Possinle situation, not impossible\n',
    'options': ['East\n', 'Mouth\n', 'Possible\n', 'Box\n'],
    'answer_index': 2
  },
  {
    'id': 53,
    'question': 'Not good results and conditions\n',
    'options': ['Cut\n', 'Bad\n', 'By\n', 'Grass\n'],
    'answer_index': 1
  },
  {
    'id': 54,
    'question': 'Unit used to evaluate a quantity\n',
    'options': ['Middle\n', 'Measure\n', 'Class\n', 'Egg\n'],
    'answer_index': 1
  },
  {
    'id': 55,
    'question': 'A book containing words and their meanings\n',
    'options': ['Wound\n', 'Dictionary\n', 'Advantage\n', 'Picture\n'],
    'answer_index': 1
  },
  {
    'id': 56,
    'question': 'The temperature of something high\n',
    'options': ['Husband\n', 'Paper\n', 'Heat\n', 'Transport\n'],
    'answer_index': 2
  },
  {
    'id': 57,
    'question': 'Ending the movement of an individual and thing in motion\n',
    'options': ['Plan\n', 'Stop\n', 'Write\n', 'Cold\n'],
    'answer_index': 1
  },
  {
    'id': 58,
    'question': 'A round- shaped instrument for playing various games\n',
    'options': ['Assistant\n', 'Ball\n', 'Result\n', 'Last\n'],
    'answer_index': 1
  },
  {
    'id': 59,
    'question': 'With a distinction between them\n',
    'options': ['Bicycle\n', 'Difference\n', 'Stroke\n', 'Difference\n'],
    'answer_index': 1
  },
  {
    'id': 60,
    'question': 'Is about action and practice, which is easy to appley\n',
    'options': ['Refund\n', 'Practice\n', 'Middle\n', 'Gender\n'],
    'answer_index': 1
  },
  {
    'id': 61,
    'question': 'Perceived as pleasant in appearance\n',
    'options': ['Beautiful\n', 'Noun\n', 'Discount\n', 'Bright\n'],
    'answer_index': 0
  },
  {
    'id': 62,
    'question': 'To introduce themselves in the first meeting of two people\n',
    'options': ['Like\n', 'But\n', 'Meet\n', 'Role\n'],
    'answer_index': 2
  },
  {
    'id': 63,
    'question': 'Means its weight is more than normal\n',
    'options': ['Remember\n', 'Heavy\n', 'Century\n', 'Physical\n'],
    'answer_index': 1
  },
  {
    'id': 64,
    'question': 'Means not easy, made with trouble and difficulty\n',
    'options': ['Like\n', 'Across\n', 'Difficult\n', 'Money\n'],
    'answer_index': 2
  },
  {
    'id': 65,
    'question': 'Used when describing the cause of an event or situation\n',
    'options': ['Because\n', 'Dentist\n', 'High\n', 'Important\n'],
    'answer_index': 0
  },
  {
    'id': 66,
    'question':
        'Not being able to do one job alone and ask for support from someone else\n',
    'options': ['Effect\n', 'Light\n', 'Help\n', 'Wallet\n'],
    'answer_index': 2
  },
  {
    'id': 67,
    'question': 'Means joining a group or a team\n',
    'options': ['Plural\n', 'Member\n', 'Dark\n', 'Brother\n'],
    'answer_index': 1
  },
  {
    'id': 68,
    'question': 'To make use of something, to be used, to be applied\n',
    'options': ['Yesterday\n', 'Prepare\n', 'Increase\n', 'Observe\n'],
    'answer_index': 1
  },
  {
    'id': 69,
    'question': 'Line followed by a person or object\n',
    'options': ['Common\n', 'Direction\n', 'Ice\n', 'Ice\n'],
    'answer_index': 1
  },
  {
    'id': 70,
    'question': 'Articles used for sleeping\n',
    'options': ['Help\n', 'Book\n', 'Bed\n', 'Enter\n'],
    'answer_index': 2
  },
  {
    'id': 71,
    'question':
        'It refers to things that are not learned about their existence, but which are learned later\n',
    'options': ['Discover\n', 'Read\n', 'Book\n', 'Yard\n'],
    'answer_index': 0
  },
  {
    'id': 72,
    'question': 'Which is the distance between the top and bottom\n',
    'options': ['Common\n', 'High\n', 'Middle\n', 'Request\n'],
    'answer_index': 1
  },
  {
    'id': 73,
    'question':
        'Being at the head of a community, organization or group means managing\n',
    'options': ['Goal\n', 'Northern\n', 'President\n', 'Sit\n'],
    'answer_index': 2
  },
  {
    'id': 74,
    'question': 'Procedure, way\n',
    'options': ['Method\n', 'Exciting\n', 'Know\n', 'Date\n'],
    'answer_index': 0
  },
  {
    'id': 75,
    'question':
        'The name given to people who g oto school anda re trained by teachers\n',
    'options': ['Student\n', 'Century\n', 'Develop\n', 'Garden\n'],
    'answer_index': 0
  },
  {
    'id': 76,
    'question': 'First\n',
    'options': ['Birthday\n', 'Often\n', 'Before\n', 'Cloth\n'],
    'answer_index': 2
  },
  {
    'id': 77,
    'question': 'There is a certain distance between the two things\n',
    'options': ['Change\n', 'Run\n', 'Distance\n', 'Possible\n'],
    'answer_index': 2
  },
  {
    'id': 78,
    'question':
        'Telling about the events that took place in the past by giving the date and place\n',
    'options': ['Assistant\n', 'Poor\n', 'History\n', 'Compare\n'],
    'answer_index': 2
  },
  {
    'id': 79,
    'question': 'To take the first step for a job or an action\n',
    'options': ['Begin\n', 'Married\n', 'Damage\n', 'Hour\n'],
    'answer_index': 0
  },
  {
    'id': 80,
    'question':
        'The place that is equidistant between the two ends of something\n',
    'options': ['Object\n', 'Middle\n', 'Contain\n', 'Best\n'],
    'answer_index': 1
  },
  {
    'id': 81,
    'question': 'The structure in which people live\n',
    'options': ['Home\n', 'Rose\n', 'Train\n', 'Force\n'],
    'answer_index': 0
  },
  {
    'id': 82,
    'question': 'Profession for treating people who are sick\n',
    'options': ['Exciting\n', 'Doctor\n', 'Capital\n', 'Summer\n'],
    'answer_index': 1
  },
  {
    'id': 83,
    'question': 'Trouble, issue\n',
    'options': ['Problem\n', 'Stop\n', 'Taste\n', 'Vacation\n'],
    'answer_index': 0
  },
  {
    'id': 84,
    'question': 'Means not ahead\n',
    'options': ['Interest\n', 'Behind\n', 'Cast\n', 'Bee\n'],
    'answer_index': 1
  },
  {
    'id': 85,
    'question': 'It means hoping for a job\n',
    'options': ['Week\n', 'Crowd\n', 'Hope\n', 'Employee\n'],
    'answer_index': 2
  },
  {
    'id': 86,
    'question': 'Is the item at the entrance of a building, room or house\n',
    'options': ['Full\n', 'Door\n', 'Part\n', 'Egg\n'],
    'answer_index': 1
  },
  {
    'id': 87,
    'question': 'A white beverage made from cow, sheep or goat\n',
    'options': ['Lost\n', 'Milk\n', 'Check\n', 'Possible\n'],
    'answer_index': 1
  },
  {
    'id': 88,
    'question': 'Reproduce\n',
    'options': ['Result\n', 'Produce\n', 'Break\n', 'Guess\n'],
    'answer_index': 1
  },
  {
    'id': 89,
    'question': 'The part of something that is close to the ground\n',
    'options': ['Below\n', 'Sometimes\n', 'Control\n', 'Hair\n'],
    'answer_index': 0
  },
  {
    'id': 90,
    'question': 'Drawing a line, painting a thing\n',
    'options': ['Draw\n', 'Feel\n', 'Push\n', 'Law\n'],
    'answer_index': 0
  },
  {
    'id': 91,
    'question': 'A substance is above its normal temperature\n',
    'options': ['Wall\n', 'Hot\n', 'Mistake\n', 'Milk\n'],
    'answer_index': 1
  },
  {
    'id': 92,
    'question': 'Clothing made to wear\n',
    'options': ['Grass\n', 'Dress\n', 'Record\n', 'Plant\n'],
    'answer_index': 1
  },
  {
    'id': 93,
    'question': 'Refers to substance derived from soil, plants, animals etc\n',
    'options': ['Illness\n', 'Product\n', 'Before\n', 'Action\n'],
    'answer_index': 1
  },
  {
    'id': 94,
    'question': 'Means the ability to think, absorb and understand\n',
    'options': ['Mind\n', 'Tend\n', 'Lie\n', 'Contain\n'],
    'answer_index': 0
  },
  {
    'id': 95,
    'question': 'Qualitively the most admirable level\n',
    'options': ['Profit\n', 'Best\n', 'Week\n', 'Meet\n'],
    'answer_index': 1
  },
  {
    'id': 96,
    'question':
        'A time period of sixty minutes, equal to twenty- four of a day’s duration\n',
    'options': ['Dark\n', 'Wait\n', 'Hour\n', 'During\n'],
    'answer_index': 2
  },
  {
    'id': 97,
    'question': 'Means driving vehicles such as cars\n',
    'options': ['Law\n', 'Deep\n', 'Drive\n', 'Burn\n'],
    'answer_index': 2
  },
  {
    'id': 98,
    'question': 'To perform a job by preparing the necessary conditions\n',
    'options': ['Plural\n', 'Provide\n', 'Know\n', 'Travel\n'],
    'answer_index': 1
  },
  {
    'id': 99,
    'question': 'Time value of one- sixty of the hour\n',
    'options': ['About\n', 'Minute\n', 'Copy\n', 'Girl\n'],
    'answer_index': 1
  },
  {
    'id': 100,
    'question': 'Is the situation between two things\n',
    'options': ['Girl\n', 'Between\n', 'Break\n', 'Life\n'],
    'answer_index': 1
  },
  {
    'id': 101,
    'question': 'Without water, moisture\n',
    'options': ['Experiment\n', 'Repeat\n', 'Dry\n', 'Member\n'],
    'answer_index': 2
  },
  {
    'id': 102,
    'question': 'One of the four seasons, the hosttest\n',
    'options': ['Law\n', 'Summer\n', 'Doctor\n', 'Telephone\n'],
    'answer_index': 1
  },
  {
    'id': 103,
    'question': 'Hover over something\n',
    'options': ['Snore\n', 'Win\n', 'Huge\n', 'Eat\n'],
    'answer_index': 2
  },
  {
    'id': 104,
    'question': 'The desire to see something he/she likes or someone\n',
    'options': ['Discover\n', 'Level\n', 'Miss\n', 'Good\n'],
    'answer_index': 2
  },
  {
    'id': 105,
    'question': 'Above avarage\n',
    'options': ['Big\n', 'Sleep\n', 'Dry\n', 'Deep\n'],
    'answer_index': 0
  },
  {
    'id': 106,
    'question': 'As long as it lasts\n',
    'options': ['Develop\n', 'Bed\n', 'During\n', 'Help\n'],
    'answer_index': 2
  },
  {
    'id': 107,
    'question': 'A flying animal with wings and beak\n',
    'options': ['Birthday\n', 'Doctor\n', 'Bird\n', 'Good\n'],
    'answer_index': 2
  },
  {
    'id': 108,
    'question': 'Catching animals in the forest\n',
    'options': ['Hunting\n', 'Feel\n', 'Interest\n', 'Poem\n'],
    'answer_index': 0
  },
  {
    'id': 109,
    'question': 'The section from the shoulder to the tip of the fingers\n',
    'options': ['Check\n', 'Arm\n', 'Increase\n', 'Control\n'],
    'answer_index': 1
  },
  {
    'id': 110,
    'question': 'Vital fluid\n',
    'options': ['Except\n', 'Smell\n', 'Blood\n', 'Play\n'],
    'answer_index': 2
  },
  {
    'id': 111,
    'question': 'A very brief period of time\n',
    'options': ['First\n', 'Responsibility\n', 'Moment\n', 'Wall\n'],
    'answer_index': 2
  },
  {
    'id': 112,
    'question':
        'Flat piece of wood or other hard material used for floors or buildings\n',
    'options': ['Class\n', 'Again\n', 'Board\n', 'Treatment\n'],
    'answer_index': 2
  },
  {
    'id': 113,
    'question': 'Frozen water\n',
    'options': ['Ice\n', 'Request\n', 'Close\n', 'Increase\n'],
    'answer_index': 0
  },
  {
    'id': 114,
    'question': 'Exert force on somebody/ something to move them away\n',
    'options': ['Box\n', 'Push\n', 'Disadvantage\n', 'Complete\n'],
    'answer_index': 1
  },
  {
    'id': 115,
    'question': 'Person who deals with fine arts\n',
    'options': ['Absurd\n', 'Smell\n', 'Artist\n', 'Guess\n'],
    'answer_index': 2
  },
  {
    'id': 116,
    'question':
        'In an effort; the person who helps the person doing the work\n',
    'options': ['Assistant\n', 'Exclaim\n', 'Wallet\n', 'Compare\n'],
    'answer_index': 0
  },
  {
    'id': 117,
    'question': 'Identified seperately\n',
    'options': ['Each\n', 'Product\n', 'Break\n', 'Certain\n'],
    'answer_index': 0
  },
  {
    'id': 118,
    'question': 'Written or printed pages glues together\n',
    'options': ['Northern\n', 'Book\n', 'Earth\n', 'Wife\n'],
    'answer_index': 1
  },
  {
    'id': 119,
    'question': 'Current exhange of coins\n',
    'options': ['Money\n', 'Key\n', 'Box\n', 'Law\n'],
    'answer_index': 0
  },
  {
    'id': 120,
    'question': 'A suggestion or thought\n',
    'options': ['Risk\n', 'Idea\n', 'Practice\n', 'Sleepy\n'],
    'answer_index': 1
  },
  {
    'id': 121,
    'question': 'A sentence worded or expressed so as to elicit information\n',
    'options': ['Question\n', 'Move\n', 'Smell\n', 'Smell\n'],
    'answer_index': 0
  },
  {
    'id': 122,
    'question': 'Happening or done before the expected time\n',
    'options': ['Fire\n', 'Law\n', 'Early\n', 'Bed\n'],
    'answer_index': 2
  },
  {
    'id': 123,
    'question': 'Refer to two people or things\n',
    'options': ['Heavy\n', 'Record\n', 'Both\n', 'Father\n'],
    'answer_index': 2
  },
  {
    'id': 124,
    'question': 'Great significance or value\n',
    'options': ['Form\n', 'Important\n', 'Wallet\n', 'End\n'],
    'answer_index': 1
  },
  {
    'id': 125,
    'question': 'The planet which we live\n',
    'options': ['Earth\n', 'Write\n', 'Task\n', 'Known\n'],
    'answer_index': 0
  },
  {
    'id': 126,
    'question': 'A container with a flat base and sides\n',
    'options': ['Follow\n', 'Box\n', 'Catch\n', 'Street\n'],
    'answer_index': 1
  },
  {
    'id': 127,
    'question': 'Rapidly, at a fast speed\n',
    'options': ['Factory\n', 'Quickly\n', 'Middle\n', 'Suggest\n'],
    'answer_index': 1
  },
  {
    'id': 128,
    'question': 'The direction on the right hand of people facing North\n',
    'options': ['Treatment\n', 'Heavy\n', 'East\n', 'Depress\n'],
    'answer_index': 2
  },
  {
    'id': 129,
    'question': 'Contains as parts of a whole\n',
    'options': ['Include\n', 'Answer\n', 'Thin\n', 'Please\n'],
    'answer_index': 0
  },
  {
    'id': 130,
    'question': 'An animal that produces honey\n',
    'options': ['Industry\n', 'Large\n', 'Bee\n', 'Discount\n'],
    'answer_index': 2
  },
  {
    'id': 131,
    'question': 'Conveniently useful\n',
    'options': ['Open\n', 'Benefit\n', 'Consonant\n', 'Mistake\n'],
    'answer_index': 1
  },
  {
    'id': 132,
    'question': 'Fruits such as strawbeeries, cherries\n',
    'options': ['Copy\n', 'Exciting\n', 'Berry\n', 'Speak\n'],
    'answer_index': 2
  },
  {
    'id': 133,
    'question': 'Very good, unique\n',
    'options': ['Decide\n', 'History\n', 'Wonderful\n', 'Buy\n'],
    'answer_index': 2
  },
  {
    'id': 134,
    'question': 'Male child\n',
    'options': ['List\n', 'Boy\n', 'Limit\n', 'Unhealthy\n'],
    'answer_index': 1
  },
  {
    'id': 135,
    'question': 'Achieved without great effort\n',
    'options': ['Easy\n', 'Church\n', 'Address\n', 'Capital\n'],
    'answer_index': 0
  },
  {
    'id': 136,
    'question': 'Each of the twelve named periods into year\n',
    'options': ['Request\n', 'Learn\n', 'Month\n', 'Deal\n'],
    'answer_index': 2
  },
  {
    'id': 137,
    'question': 'faculty, subject\n',
    'options': ['First\n', 'Branch\n', 'Try\n', 'Shoes\n'],
    'answer_index': 1
  },
  {
    'id': 138,
    'question': 'Making little noise or no noise\n',
    'options': ['Sister\n', 'Quiet\n', 'Enter\n', 'Fight\n'],
    'answer_index': 1
  },
  {
    'id': 139,
    'question': 'Propel the body through water using bodily movement\n',
    'options': ['Cloth\n', 'Again\n', 'Swim\n', 'Life\n'],
    'answer_index': 2
  },
  {
    'id': 140,
    'question': 'Become or make greater in size or amount\n',
    'options': ['Often\n', 'Increase\n', 'Berry\n', 'Explore\n'],
    'answer_index': 1
  },
  {
    'id': 141,
    'question': 'Put the food in the mouth and chew and swallow it\n',
    'options': ['Mother\n', 'Eat\n', 'Mountain\n', 'Government\n'],
    'answer_index': 1
  },
  {
    'id': 142,
    'question': 'Seperate into pieces as a result\n',
    'options': ['Break\n', 'Experiment\n', 'Choke\n', 'Grass\n'],
    'answer_index': 0
  },
  {
    'id': 143,
    'question': 'The outside limit of an object, area or surface\n',
    'options': ['Edge\n', 'Education\n', 'Responsibility\n', 'Cut\n'],
    'answer_index': 0
  },
  {
    'id': 144,
    'question': 'Facts provided or learned about something\n',
    'options': ['Telephone\n', 'Information\n', 'Later\n', 'Please\n'],
    'answer_index': 1
  },
  {
    'id': 145,
    'question': 'Reflecting much light\n',
    'options': ['Bright\n', 'Letter\n', 'Laugh\n', 'King\n'],
    'answer_index': 0
  },
  {
    'id': 146,
    'question': 'The speed at which something changes and happens\n',
    'options': ['Exciting\n', 'Tend\n', 'Rate\n', 'Letter\n'],
    'answer_index': 2
  },
  {
    'id': 147,
    'question': 'The natural satellite of the earth\n',
    'options': ['Hope\n', 'Mistake\n', 'Moon\n', 'Vacation\n'],
    'answer_index': 2
  },
  {
    'id': 148,
    'question': 'Competition to see which is the fastest\n',
    'options': ['Apple\n', 'Design\n', 'Race\n', 'Right\n'],
    'answer_index': 2
  },
  {
    'id': 149,
    'question': 'The period between the night and noon\n',
    'options': ['Morning\n', 'Heavy\n', 'Minute\n', 'Unemployment\n'],
    'answer_index': 0
  },
  {
    'id': 150,
    'question': 'A resul tor consequences of an action\n',
    'options': ['Check\n', 'Ring\n', 'Effect\n', 'Member\n'],
    'answer_index': 2
  },
  {
    'id': 151,
    'question': 'Conjunction reporting affiliation\n',
    'options': ['Unhealthy\n', 'Extra\n', 'With\n', 'Dentist\n'],
    'answer_index': 2
  },
  {
    'id': 152,
    'question':
        'A mano r boy in a relation to other sons and daughter of his parents\n',
    'options': ['Map\n', 'Glass\n', 'Brother\n', 'Country\n'],
    'answer_index': 2
  },
  {
    'id': 153,
    'question': 'Working on a subject means trying\n',
    'options': ['Repeat\n', 'Fight\n', 'Interest\n', 'Experience\n'],
    'answer_index': 2
  },
  {
    'id': 154,
    'question': 'A white food from chickens\n',
    'options': ['Egg\n', 'Single\n', 'Young\n', 'Street\n'],
    'answer_index': 0
  },
  {
    'id': 155,
    'question': 'To learn the content of a written text and what it says\n',
    'options': ['Read\n', 'Large\n', 'Course\n', 'Idea\n'],
    'answer_index': 0
  },
  {
    'id': 156,
    'question': 'Integrate\n',
    'options': ['Dark\n', 'Build\n', 'Method\n', 'Bed\n'],
    'answer_index': 1
  },
  {
    'id': 157,
    'question':
        'It is called a piece of land surrounded by sea on all four sides\n',
    'options': ['Island\n', 'Car\n', 'Say\n', 'Location\n'],
    'answer_index': 0
  },
  {
    'id': 158,
    'question': 'Get through\n',
    'options': ['Pay\n', 'End\n', 'By\n', 'Hard\n'],
    'answer_index': 1
  },
  {
    'id': 159,
    'question': 'Fire something and make it burn\n',
    'options': ['Class\n', 'Apply\n', 'Burn\n', 'Question\n'],
    'answer_index': 2
  },
  {
    'id': 160,
    'question': 'Woman with a child\n',
    'options': ['Calculate\n', 'Mother\n', 'Big\n', 'Mother\n'],
    'answer_index': 1
  },
  {
    'id': 161,
    'question': 'Cause\n',
    'options': ['Reason\n', 'Never\n', 'Shoes\n', 'Taste\n'],
    'answer_index': 0
  },
  {
    'id': 162,
    'question': 'Indulge, take pleasure\n',
    'options': ['Chief\n', 'Think\n', 'Enjoy\n', 'Climb\n'],
    'answer_index': 2
  },
  {
    'id': 163,
    'question': 'Participate, attend, go in for\n',
    'options': ['Join\n', 'Ugly\n', 'Law\n', 'Farm\n'],
    'answer_index': 0
  },
  {
    'id': 164,
    'question':
        'But between two seperate sentences with contrast between the stated thoughts\n',
    'options': ['But\n', 'Silent\n', 'Behind\n', 'Ugly\n'],
    'answer_index': 0
  },
  {
    'id': 165,
    'question': 'Sufficient, adequate\n',
    'options': ['Enough\n', 'Fire\n', 'Competition\n', 'Hat\n'],
    'answer_index': 0
  },
  {
    'id': 166,
    'question': 'Register\n',
    'options': ['Burn\n', 'Record\n', 'Tired\n', 'Exercise\n'],
    'answer_index': 1
  },
  {
    'id': 167,
    'question':
        'It refers to the height with protruding, high and inclined slopes of the earth’s crust\n',
    'options': ['Height\n', 'Mountain\n', 'Board\n', 'Egg\n'],
    'answer_index': 1
  },
  {
    'id': 168,
    'question': 'Tutor for student\n',
    'options': ['Illness\n', 'Member\n', 'Teacher\n', 'Best\n'],
    'answer_index': 2
  },
  {
    'id': 169,
    'question': 'Tool for unlocking\n',
    'options': ['Behind\n', 'Key\n', 'Early\n', 'Hot\n'],
    'answer_index': 1
  },
  {
    'id': 170,
    'question': 'Getting something for Money\n',
    'options': ['Among\n', 'Illness\n', 'Buy\n', 'Apply\n'],
    'answer_index': 2
  },
  {
    'id': 171,
    'question': 'Go into\n',
    'options': ['Level\n', 'Cost\n', 'Enter\n', 'Information\n'],
    'answer_index': 2
  },
  {
    'id': 172,
    'question': 'By way of\n',
    'options': ['Competition\n', 'By\n', 'Both\n', 'Deep\n'],
    'answer_index': 1
  },
  {
    'id': 173,
    'question': 'The lower and upper lip part of a cavity\n',
    'options': ['Compare\n', 'Extra\n', 'Mouth\n', 'History\n'],
    'answer_index': 2
  },
  {
    'id': 174,
    'question': 'To end someone’s life\n',
    'options': ['Kill\n', 'Student\n', 'Choose\n', 'Natural\n'],
    'answer_index': 0
  },
  {
    'id': 175,
    'question': 'Not forgetting something known\n',
    'options': ['Train\n', 'Remember\n', 'Plan\n', 'Fake\n'],
    'answer_index': 1
  },
  {
    'id': 176,
    'question': 'On a par with each other\n',
    'options': ['Equal\n', 'Physical\n', 'Rate\n', 'Relation\n'],
    'answer_index': 0
  },
  {
    'id': 177,
    'question': 'Square board supported by feet, with various jobs\n',
    'options': ['Table\n', 'Explain\n', 'Never\n', 'Burn\n'],
    'answer_index': 0
  },
  {
    'id': 178,
    'question': 'Conversation by phone\n',
    'options': ['Later\n', 'Call\n', 'Competition\n', 'Tired\n'],
    'answer_index': 1
  },
  {
    'id': 179,
    'question': 'The hours when the day ends and the night starts\n',
    'options': ['Evening\n', 'Push\n', 'Delay\n', 'Matter\n'],
    'answer_index': 0
  },
  {
    'id': 180,
    'question':
        'The section that includes all individuals with common characteristics, where the sexes are seperated\n',
    'options': ['Middle\n', 'Kind\n', 'Absurd\n', 'Capital\n'],
    'answer_index': 1
  },
  {
    'id': 181,
    'question': 'Displacement event\n',
    'options': ['Role\n', 'Kind\n', 'Move\n', 'Game\n'],
    'answer_index': 2
  },
  {
    'id': 182,
    'question': 'To do or say once more\n',
    'options': ['Fresh\n', 'Birthday\n', 'Repeat\n', 'Feel\n'],
    'answer_index': 2
  },
  {
    'id': 183,
    'question': 'Be able to\n',
    'options': ['Rose\n', 'Part\n', 'Can\n', 'Option\n'],
    'answer_index': 2
  },
  {
    'id': 184,
    'question': 'One by one gives meaning\n',
    'options': ['Bright\n', 'Every\n', 'Task\n', 'Visit\n'],
    'answer_index': 1
  },
  {
    'id': 185,
    'question': 'Head of state\n',
    'options': ['Observe\n', 'Lost\n', 'King\n', 'Question\n'],
    'answer_index': 2
  },
  {
    'id': 186,
    'question': 'Important cirt, the administrative center of the state\n',
    'options': ['Sentence\n', 'Capital\n', 'Mark\n', 'Hour\n'],
    'answer_index': 1
  },
  {
    'id': 187,
    'question': 'What is taken to be similar\n',
    'options': ['Example\n', 'Hope\n', 'Target\n', 'Develop\n'],
    'answer_index': 0
  },
  {
    'id': 188,
    'question': 'Getting angry with someone for a situation\n',
    'options': ['Crowd\n', 'Poem\n', 'Resent\n', 'By\n'],
    'answer_index': 2
  },
  {
    'id': 189,
    'question':
        'A person, an animal, a plant, a place, an emotion and thought etc\n',
    'options': ['Promise\n', 'Name\n', 'Write\n', 'Summer\n'],
    'answer_index': 1
  },
  {
    'id': 190,
    'question': '\n',
    'options': ['Picture\n', 'Forest\n', 'Know\n', 'Artist\n'],
    'answer_index': 2
  },
  {
    'id': 191,
    'question': 'A vehicle used to drive from place to place\n',
    'options': ['Except\n', 'Car\n', 'Race\n', 'Tend\n'],
    'answer_index': 1
  },
  {
    'id': 192,
    'question': 'Which is outside of something\n',
    'options': ['Exercise\n', 'Except\n', 'Compare\n', 'Possible\n'],
    'answer_index': 1
  },
  {
    'id': 193,
    'question': 'Exactingly\n',
    'options': ['Report\n', 'Carefully\n', 'Again\n', 'Describe\n'],
    'answer_index': 1
  },
  {
    'id': 194,
    'question': 'Alive and emotionalistic\n',
    'options': ['Apply\n', 'Exciting\n', 'Continue\n', 'Room\n'],
    'answer_index': 1
  },
  {
    'id': 195,
    'question': 'Common, celebrated, kenned\n',
    'options': ['Buy\n', 'Crowd\n', 'Known\n', 'Height\n'],
    'answer_index': 2
  },
  {
    'id': 196,
    'question': 'Asserted thought\n',
    'options': ['Yes\n', 'Artist\n', 'Case\n', 'Resent\n'],
    'answer_index': 2
  },
  {
    'id': 197,
    'question': 'It means training and practice\n',
    'options': ['Think\n', 'About\n', 'Exercise\n', 'Decrease\n'],
    'answer_index': 2
  },
  {
    'id': 198,
    'question': 'In nature, related to nature\n',
    'options': ['Natural\n', 'Compare\n', 'Tall\n', 'Shock\n'],
    'answer_index': 0
  },
  {
    'id': 199,
    'question': 'Another event caused by an event\n',
    'options': ['Lost\n', 'Result\n', 'Hour\n', 'Success\n'],
    'answer_index': 1
  },
  {
    'id': 200,
    'question': 'Ms\n',
    'options': ['Circle\n', 'Lady\n', 'Government\n', 'Advice\n'],
    'answer_index': 1
  },
  {
    'id': 201,
    'question': 'Capture an escaping person or animal\n',
    'options': ['Promise\n', 'Catch\n', 'Quiet\n', 'Cloud\n'],
    'answer_index': 1
  },
  {
    'id': 202,
    'question': 'Knowledge and skills gained by a person\n',
    'options': ['Wound\n', 'Manage\n', 'Experience\n', 'Repeat\n'],
    'answer_index': 2
  },
  {
    'id': 203,
    'question': 'One job leads to another job\n',
    'options': ['Cause\n', 'Follow\n', 'Poem\n', 'Enter\n'],
    'answer_index': 0
  },
  {
    'id': 204,
    'question': 'Small puddle\n',
    'options': ['Lake\n', 'Choke\n', 'Sleep\n', 'Important\n'],
    'answer_index': 0
  },
  {
    'id': 205,
    'question': 'Scientific verification\n',
    'options': ['Blood\n', 'Problem\n', 'Experiment\n', 'Read\n'],
    'answer_index': 2
  },
  {
    'id': 206,
    'question': 'Wherewithal, necessity\n',
    'options': ['Husband\n', 'Wall\n', 'Necessary\n', 'Transport\n'],
    'answer_index': 2
  },
  {
    'id': 207,
    'question': 'Something is longer than normal\n',
    'options': ['Team\n', 'Tall\n', 'Climb\n', 'Smell\n'],
    'answer_index': 1
  },
  {
    'id': 208,
    'question': 'Middle of a certain place\n',
    'options': ['Friend\n', 'Center\n', 'History\n', 'Laugh\n'],
    'answer_index': 1
  },
  {
    'id': 209,
    'question': 'Not poor\n',
    'options': ['Move\n', 'Rich\n', 'Deep\n', 'Transport\n'],
    'answer_index': 1
  },
  {
    'id': 210,
    'question': 'To give information about a subject\n',
    'options': ['Disadvantage\n', 'Explain\n', 'Artist\n', 'Accident\n'],
    'answer_index': 1
  },
  {
    'id': 211,
    'question':
        'The way people communicate to Express their feelings and thoughts\n',
    'options': ['Move\n', 'Less\n', 'Language\n', 'Goal\n'],
    'answer_index': 2
  },
  {
    'id': 212,
    'question': 'The time lived in\n',
    'options': ['Century\n', 'Summer\n', 'Promise\n', 'Equipment\n'],
    'answer_index': 0
  },
  {
    'id': 213,
    'question': 'Requirement and demand\n',
    'options': ['Past\n', 'Address\n', 'Need\n', 'Across\n'],
    'answer_index': 2
  },
  {
    'id': 214,
    'question': 'Organs of sight\n',
    'options': ['Poor\n', 'Fall\n', 'Eye\n', 'Shoes\n'],
    'answer_index': 2
  },
  {
    'id': 215,
    'question': 'Able to firmly relied on to happen\n',
    'options': ['Certain\n', 'Later\n', 'Store\n', 'Effect\n'],
    'answer_index': 0
  },
  {
    'id': 216,
    'question': 'The front part of the person’s head\n',
    'options': ['Fable\n', 'Face\n', 'Often\n', 'Open\n'],
    'answer_index': 1
  },
  {
    'id': 217,
    'question': 'Relatively great capacity or size\n',
    'options': ['Physical\n', 'Past\n', 'Large\n', 'Fine\n'],
    'answer_index': 2
  },
  {
    'id': 218,
    'question': 'Possibility of something happening\n',
    'options': ['Chance\n', 'List\n', 'No\n', 'Language\n'],
    'answer_index': 0
  },
  {
    'id': 219,
    'question': 'Morally good- true or correct as a fact\n',
    'options': ['Cause\n', 'Right\n', 'Noun\n', 'Place\n'],
    'answer_index': 1
  },
  {
    'id': 220,
    'question': 'Buildings where goods are manufactured\n',
    'options': ['Factory\n', 'Good\n', 'Factors\n', 'Bird\n'],
    'answer_index': 0
  },
  {
    'id': 221,
    'question': 'Make different\n',
    'options': ['Form\n', 'Team\n', 'Change\n', 'Rose\n'],
    'answer_index': 2
  },
  {
    'id': 222,
    'question': 'Remaining- continue for a specifired period of time\n',
    'options': ['First\n', 'Language\n', 'Last\n', 'Idea\n'],
    'answer_index': 2
  },
  {
    'id': 223,
    'question': 'Circumstance or fact that contributes to a result\n',
    'options': ['Cost\n', 'Factors\n', 'Quiet\n', 'Cloth\n'],
    'answer_index': 1
  },
  {
    'id': 224,
    'question': 'At no time in the past or future\n',
    'options': ['Like\n', 'Capital\n', 'Never\n', 'First\n'],
    'answer_index': 2
  },
  {
    'id': 225,
    'question': 'Examine something in order to determine its accuracy\n',
    'options': ['Room\n', 'Location\n', 'Check\n', 'Cotton\n'],
    'answer_index': 2
  },
  {
    'id': 226,
    'question': 'Act of falling or collapsing\n',
    'options': ['Love\n', 'Fall\n', 'Month\n', 'Delay\n'],
    'answer_index': 1
  },
  {
    'id': 227,
    'question': 'A leader of people\n',
    'options': ['Industry\n', 'Chief\n', 'Help\n', 'Report\n'],
    'answer_index': 1
  },
  {
    'id': 228,
    'question': 'A group of one or two parents and their kids\n',
    'options': ['Visit\n', 'Family\n', 'Increase\n', 'Benefit\n'],
    'answer_index': 1
  },
  {
    'id': 229,
    'question': 'Space that can be occupied\n',
    'options': ['True\n', 'Room\n', 'Common\n', 'Kill\n'],
    'answer_index': 1
  },
  {
    'id': 230,
    'question': 'Discovered recently\n',
    'options': ['Miss\n', 'Country\n', 'New\n', 'Drive\n'],
    'answer_index': 2
  },
  {
    'id': 231,
    'question': 'A young human being\n',
    'options': ['Growth\n', 'Transport\n', 'Child\n', 'Fun\n'],
    'answer_index': 2
  },
  {
    'id': 232,
    'question': 'Near future\n',
    'options': ['Later\n', 'Observe\n', 'Cast\n', 'Crowd\n'],
    'answer_index': 0
  },
  {
    'id': 233,
    'question': 'Known about by many people\n',
    'options': ['Come\n', 'Carefully\n', 'Famous\n', 'Company\n'],
    'answer_index': 2
  },
  {
    'id': 234,
    'question': 'The time from sunset to dawn\n',
    'options': ['Repeat\n', 'Example\n', 'Night\n', 'Farm\n'],
    'answer_index': 2
  },
  {
    'id': 235,
    'question': 'Before tomorrow, the day after yesterday\n',
    'options': ['Fine\n', 'Great\n', 'Today\n', 'Correct\n'],
    'answer_index': 2
  },
  {
    'id': 236,
    'question': 'Seperating the desired from many options\n',
    'options': ['Shape\n', 'Choose\n', 'Practice\n', 'Option\n'],
    'answer_index': 1
  },
  {
    'id': 237,
    'question': 'A kind of flower with various colors\n',
    'options': ['Information\n', 'Reason\n', 'Rose\n', 'With\n'],
    'answer_index': 2
  },
  {
    'id': 238,
    'question': 'Requiring a long way to go\n',
    'options': ['Far\n', 'Lie\n', 'Finally\n', 'Course\n'],
    'answer_index': 0
  },
  {
    'id': 239,
    'question': 'Holy place of christians\n',
    'options': ['Adjective\n', 'Church\n', 'Moon\n', 'Read\n'],
    'answer_index': 1
  },
  {
    'id': 240,
    'question': 'Give information to students\n',
    'options': ['Check\n', 'Target\n', 'Train\n', 'Big\n'],
    'answer_index': 2
  },
  {
    'id': 241,
    'question': 'It is a large land that is cultivated on\n',
    'options': ['Farm\n', 'Level\n', 'Change\n', 'Certain\n'],
    'answer_index': 0
  },
  {
    'id': 242,
    'question': 'Spherical\n',
    'options': ['Cloud\n', 'Circle\n', 'Heavy\n', 'Known\n'],
    'answer_index': 1
  },
  {
    'id': 243,
    'question': 'Law to obey\n',
    'options': ['Leave\n', 'Known\n', 'Rule\n', 'Rose\n'],
    'answer_index': 2
  },
  {
    'id': 244,
    'question': 'Refuse\n',
    'options': ['No\n', 'Refund\n', 'Follow\n', 'Minute\n'],
    'answer_index': 0
  },
  {
    'id': 245,
    'question': 'Who earns their living by cultivating the land\n',
    'options': ['History\n', 'Farmer\n', 'Poor\n', 'Compare\n'],
    'answer_index': 1
  },
  {
    'id': 246,
    'question': 'Action taken as a result of happiness\n',
    'options': ['Laugh\n', 'Begin\n', 'Room\n', 'Because\n'],
    'answer_index': 0
  },
  {
    'id': 247,
    'question': 'Town, place\n',
    'options': ['City\n', 'Taste\n', 'Board\n', 'By\n'],
    'answer_index': 0
  },
  {
    'id': 248,
    'question': 'Quickly\n',
    'options': ['Fast\n', 'Fresh\n', 'Request\n', 'Language\n'],
    'answer_index': 0
  },
  {
    'id': 249,
    'question': 'Room in which the lesson is taught\n',
    'options': ['Class\n', 'Capital\n', 'Traffic\n', 'Brother\n'],
    'answer_index': 0
  },
  {
    'id': 250,
    'question': 'Walk fast\n',
    'options': ['Father\n', 'Height\n', 'Run\n', 'Fly\n'],
    'answer_index': 2
  },
  {
    'id': 251,
    'question': 'An organ on our face that helps us smell\n',
    'options': ['Sleep\n', 'Nose\n', 'Less\n', 'Natural\n'],
    'answer_index': 1
  },
  {
    'id': 252,
    'question': 'Compulsory rules\n',
    'options': ['Law\n', 'Accept\n', 'Course\n', 'Adjective\n'],
    'answer_index': 0
  },
  {
    'id': 253,
    'question': 'A man had a child\n',
    'options': ['Father\n', 'Include\n', 'Gender\n', 'Benefit\n'],
    'answer_index': 0
  },
  {
    'id': 254,
    'question': 'Not dirty\n',
    'options': ['Clean\n', 'Bed\n', 'Want\n', 'Lake\n'],
    'answer_index': 0
  },
  {
    'id': 255,
    'question': 'Worry\n',
    'options': ['Fear\n', 'Limit\n', 'Interest\n', 'Date\n'],
    'answer_index': 0
  },
  {
    'id': 256,
    'question': 'Obtain information\n',
    'options': ['Learn\n', 'Explain\n', 'Birthday\n', 'Complete\n'],
    'answer_index': 0
  },
  {
    'id': 257,
    'question': 'Name\n',
    'options': ['Delicious\n', 'Noun\n', 'Letter\n', 'Doctor\n'],
    'answer_index': 1
  },
  {
    'id': 258,
    'question': 'Go to a high place\n',
    'options': ['Climb\n', 'Accident\n', 'Copy\n', 'Poor\n'],
    'answer_index': 0
  },
  {
    'id': 259,
    'question': 'Things that resemble the features\n',
    'options': ['Northern\n', 'Direction\n', 'Same\n', 'Correct\n'],
    'answer_index': 2
  },
  {
    'id': 260,
    'question': 'Sense\n',
    'options': ['Feel\n', 'Today\n', 'Check\n', 'Kill\n'],
    'answer_index': 0
  },
  {
    'id': 261,
    'question': 'Shut down, turn off\n',
    'options': ['Close\n', 'Apply\n', 'Tall\n', 'Easy\n'],
    'answer_index': 0
  },
  {
    'id': 262,
    'question': 'Take a part in a violent struggle\n',
    'options': ['Agenda\n', 'Fight\n', 'Again\n', 'Boy\n'],
    'answer_index': 1
  },
  {
    'id': 263,
    'question': 'Utter words to convey information\n',
    'options': ['Say\n', 'Message\n', 'Cloth\n', 'Employee\n'],
    'answer_index': 0
  },
  {
    'id': 264,
    'question': 'Material can be seen or touch\n',
    'options': ['Key\n', 'Heat\n', 'Object\n', 'Trust\n'],
    'answer_index': 2
  },
  {
    'id': 265,
    'question': 'Woven or felted fabric made from cotton or similar things\n',
    'options': ['Finger\n', 'Decide\n', 'Cloth\n', 'Win\n'],
    'answer_index': 2
  },
  {
    'id': 266,
    'question': 'After a long time\n',
    'options': ['Edge\n', 'Fear\n', 'Finally\n', 'Again\n'],
    'answer_index': 2
  },
  {
    'id': 267,
    'question': 'Go away from\n',
    'options': ['Leave\n', 'Common\n', 'Physical\n', 'Best\n'],
    'answer_index': 0
  },
  {
    'id': 268,
    'question': 'A visible mass of condensed watery vapour floating\n',
    'options': ['Finally\n', 'Cloud\n', 'Begin\n', 'Experiment\n'],
    'answer_index': 1
  },
  {
    'id': 269,
    'question': 'An institution for educating children\n',
    'options': ['Know\n', 'President\n', 'School\n', 'Exclaim\n'],
    'answer_index': 2
  },
  {
    'id': 270,
    'question': 'Go from one place to another\n',
    'options': ['Travel\n', 'Describe\n', 'Again\n', 'Known\n'],
    'answer_index': 0
  },
  {
    'id': 271,
    'question': 'Discover by chance or unexpectedly\n',
    'options': ['Reason\n', 'Milk\n', 'Find\n', 'Among\n'],
    'answer_index': 2
  },
  {
    'id': 272,
    'question': 'Notice something and register it as being significant\n',
    'options': ['Among\n', 'President\n', 'Observe\n', 'Important\n'],
    'answer_index': 2
  },
  {
    'id': 273,
    'question': 'Low temperature\n',
    'options': ['Necessary\n', 'Catch\n', 'Cold\n', 'Need\n'],
    'answer_index': 2
  },
  {
    'id': 274,
    'question': 'High quality good\n',
    'options': ['Fine\n', 'Shape\n', 'Paper\n', 'Dance\n'],
    'answer_index': 0
  },
  {
    'id': 275,
    'question': 'Move towards near to the speaker\n',
    'options': ['Choose\n', 'Come\n', 'Bite\n', 'Vacation\n'],
    'answer_index': 1
  },
  {
    'id': 276,
    'question':
        'Coming after the first in time or order sixtieth of a minute of time\n',
    'options': ['Bicycle\n', 'Money\n', 'Second\n', 'Dry\n'],
    'answer_index': 2
  },
  {
    'id': 277,
    'question': 'West side of people facing North\n',
    'options': ['Left\n', 'Lake\n', 'Accident\n', 'Life\n'],
    'answer_index': 0
  },
  {
    'id': 278,
    'question': 'Parts attached to the hands\n',
    'options': ['Finger\n', 'Illness\n', 'Doctor\n', 'New\n'],
    'answer_index': 0
  },
  {
    'id': 279,
    'question': 'Occuring or done often prevalent\n',
    'options': ['Common\n', 'Break\n', 'Appear\n', 'Physical\n'],
    'answer_index': 0
  },
  {
    'id': 280,
    'question': 'Ingite\n',
    'options': ['Fire\n', 'College\n', 'Disadvantage\n', 'Free\n'],
    'answer_index': 0
  },
  {
    'id': 281,
    'question': 'Place of work\n',
    'options': ['Yard\n', 'Farm\n', 'Company\n', 'Wall\n'],
    'answer_index': 2
  },
  {
    'id': 282,
    'question': 'Convey something to someone\n',
    'options': ['Fire\n', 'Send\n', 'Each\n', 'Arm\n'],
    'answer_index': 1
  },
  {
    'id': 283,
    'question': 'Leading from others in terms of time, order and place\n',
    'options': ['Forest\n', 'Kill\n', 'First\n', 'Triangle\n'],
    'answer_index': 2
  },
  {
    'id': 284,
    'question': 'Missing than usual\n',
    'options': ['Answer\n', 'Yesterday\n', 'Less\n', 'Bed\n'],
    'answer_index': 2
  },
  {
    'id': 285,
    'question': 'The water larger than sea\n',
    'options': ['Ocean\n', 'Gender\n', 'Country\n', 'Kill\n'],
    'answer_index': 0
  },
  {
    'id': 286,
    'question': 'To reveal similar or different aspects of people or objects\n',
    'options': ['Break\n', 'Compare\n', 'Paper\n', 'Law\n'],
    'answer_index': 1
  },
  {
    'id': 287,
    'question': 'Ground\n',
    'options': ['Break\n', 'Level\n', 'Floor\n', 'Second\n'],
    'answer_index': 2
  },
  {
    'id': 288,
    'question': 'To remove the deficiency and bring it to the whole state\n',
    'options': ['Complete\n', 'Climb\n', 'Term\n', 'Soft\n'],
    'answer_index': 0
  },
  {
    'id': 289,
    'question': 'The colored part of a plant carries its reproductive organs\n',
    'options': ['Know\n', 'Wall\n', 'Flower\n', 'Pay\n'],
    'answer_index': 2
  },
  {
    'id': 290,
    'question': 'Written paper for communication\n',
    'options': ['Skill\n', 'Open\n', 'Letter\n', 'Responsibility\n'],
    'answer_index': 2
  },
  {
    'id': 291,
    'question': 'Statement\n',
    'options': ['Snore\n', 'Later\n', 'Sentence\n', 'Growth\n'],
    'answer_index': 2
  },
  {
    'id': 292,
    'question': 'It means that it is constantly ongoing\n',
    'options': ['Salary\n', 'Often\n', 'Skill\n', 'Taste\n'],
    'answer_index': 1
  },
  {
    'id': 293,
    'question': 'Not vowel letters in the alphabet\n',
    'options': ['Cold\n', 'Consonant\n', 'Bicycle\n', 'Important\n'],
    'answer_index': 1
  },
  {
    'id': 294,
    'question': 'A feature that belongs to birds and an inanimate being\n',
    'options': ['Fine\n', 'Target\n', 'Fly\n', 'Tall\n'],
    'answer_index': 2
  },
  {
    'id': 295,
    'question': 'Include\n',
    'options': ['Description\n', 'Country\n', 'Contain\n', 'Milk\n'],
    'answer_index': 2
  },
  {
    'id': 296,
    'question': 'Go in a certain direction\n',
    'options': ['Vacation\n', 'Hard\n', 'Follow\n', 'Certain\n'],
    'answer_index': 2
  },
  {
    'id': 297,
    'question': 'Form, manner\n',
    'options': ['Shape\n', 'Remember\n', 'Toy\n', 'Describe\n'],
    'answer_index': 0
  },
  {
    'id': 298,
    'question': 'Not young\n',
    'options': ['Old\n', 'Night\n', 'Come\n', 'Week\n'],
    'answer_index': 0
  },
  {
    'id': 299,
    'question': 'Keep a situation going\n',
    'options': ['Student\n', 'Employee\n', 'Continue\n', 'Known\n'],
    'answer_index': 2
  },
  {
    'id': 300,
    'question': 'Degree, grade\n',
    'options': ['Level\n', 'Form\n', 'Exercise\n', 'Hope\n'],
    'answer_index': 0
  },
  {
    'id': 301,
    'question': 'Geometric shape formed by three line segments\n',
    'options': ['Island\n', 'Triangle\n', 'Edge\n', 'Football\n'],
    'answer_index': 1
  },
  {
    'id': 302,
    'question': 'Things that enable us to feed to survive\n',
    'options': ['Food\n', 'Government\n', 'Island\n', 'Night\n'],
    'answer_index': 0
  },
  {
    'id': 303,
    'question': 'To check\n',
    'options': ['Control\n', 'Hard\n', 'Illness\n', 'Exhibition\n'],
    'answer_index': 0
  },
  {
    'id': 304,
    'question': 'The clothes we wear on our feet when going out\n',
    'options': ['Stop\n', 'Cook\n', 'Shoes\n', 'Past\n'],
    'answer_index': 2
  },
  {
    'id': 305,
    'question': 'Strength as an attribute of physical action\n',
    'options': ['Listen\n', 'Book\n', 'Force\n', 'Send\n'],
    'answer_index': 2
  },
  {
    'id': 306,
    'question': 'Allowing Access throught empty space not closed\n',
    'options': ['Open\n', 'Depress\n', 'Wait\n', 'Produce\n'],
    'answer_index': 0
  },
  {
    'id': 307,
    'question': 'Prepare food\n',
    'options': ['Home\n', 'Cook\n', 'Traffic\n', 'Fire\n'],
    'answer_index': 1
  },
  {
    'id': 308,
    'question': 'A large area covered with trees\n',
    'options': ['Join\n', 'Right\n', 'Forest\n', 'Profit\n'],
    'answer_index': 2
  },
  {
    'id': 309,
    'question': 'A thing made to be similar\n',
    'options': ['Friend\n', 'Copy\n', 'Current\n', 'Advantage\n'],
    'answer_index': 1
  },
  {
    'id': 310,
    'question': 'Visible shape of something\n',
    'options': ['Boast\n', 'Noun\n', 'Form\n', 'Want\n'],
    'answer_index': 2
  },
  {
    'id': 311,
    'question': 'Being in a resting position intentionally false statement\n',
    'options': ['Room\n', 'Like\n', 'Lie\n', 'Produce\n'],
    'answer_index': 2
  },
  {
    'id': 312,
    'question': 'Not making any sound\n',
    'options': ['Edge\n', 'Silent\n', 'Shock\n', 'Method\n'],
    'answer_index': 1
  },
  {
    'id': 313,
    'question': 'Paper in a book\n',
    'options': ['Page\n', 'Soft\n', 'Find\n', 'Explain\n'],
    'answer_index': 0
  },
  {
    'id': 314,
    'question': 'A place where two sides meet\n',
    'options': ['Minute\n', 'Ask\n', 'Corner\n', 'Important\n'],
    'answer_index': 2
  },
  {
    'id': 315,
    'question': 'Not under the control\n',
    'options': ['Free\n', 'Shock\n', 'Problem\n', 'Think\n'],
    'answer_index': 0
  },
  {
    'id': 316,
    'question': 'Covering the surface of something\n',
    'options': ['Room\n', 'Every\n', 'Paint\n', 'Describe\n'],
    'answer_index': 2
  },
  {
    'id': 317,
    'question':
        'A woman or girl in relation to toher daughters or sons of her parents\n',
    'options': ['Break\n', 'Sister\n', 'Correct\n', 'Drive\n'],
    'answer_index': 1
  },
  {
    'id': 318,
    'question': 'In accordance with fact or truth\n',
    'options': ['Mother\n', 'Correct\n', 'Because\n', 'Correct\n'],
    'answer_index': 1
  },
  {
    'id': 319,
    'question': 'Recently made\n',
    'options': ['Married\n', 'Brother\n', 'Fresh\n', 'Never\n'],
    'answer_index': 2
  },
  {
    'id': 320,
    'question': 'Require the payment before it can be done\n',
    'options': ['Boy\n', 'Relax\n', 'Cost\n', 'Delay\n'],
    'answer_index': 2
  },
  {
    'id': 321,
    'question': 'The time from birth to death\n',
    'options': ['Need\n', 'Race\n', 'Life\n', 'Edge\n'],
    'answer_index': 2
  },
  {
    'id': 322,
    'question': 'Material that is for writing or drawing\n',
    'options': ['Paper\n', 'Play\n', 'Unemployment\n', 'Grass\n'],
    'answer_index': 0
  },
  {
    'id': 323,
    'question': 'A person with whom one has a bond of mutual affection\n',
    'options': ['Friend\n', 'Noun\n', 'Exhibition\n', 'Friend\n'],
    'answer_index': 0
  },
  {
    'id': 324,
    'question': 'A white plant in a cocoon\n',
    'options': ['Employee\n', 'Cotton\n', 'Need\n', 'Picture\n'],
    'answer_index': 1
  },
  {
    'id': 325,
    'question': 'Edible part of the trees\n',
    'options': ['Money\n', 'Fruit\n', 'Reason\n', 'High\n'],
    'answer_index': 1
  },
  {
    'id': 326,
    'question': 'The third version of the word can\n',
    'options': ['Could\n', 'Control\n', 'Northern\n', 'East\n'],
    'answer_index': 0
  },
  {
    'id': 327,
    'question': 'Not dark\n',
    'options': ['Every\n', 'Light\n', 'Advantage\n', 'Enough\n'],
    'answer_index': 1
  },
  {
    'id': 328,
    'question': 'Complete, whole, overall\n',
    'options': ['Free\n', 'Taste\n', 'Full\n', 'Blood\n'],
    'answer_index': 2
  },
  {
    'id': 329,
    'question': 'It means that things leaves a whole\n',
    'options': ['Approve\n', 'Bee\n', 'Part\n', 'Deal\n'],
    'answer_index': 2
  },
  {
    'id': 330,
    'question': 'Place under the sovereignty of a state\n',
    'options': ['Contain\n', 'Country\n', 'Message\n', 'Paint\n'],
    'answer_index': 1
  },
  {
    'id': 331,
    'question': 'Spend a joyful and pleasant time\n',
    'options': ['Fun\n', 'Employee\n', 'Each\n', 'Wait\n'],
    'answer_index': 0
  },
  {
    'id': 332,
    'question': 'Not lie, right and correct\n',
    'options': ['Student\n', 'Earth\n', 'True\n', 'Begin\n'],
    'answer_index': 2
  },
  {
    'id': 333,
    'question': 'Not standing, staying in the place where it settled\n',
    'options': ['Hour\n', 'Often\n', 'Sit\n', 'Sister\n'],
    'answer_index': 2
  },
  {
    'id': 334,
    'question': 'Training place on various subjects\n',
    'options': ['Date\n', 'Course\n', 'Physical\n', 'Verb\n'],
    'answer_index': 1
  },
  {
    'id': 335,
    'question': 'Good and beautiful things\n',
    'options': ['Feel\n', 'Like\n', 'Home\n', 'Teenager\n'],
    'answer_index': 1
  },
  {
    'id': 336,
    'question': 'Is fun for people to have a good time\n',
    'options': ['Single\n', 'Game\n', 'Verb\n', 'Advice\n'],
    'answer_index': 1
  },
  {
    'id': 337,
    'question': 'To create something new by making use of the mind\n',
    'options': ['Create\n', 'Member\n', 'Sleepy\n', 'Picture\n'],
    'answer_index': 0
  },
  {
    'id': 338,
    'question': 'Where there are various flowers and plants\n',
    'options': ['Garden\n', 'Chance\n', 'Sleepy\n', 'Experience\n'],
    'answer_index': 0
  },
  {
    'id': 339,
    'question': 'Shed tears\n',
    'options': ['Cry\n', 'Pay\n', 'Board\n', 'Wait\n'],
    'answer_index': 0
  },
  {
    'id': 340,
    'question': 'A number of connected items or names written\n',
    'options': ['Best\n', 'Football\n', 'List\n', 'Garden\n'],
    'answer_index': 2
  },
  {
    'id': 341,
    'question': 'Natural resting state\n',
    'options': ['Money\n', 'Bird\n', 'Sleep\n', 'Risk\n'],
    'answer_index': 2
  },
  {
    'id': 342,
    'question': 'Gone by in time\n',
    'options': ['Clean\n', 'Past\n', 'Huge\n', 'City\n'],
    'answer_index': 1
  },
  {
    'id': 343,
    'question': 'Female child\n',
    'options': ['Mark\n', 'Berry\n', 'Girl\n', 'Plural\n'],
    'answer_index': 2
  },
  {
    'id': 344,
    'question': 'Large number of people gathered together\n',
    'options': ['Feel\n', 'Crowd\n', 'Produce\n', 'Evening\n'],
    'answer_index': 1
  },
  {
    'id': 345,
    'question': 'Drinking containers\n',
    'options': ['Glass\n', 'Try\n', 'Sleepy\n', 'Design\n'],
    'answer_index': 0
  },
  {
    'id': 346,
    'question': 'Belonging to the present time\n',
    'options': ['Second\n', 'Current\n', 'Football\n', 'Transport\n'],
    'answer_index': 1
  },
  {
    'id': 347,
    'question': 'Giving Money that is due for work done\n',
    'options': ['Class\n', 'Pay\n', 'Telephone\n', 'Case\n'],
    'answer_index': 1
  },
  {
    'id': 348,
    'question': 'Giving attention to the sound\n',
    'options': ['Plan\n', 'Enjoy\n', 'Listen\n', 'Course\n'],
    'answer_index': 2
  },
  {
    'id': 349,
    'question': 'Chemical element and precious metal\n',
    'options': ['Explore\n', 'Gold\n', 'Location\n', 'Depress\n'],
    'answer_index': 1
  },
  {
    'id': 350,
    'question': 'Forming into pleased\n',
    'options': ['Smile\n', 'Use\n', 'Page\n', 'Listen\n'],
    'answer_index': 0
  },
  {
    'id': 351,
    'question': 'Make an opening or wound with a sharp tool\n',
    'options': ['Speak\n', 'Cut\n', 'Ache\n', 'Car\n'],
    'answer_index': 1
  },
  {
    'id': 352,
    'question': 'Fine\n',
    'options': ['Grass\n', 'Open\n', 'Good\n', 'Cast\n'],
    'answer_index': 2
  },
  {
    'id': 353,
    'question': 'A painting or drawing\n',
    'options': ['Picture\n', 'Fun\n', 'Explain\n', 'Car\n'],
    'answer_index': 0
  },
  {
    'id': 354,
    'question': 'Small size or amount\n',
    'options': ['Little\n', 'Determine\n', 'Tired\n', 'Today\n'],
    'answer_index': 0
  },
  {
    'id': 355,
    'question': 'Move rhythmically to music\n',
    'options': ['Farm\n', 'Vacation\n', 'Dance\n', 'Toy\n'],
    'answer_index': 2
  },
  {
    'id': 356,
    'question': 'People with the authority to govern a country or state\n',
    'options': ['Bite\n', 'Minute\n', 'Government\n', 'Stress\n'],
    'answer_index': 2
  },
  {
    'id': 357,
    'question': 'Remain alive- survive\n',
    'options': ['Live\n', 'Build\n', 'Fear\n', 'Tall\n'],
    'answer_index': 0
  },
  {
    'id': 358,
    'question': 'Current location\n',
    'options': ['Place\n', 'Book\n', 'Ice\n', 'Develop\n'],
    'answer_index': 0
  },
  {
    'id': 359,
    'question': 'Now and then\n',
    'options': ['Food\n', 'Sometimes\n', 'Relax\n', 'Current\n'],
    'answer_index': 1
  },
  {
    'id': 360,
    'question': 'Testing an object or thought\n',
    'options': ['Try\n', 'Understand\n', 'Cut\n', 'Television\n'],
    'answer_index': 0
  },
  {
    'id': 361,
    'question': 'Comprehend\n',
    'options': ['Understand\n', 'New\n', 'Plan\n', 'Map\n'],
    'answer_index': 0
  },
  {
    'id': 362,
    'question': 'To benefit for a certain purpose\n',
    'options': ['Use\n', 'Easy\n', 'Responsibility\n', 'Information\n'],
    'answer_index': 0
  },
  {
    'id': 363,
    'question': 'Predicate\n',
    'options': ['Verb\n', 'Bright\n', 'Delay\n', 'Risk\n'],
    'answer_index': 0
  },
  {
    'id': 364,
    'question': 'Small settlement\n',
    'options': ['Village\n', 'Increase\n', 'Sit\n', 'Idea\n'],
    'answer_index': 0
  },
  {
    'id': 365,
    'question': 'Go seeing a place or a person\n',
    'options': ['Teenager\n', 'Visit\n', 'Farmer\n', 'Television\n'],
    'answer_index': 1
  },
  {
    'id': 366,
    'question': 'Give some time\n',
    'options': ['Television\n', 'Wait\n', 'Mean\n', 'Husband\n'],
    'answer_index': 1
  },
  {
    'id': 367,
    'question': 'To request something from someone\n',
    'options': ['Want\n', 'Absurd\n', 'Capital\n', 'Tired\n'],
    'answer_index': 0
  },
  {
    'id': 368,
    'question': 'Armed action initiated by two opposing views\n',
    'options': ['Fun\n', 'Love\n', 'War\n', 'Lie\n'],
    'answer_index': 2
  },
  {
    'id': 369,
    'question': 'Called the period of seven days\n',
    'options': ['Picture\n', 'Week\n', 'Exclaim\n', 'Child\n'],
    'answer_index': 1
  },
  {
    'id': 370,
    'question': 'Is the time when the earth turns around a round of the sun\n',
    'options': ['Year\n', 'No\n', 'Picture\n', 'Bicycle\n'],
    'answer_index': 0
  },
  {
    'id': 371,
    'question': 'Garden\n',
    'options': ['Stress\n', 'Yard\n', 'Shoes\n', 'Competition\n'],
    'answer_index': 1
  },
  {
    'id': 372,
    'question': 'Is the word of approval gşven in response to questions\n',
    'options': ['Continue\n', 'Yes\n', 'Feel\n', 'Dentist\n'],
    'answer_index': 1
  },
  {
    'id': 373,
    'question': 'Group\n',
    'options': ['Food\n', 'Team\n', 'Bird\n', 'Copy\n'],
    'answer_index': 1
  },
  {
    'id': 374,
    'question': 'Word with a special meaning on a topic\n',
    'options': ['Climb\n', 'Free\n', 'Term\n', 'Telephone\n'],
    'answer_index': 2
  },
  {
    'id': 375,
    'question': 'Big road where small roads meet in the city\n',
    'options': ['Friend\n', 'Street\n', 'Approve\n', 'Farm\n'],
    'answer_index': 1
  },
  {
    'id': 376,
    'question': 'Great shops\n',
    'options': ['Fake\n', 'Physical\n', 'Store\n', 'Choke\n'],
    'answer_index': 2
  },
  {
    'id': 377,
    'question': 'Sound\n',
    'options': ['Product\n', 'Street\n', 'Ring\n', 'Follow\n'],
    'answer_index': 2
  },
  {
    'id': 378,
    'question': 'Piece of land with boundaries specified\n',
    'options': ['Region\n', 'Option\n', 'Man\n', 'Level\n'],
    'answer_index': 0
  },
  {
    'id': 379,
    'question': 'Growing a plant\n',
    'options': ['Miss\n', 'Light\n', 'Plant\n', 'Letter\n'],
    'answer_index': 2
  },
  {
    'id': 380,
    'question': 'Name given to the inhabitants of the North\n',
    'options': ['Begin\n', 'Northern\n', 'Vacation\n', 'Term\n'],
    'answer_index': 1
  },
  {
    'id': 381,
    'question': 'Pleasant sound\n',
    'options': ['Umbrella\n', 'Abolish\n', 'Melody\n', 'Location\n'],
    'answer_index': 2
  },
  {
    'id': 382,
    'question': 'Industrial\n',
    'options': ['Key\n', 'Industry\n', 'Bite\n', 'Picture\n'],
    'answer_index': 1
  },
  {
    'id': 383,
    'question': 'Sensing sounds with the senses tool\n',
    'options': ['Smell\n', 'Close\n', 'Hear\n', 'Observe\n'],
    'answer_index': 2
  },
  {
    'id': 384,
    'question': 'A game played on the field with two teams and a ball\n',
    'options': ['Football\n', 'Easy\n', 'Class\n', 'Fine\n'],
    'answer_index': 0
  },
  {
    'id': 385,
    'question': 'Squeezing a substance between the teeth\n',
    'options': ['Huge\n', 'Send\n', 'Bite\n', 'Quickly\n'],
    'answer_index': 2
  },
  {
    'id': 386,
    'question': 'To ignite\n',
    'options': ['Approve\n', 'Sister\n', 'Burn\n', 'Case\n'],
    'answer_index': 2
  },
  {
    'id': 387,
    'question': 'Shep and spill\n',
    'options': ['Easy\n', 'Page\n', 'Cast\n', 'Common\n'],
    'answer_index': 2
  },
  {
    'id': 388,
    'question': 'Stay stuffy for any reason\n',
    'options': ['Heat\n', 'Experiment\n', 'Choke\n', 'Approve\n'],
    'answer_index': 2
  },
  {
    'id': 389,
    'question': 'Do evil\n',
    'options': ['Damage\n', 'Information\n', 'Family\n', 'Profit\n'],
    'answer_index': 0
  },
  {
    'id': 390,
    'question': 'What needs to be done without losing time\n',
    'options': ['Birthday\n', 'Emergency\n', 'Task\n', 'Year\n'],
    'answer_index': 1
  },
  {
    'id': 391,
    'question':
        'Disorder that occurs in the structure and functioning of the organism\n',
    'options': ['Illness\n', 'Week\n', 'Verb\n', 'Case\n'],
    'answer_index': 0
  },
  {
    'id': 392,
    'question': 'Strong fear about a subject\n',
    'options': ['Fear\n', 'Speed\n', 'Panic\n', 'Stress\n'],
    'answer_index': 2
  },
  {
    'id': 393,
    'question': 'Experiencing an astonishing event\n',
    'options': ['Education\n', 'Shock\n', 'Try\n', 'Fable\n'],
    'answer_index': 1
  },
  {
    'id': 394,
    'question': 'Paralysis\n',
    'options': ['Mother\n', 'Stroke\n', 'Promise\n', 'Skill\n'],
    'answer_index': 1
  },
  {
    'id': 395,
    'question': 'Wounding with a weapon or similar tool\n',
    'options': ['Married\n', 'Yes\n', 'Wound\n', 'School\n'],
    'answer_index': 2
  },
  {
    'id': 396,
    'question': 'Acknowledge\n',
    'options': ['Growth\n', 'Shoes\n', 'Accept\n', 'Wound\n'],
    'answer_index': 2
  },
  {
    'id': 397,
    'question': 'Where someone will be found when called\n',
    'options': ['Country\n', 'Employee\n', 'Address\n', 'Agenda\n'],
    'answer_index': 2
  },
  {
    'id': 398,
    'question': 'Positive aspects of a situation or event\n',
    'options': ['Advantage\n', 'Egg\n', 'Factors\n', 'Vacation\n'],
    'answer_index': 0
  },
  {
    'id': 399,
    'question': 'Counsel, warning\n',
    'options': ['Flower\n', 'Begin\n', 'Advice\n', 'Rent\n'],
    'answer_index': 2
  },
  {
    'id': 400,
    'question': 'Highlight of the day\n',
    'options': ['Lady\n', 'Language\n', 'Agenda\n', 'New\n'],
    'answer_index': 2
  },
  {
    'id': 401,
    'question': 'Validating a situation in something as it is\n',
    'options': ['Crowd\n', 'Again\n', 'Apply\n', 'Salary\n'],
    'answer_index': 2
  },
  {
    'id': 402,
    'question': 'Accepting a job as appropriate\n',
    'options': ['Cloth\n', 'Part\n', 'Approve\n', 'Open\n'],
    'answer_index': 2
  },
  {
    'id': 403,
    'question': 'The day the person was born\n',
    'options': ['Birthday\n', 'During\n', 'President\n', 'Listen\n'],
    'answer_index': 0
  },
  {
    'id': 404,
    'question': 'To make the account\n',
    'options': ['Calculate\n', 'Dead\n', 'Adjective\n', 'Grass\n'],
    'answer_index': 0
  },
  {
    'id': 405,
    'question': 'Name given to some school\n',
    'options': ['Apply\n', 'College\n', 'Kill\n', 'Write\n'],
    'answer_index': 1
  },
  {
    'id': 406,
    'question': 'Race between people doing the same job\n',
    'options': ['Competition\n', 'Book\n', 'Course\n', 'No\n'],
    'answer_index': 0
  },
  {
    'id': 407,
    'question': 'Number indicating the day of an event\n',
    'options': ['Floor\n', 'Date\n', 'Date\n', 'Edge\n'],
    'answer_index': 2
  },
  {
    'id': 408,
    'question': 'Reduce\n',
    'options': ['Decrease\n', 'High\n', 'Man\n', 'Man\n'],
    'answer_index': 0
  },
  {
    'id': 409,
    'question': 'Imagery and portrayal\n',
    'options': ['Description\n', 'Bird\n', 'Left\n', 'Never\n'],
    'answer_index': 0
  },
  {
    'id': 410,
    'question': 'Expresses the negative sides of a situation\n',
    'options': ['Disadvantage\n', 'Heavy\n', 'Know\n', 'Old\n'],
    'answer_index': 0
  },
  {
    'id': 411,
    'question': 'Sale on the price of a good\n',
    'options': ['Discount\n', 'Blood\n', 'Mouth\n', 'Wonderful\n'],
    'answer_index': 0
  },
  {
    'id': 412,
    'question': 'Training in schools or elsewhere\n',
    'options': ['Student\n', 'Prepare\n', 'Education\n', 'Plan\n'],
    'answer_index': 2
  },
  {
    'id': 413,
    'question': 'People working and producing in certain institutions\n',
    'options': ['Language\n', 'Can\n', 'Employee\n', 'Verb\n'],
    'answer_index': 2
  },
  {
    'id': 414,
    'question': 'Tools needed for a business or organization\n',
    'options': ['Dry\n', 'Responsibility\n', 'Equipment\n', 'Relation\n'],
    'answer_index': 2
  },
  {
    'id': 415,
    'question': 'To gain skills about a job\n',
    'options': ['Floor\n', 'Experience\n', 'True\n', 'Island\n'],
    'answer_index': 1
  },
  {
    'id': 416,
    'question': 'Back indication, provide feedback\n',
    'options': ['Before\n', 'Feedback\n', 'Lost\n', 'Middle\n'],
    'answer_index': 1
  },
  {
    'id': 417,
    'question': 'Seperation of reproductive individuals as male and female\n',
    'options': ['Love\n', 'Fun\n', 'Gender\n', 'Flower\n'],
    'answer_index': 2
  },
  {
    'id': 418,
    'question': 'The desired result in something\n',
    'options': ['Goal\n', 'Church\n', 'Promise\n', 'Poem\n'],
    'answer_index': 0
  },
  {
    'id': 419,
    'question': 'Human develop in the period from birth to death\n',
    'options': ['Artist\n', 'Growth\n', 'Assistant\n', 'Control\n'],
    'answer_index': 1
  },
  {
    'id': 420,
    'question': 'Weighning more than normal in the scale\n',
    'options': ['Height\n', 'Approve\n', 'Page\n', 'Dictionary\n'],
    'answer_index': 0
  },
  {
    'id': 421,
    'question': 'A man married a woman\n',
    'options': ['Teenager\n', 'Help\n', 'Husband\n', 'Current\n'],
    'answer_index': 2
  },
  {
    'id': 422,
    'question': 'Things learned or taught about a topic\n',
    'options': ['Beautiful\n', 'Knowledge\n', 'Action\n', 'Refund\n'],
    'answer_index': 1
  },
  {
    'id': 423,
    'question':
        'The last limit that something can reach in terms of quantity\n',
    'options': ['Limit\n', 'Object\n', 'Answer\n', 'Rich\n'],
    'answer_index': 0
  },
  {
    'id': 424,
    'question': 'The administer\n',
    'options': ['Manage\n', 'Behind\n', 'Necessary\n', 'Shoes\n'],
    'answer_index': 0
  },
  {
    'id': 425,
    'question': 'The marriage of a woman and a man with a ceremony\n',
    'options': ['Carefully\n', 'Because\n', 'Married\n', 'Eat\n'],
    'answer_index': 2
  },
  {
    'id': 426,
    'question': 'Information to be conveyed\n',
    'options': ['Help\n', 'Message\n', 'Force\n', 'Feel\n'],
    'answer_index': 1
  },
  {
    'id': 427,
    'question': 'Wrong or unintentional \n',
    'options': ['Mistake\n', 'Information\n', 'Swim\n', 'Football\n'],
    'answer_index': 0
  },
  {
    'id': 428,
    'question': 'To get the most attractive to us among one or more things\n',
    'options': ['Farmer\n', 'Option\n', 'Quickly\n', 'Fine\n'],
    'answer_index': 1
  },
  {
    'id': 429,
    'question': 'Generally related to nature, organism\n',
    'options': ['Physical\n', 'Find\n', 'Home\n', 'Certain\n'],
    'answer_index': 0
  },
  {
    'id': 430,
    'question': 'Money earned by shopping affairs\n',
    'options': ['Check\n', 'Profit\n', 'Below\n', 'Decrease\n'],
    'answer_index': 1
  },
  {
    'id': 431,
    'question': 'Say it will do it for sure\n',
    'options': ['Chance\n', 'Promise\n', 'Feel\n', 'Stress\n'],
    'answer_index': 1
  },
  {
    'id': 432,
    'question': 'To give back the return of a received property\n',
    'options': ['Melody\n', 'Refund\n', 'Capital\n', 'Control\n'],
    'answer_index': 1
  },
  {
    'id': 433,
    'question': 'Fix something that is corrupt and outdated and make it work\n',
    'options': ['Repair\n', 'Calculate\n', 'Come\n', 'Because\n'],
    'answer_index': 0
  },
  {
    'id': 434,
    'question':
        'Article containing thoughts and determinations about a subject\n',
    'options': ['Dictionary\n', 'Report\n', 'Crowd\n', 'Extra\n'],
    'answer_index': 1
  },
  {
    'id': 435,
    'question': 'The task that someone takes on, has to do\n',
    'options': ['Responsibility\n', 'Shoes\n', 'Tired\n', 'Cloth\n'],
    'answer_index': 0
  },
  {
    'id': 436,
    'question':
        'To continue to the end despite the possible bad consequences of a job\n',
    'options': ['Village\n', 'Risk\n', 'Board\n', 'Try\n'],
    'answer_index': 1
  },
  {
    'id': 437,
    'question': 'Fee for a job done\n',
    'options': ['Salary\n', 'Wife\n', 'Decrease\n', 'Before\n'],
    'answer_index': 0
  },
  {
    'id': 438,
    'question': 'Who are not married yet\n',
    'options': ['Need\n', 'Single\n', 'Money\n', 'King\n'],
    'answer_index': 1
  },
  {
    'id': 439,
    'question': 'To ability\n',
    'options': ['Like\n', 'Compare\n', 'Skill\n', 'Draw\n'],
    'answer_index': 2
  },
  {
    'id': 440,
    'question': 'Means a job overcome\n',
    'options': ['Teacher\n', 'Success\n', 'Food\n', 'Lake\n'],
    'answer_index': 1
  },
  {
    'id': 441,
    'question': 'To recommend an opinion, wishing to be accepted\n',
    'options': ['Report\n', 'Verb\n', 'Suggest\n', 'By\n'],
    'answer_index': 2
  },
  {
    'id': 442,
    'question': 'Goal\n',
    'options': ['Target\n', 'Describe\n', 'Edge\n', 'Toy\n'],
    'answer_index': 0
  },
  {
    'id': 443,
    'question': 'It means that transfer\n',
    'options': ['Relation\n', 'Location\n', 'Transport\n', 'Trust\n'],
    'answer_index': 2
  },
  {
    'id': 444,
    'question': 'It is called a woman that a man marries\n',
    'options': ['Wife\n', 'Join\n', 'Quiet\n', 'Dress\n'],
    'answer_index': 0
  },
  {
    'id': 445,
    'question': 'Cancel, repeal or abrogate\n',
    'options': ['Abolish\n', 'Action\n', 'Sleep\n', 'Task\n'],
    'answer_index': 0
  },
  {
    'id': 446,
    'question': 'It is called nonsense\n',
    'options': ['Absurd\n', 'Single\n', 'Forest\n', 'Wonderful\n'],
    'answer_index': 0
  },
  {
    'id': 447,
    'question': 'Bad event causing loss of life or property\n',
    'options': ['Accident\n', 'Cloud\n', 'Street\n', 'Never\n'],
    'answer_index': 0
  },
  {
    'id': 448,
    'question': 'Bad situation felt after a coup\n',
    'options': ['Target\n', 'Ache\n', 'Ice\n', 'Dress\n'],
    'answer_index': 1
  },
  {
    'id': 449,
    'question': 'Two wheeled vehicle powered by the rear Wheel\n',
    'options': ['Action\n', 'Ice\n', 'Bicycle\n', 'Factors\n'],
    'answer_index': 2
  },
  {
    'id': 450,
    'question':
        'It is a state of seeing itself because of a prominent feature\n',
    'options': ['Teenager\n', 'Repeat\n', 'Boast\n', 'Adjective\n'],
    'answer_index': 2
  },
  {
    'id': 451,
    'question': 'To transfer a job later\n',
    'options': ['Silent\n', 'Lie\n', 'Delay\n', 'Fly\n'],
    'answer_index': 2
  },
  {
    'id': 452,
    'question': 'Good taste of a food\n',
    'options': ['Rich\n', 'Bite\n', 'Delicious\n', 'Student\n'],
    'answer_index': 2
  },
  {
    'id': 453,
    'question': 'The doctor we go to fort he health of our teeth\n',
    'options': ['Dentist\n', 'Visit\n', 'First\n', 'Arm\n'],
    'answer_index': 0
  },
  {
    'id': 454,
    'question': 'Not feeling well due to a bad event\n',
    'options': ['Compare\n', 'Choose\n', 'Depress\n', 'Snore\n'],
    'answer_index': 2
  },
  {
    'id': 455,
    'question': 'Anxiety about a troubled situation\n',
    'options': ['Common\n', 'Stress\n', 'Birthday\n', 'Key\n'],
    'answer_index': 1
  },
  {
    'id': 456,
    'question':
        'Shouting loud in the face of a terrible or surprising situation\n',
    'options': ['Night\n', 'Exclaim\n', 'Travel\n', 'Difference\n'],
    'answer_index': 1
  },
  {
    'id': 457,
    'question': 'Show, introduce\n',
    'options': ['Exhibition\n', 'Single\n', 'Brother\n', 'Loud\n'],
    'answer_index': 0
  },
  {
    'id': 458,
    'question': 'Trying to learn the unknown or hidden aspects of something\n',
    'options': ['Wait\n', 'Bird\n', 'Explore\n', 'Capital\n'],
    'answer_index': 2
  },
  {
    'id': 459,
    'question': 'Addition\n',
    'options': ['Speed\n', 'Egg\n', 'Extra\n', 'Food\n'],
    'answer_index': 2
  },
  {
    'id': 460,
    'question': 'Fairy tale\n',
    'options': ['Book\n', 'Limit\n', 'Fable\n', 'Follow\n'],
    'answer_index': 2
  },
  {
    'id': 461,
    'question':
        'Something that is made by analogy with the original of something, is not real\n',
    'options': ['Fake\n', 'Yard\n', 'Wound\n', 'Risk\n'],
    'answer_index': 0
  },
  {
    'id': 462,
    'question': 'The link between multiple things\n',
    'options': ['Check\n', 'Relation\n', 'Drive\n', 'Egg\n'],
    'answer_index': 1
  },
  {
    'id': 463,
    'question': 'Feeling relieved\n',
    'options': ['Relax\n', 'Equal\n', 'Heat\n', 'Smile\n'],
    'answer_index': 0
  },
  {
    'id': 464,
    'question': 'Giving one property to someone else for a certain price\n',
    'options': ['Kind\n', 'Rent\n', 'Doctor\n', 'Food\n'],
    'answer_index': 1
  },
  {
    'id': 465,
    'question': 'Want something politely\n',
    'options': ['Role\n', 'Consonant\n', 'Request\n', 'Force\n'],
    'answer_index': 2
  },
  {
    'id': 466,
    'question': 'The task that falls on a person at work\n',
    'options': ['Bed\n', 'Role\n', 'Mark\n', 'Poem\n'],
    'answer_index': 1
  },
  {
    'id': 467,
    'question': 'Couldn’t get sleep stil\n',
    'options': ['Product\n', 'Responsibility\n', 'Sleepy\n', 'Dark\n'],
    'answer_index': 2
  },
  {
    'id': 468,
    'question': 'Smell perceived by the nose, one of our five sense organs\n',
    'options': ['Farm\n', 'Smell\n', 'Below\n', 'College\n'],
    'answer_index': 1
  },
  {
    'id': 469,
    'question': 'Making strange noises while breathing during sleep\n',
    'options': ['Stress\n', 'Snore\n', 'With\n', 'Teenager\n'],
    'answer_index': 1
  },
  {
    'id': 470,
    'question': 'Communal, societal\n',
    'options': ['Board\n', 'Social\n', 'Famous\n', 'Happy\n'],
    'answer_index': 1
  },
  {
    'id': 471,
    'question': 'Not solid and hard things\n',
    'options': ['Soft\n', 'Prepare\n', 'History\n', 'Store\n'],
    'answer_index': 0
  },
  {
    'id': 472,
    'question': 'The action expected of a person himself\n',
    'options': ['Delay\n', 'Task\n', 'Extra\n', 'Family\n'],
    'answer_index': 1
  },
  {
    'id': 473,
    'question':
        'To perceive the taste of what we eat with mouth, one of five sense organs\n',
    'options': ['Taste\n', 'Less\n', 'Agenda\n', 'Television\n'],
    'answer_index': 0
  },
  {
    'id': 474,
    'question': 'The person who teaches student to school\n',
    'options': ['Teacher\n', 'Student\n', 'Move\n', 'Board\n'],
    'answer_index': 0
  },
  {
    'id': 475,
    'question': 'Not yet married, young\n',
    'options': ['Clean\n', 'Move\n', 'Teenager\n', 'Country\n'],
    'answer_index': 2
  },
  {
    'id': 476,
    'question': 'A communication tool\n',
    'options': ['Center\n', 'Write\n', 'Telephone\n', 'Chief\n'],
    'answer_index': 2
  },
  {
    'id': 477,
    'question': 'Device where sounds and images are detected\n',
    'options': ['Friend\n', 'Television\n', 'Burn\n', 'Equal\n'],
    'answer_index': 1
  },
  {
    'id': 478,
    'question': 'The tendency to love, to do or to want something\n',
    'options': ['Damage\n', 'Love\n', 'Tend\n', 'Meet\n'],
    'answer_index': 2
  },
  {
    'id': 479,
    'question': 'Slender, fine\n',
    'options': ['Fable\n', 'Thin\n', 'Develop\n', 'Page\n'],
    'answer_index': 1
  },
  {
    'id': 480,
    'question': 'Building mental abilities\n',
    'options': ['Cost\n', 'Think\n', 'Hope\n', 'Each\n'],
    'answer_index': 1
  },
  {
    'id': 481,
    'question': 'Being sluggish due to a certain or activity\n',
    'options': ['Class\n', 'Tired\n', 'Moment\n', 'Correct\n'],
    'answer_index': 1
  },
  {
    'id': 482,
    'question': 'Tools for children to play\n',
    'options': ['Toy\n', 'Region\n', 'Class\n', 'Matter\n'],
    'answer_index': 0
  },
  {
    'id': 483,
    'question': 'All pedestrians and vehicles on the roads\n',
    'options': ['Fear\n', 'Traffic\n', 'Burn\n', 'Idea\n'],
    'answer_index': 1
  },
  {
    'id': 484,
    'question': 'There are several ways to cure a disease\n',
    'options': ['Region\n', 'Find\n', 'Treatment\n', 'Cook\n'],
    'answer_index': 2
  },
  {
    'id': 485,
    'question': 'Do not doubt someone\n',
    'options': ['Finally\n', 'Trust\n', 'Request\n', 'Panic\n'],
    'answer_index': 1
  },
  {
    'id': 486,
    'question': 'Not beautiful\n',
    'options': ['Love\n', 'During\n', 'Ugly\n', 'Certain\n'],
    'answer_index': 2
  },
  {
    'id': 487,
    'question': 'Tool used to protect from rain and sun\n',
    'options': ['Traffic\n', 'Umbrella\n', 'Board\n', 'Laugh\n'],
    'answer_index': 1
  },
  {
    'id': 488,
    'question': 'Inability to find a job tol ive on\n',
    'options': ['Unemployment\n', 'Industry\n', 'Control\n', 'Sometimes\n'],
    'answer_index': 0
  },
  {
    'id': 489,
    'question': 'Not in good health\n',
    'options': ['Soft\n', 'Unhealthy\n', 'Repair\n', 'Stroke\n'],
    'answer_index': 1
  },
  {
    'id': 490,
    'question': 'Short break to work or school\n',
    'options': ['Explain\n', 'Love\n', 'Vacation\n', 'Bird\n'],
    'answer_index': 2
  },
  {
    'id': 491,
    'question': 'The name given to round trips between countries or cities\n',
    'options': ['Voyage\n', 'Arm\n', 'Rent\n', 'Draw\n'],
    'answer_index': 0
  },
  {
    'id': 492,
    'question': 'In some business serving customers\n',
    'options': ['Waiter\n', 'Common\n', 'Draw\n', 'Measure\n'],
    'answer_index': 0
  },
  {
    'id': 493,
    'question':
        'The partition that seperates the interior parts of the buildings\n',
    'options': ['Page\n', 'Center\n', 'Wall\n', 'Fine\n'],
    'answer_index': 2
  },
  {
    'id': 494,
    'question':
        'An accessory in which things like Money and identity are placed\n',
    'options': ['Need\n', 'Wait\n', 'Wallet\n', 'Verb\n'],
    'answer_index': 2
  },
  {
    'id': 495,
    'question': 'Ensuring a positive and good result\n',
    'options': ['Win\n', 'Form\n', 'Complete\n', 'Lake\n'],
    'answer_index': 0
  },
  {
    'id': 496,
    'question': 'Who is out of childhood\n',
    'options': ['Young\n', 'Wall\n', 'Create\n', 'Waiter\n'],
    'answer_index': 0
  },
  {
    'id': 497,
    'question': 'The day before today\n',
    'options': ['Sentence\n', 'Yesterday\n', 'Equal\n', 'Gold\n'],
    'answer_index': 1
  },
  {
    'id': 498,
    'question': 'Putting thoughts on paper with letters',
    'options': ['Meet\n', 'Artist\n', 'Write\n', 'Vacation\n'],
    'answer_index': 2
  },{
    'id': 499,
    'question': 'Using when talking about a topic or something\n',
    'options': ['Deal\n', 'First\n', 'About\n', 'Yard\n'],
    'answer_index': 2
  }
];
