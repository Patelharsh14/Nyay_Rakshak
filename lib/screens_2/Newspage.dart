import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

late final List<LegalNews> legalNewsList = indiaLegalNews; // Initialize here

class LegalNewsPage extends StatefulWidget {
  const LegalNewsPage({Key? key}) : super(key: key);

  @override
  _LegalNewsPageState createState() => _LegalNewsPageState();
}

class _LegalNewsPageState extends State<LegalNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Legal News (India)'),
      ),
      body: ListView.builder(
        itemCount: legalNewsList.length,
        itemBuilder: (context, index) {
          final news = legalNewsList[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(
                news.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(news.description),
              ),
              onTap: () async {
                if (await canLaunch(news.url)) {
                  await launch(news.url);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Could not open the URL'),
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}

class LegalNews {
  final String title;
  final String description;
  final String url;

  LegalNews({
    required this.title,
    required this.description,
    required this.url,
  });
}

final List<LegalNews> indiaLegalNews = [
  LegalNews(
    title:
        'Probe agency ED conducts raids in multi-crore Chinese betting app scam',
    description:
        'The mastermind behind the operation, Woo Uyanbe, allegedly duped around 1,200 people, resulting in an estimated theft of Rs 1,400 crore within a span of just nine days.',
    url: 'https://www.indiatoday.in/india',
  ),
  LegalNews(
    title:
        'Manipur: Kuki tribals in Moreh allege torture, police cite raids on foreigners',
    description:
        'Members of the Kuki community from the border town of Moreh alleged that they were being terrorized by security forces. However, police said they were conducting raids to detect foreigners.',
    url: 'https://www.indiatoday.in/india',
  ),
  LegalNews(
    title: 'Probe agency NIA arrests 8th suspect in Pune ISIS module case',
    description:
        'The National Investigation Agency continues to conduct extensive investigations to put a stop to the terrorist outfit’s plans to spread terror and violence in India.',
    url: 'https://www.indiatoday.in/india',
  ),
  LegalNews(
    title: 'Gold worth over Rs 4 crore seized near India-Bangladesh border',
    description:
        'The officials discovered 60 gold biscuits, each with distinct foreign markings, wrapped in white transparent tape inside the cabin.',
    url: 'https://www.indiatoday.in/india',
  ),
  LegalNews(
    title:
        'CPI(M) members protest as Tamil Nadu Governor refuses to award freedom fighter',
    description:
        'Communist Party of India (Marxist) workers staged a protest against Tamil Nadu Governor RN Ravi for rejecting a proposal to confer an honorary doctorate to freedom fighter and Communist veteran N Sankaraiah in recognition of his services.',
    url: 'https://www.indiatoday.in/india',
  ),
  LegalNews(
    title:
        'No takers for decomposers in Punjab, Haryana even as stubble burning on the rise',
    description:
        'A survey of paddy farmers in the region revealed a widespread lack of awareness about the Pusa bio-decomposer and skepticism about its efficacy.',
    url: '',
  ),
  LegalNews(
    title:
        'Only double-engine government can bring development to Delhi: BJP MLA',
    description:
        'According to Ramvir Singh Bidhuri, the Kejriwal-led AAP government has failed to implement welfare schemes introduced by the Centre, thereby stalling Delhi',
    url: 'https://www.indiatoday.in/india',
  ),
  LegalNews(
    title:
        'Government to carry out Aadhaar authentication of prisoners, their visitors',
    description:
        'All prisoners and their visitors will now have to undergo Aadhaar authentication following the Centres move to secure custody of inmates.',
    url: 'https://www.indiatoday.in/india',
  ),
  LegalNews(
    title:
        'Jammu and Kashmir: Student uses pepper spray at self-defence event; 13 faint',
    description:
        'One of the students sprayed pepper spray during the self-defence event due to which 13 female students fell unconscious.',
    url: 'https://www.indiatoday.in/india',
  ),
  LegalNews(
    title:
        'Chor ki dadhi mein tinka: Sidhu on Kejriwal skipping probe agencys summons',
    description:
        'In an interview with India Today TV, Navjot Singh Sidhu spoke about the now-scrapped Delhi excise policy and alleged that “just a month of chori was Rs 400 crore”.',
    url: 'https://www.indiatoday.in/india',
  ),
  LegalNews(
    title:
        'Maratha quota activist ends indefinite fast after meeting with government delegation',
    description:
        'A delegation of retired high court judges Sandeep Shinde, M G Gaikwad and others met Maratha quota activist Manoj Jarange on Thursday. Following the meeting, Jarange agreed to end his indefinite fast.',
    url: 'https://www.indiatoday.in/india',
  ),
];

void main() {
  runApp(const MaterialApp(
    home: LegalNewsPage(),
  ));
}
