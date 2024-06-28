// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  _FaqPageState createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAQ"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                ListTile(
                  title: Text("Frequently Asked Questions:"),
                  tileColor: Colors.blue, // You can customize the style
                  titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                ListTile(
                  title: Text("1. What is criminal law?"),
                  subtitle: Text(
                      "Criminal law is a branch of law that defines and regulates conduct that is considered harmful to society. It encompasses offenses such as theft, assault, murder, and drug trafficking."),
                ),
                ListTile(
            title: Text("Criminal Law :"),
          ),
          ListTile(
            title: Text("1. What is criminal law?"),
            subtitle: Text("Criminal law is a branch of law that defines and regulates conduct that is considered harmful to society. It encompasses offenses such as theft, assault, murder, and drug trafficking."),
          ),
          ListTile(
            title: Text("2. What is the difference between civil and criminal law?"),
            subtitle: Text("Civil law deals with disputes between individuals or entities and seeks remedies or compensation for harm. Criminal law, on the other hand, involves prosecution by the government for offenses that are considered crimes."),
          ),
          ListTile(
            title: Text("3. What is the burden of proof in a criminal case?"),
            subtitle: Text("In a criminal case, the burden of proof rests with the prosecution, which must prove the defendant's guilt 'beyond a reasonable doubt.'"),
          ),
          ListTile(
            title: Text("4. What are the stages of a criminal trial?"),
            subtitle: Text("A criminal trial typically involves several stages, including arrest, bail or remand, arraignment, pre-trial proceedings, the trial itself, and, if convicted, sentencing and appeals."),
          ),
          ListTile(
            title: Text("5. What are the rights of the accused in a criminal case?"),
            subtitle: Text("The accused in a criminal case has various rights, including the right to remain silent, the right to legal representation, and the right to a fair trial."),
          ),
          ListTile(
            title: Text("Civil Law :"),
          ),
          ListTile(
            title: Text("1. What is civil law?"),
            subtitle: Text("Civil law is a branch of law that deals with disputes between individuals or entities and seeks remedies or compensation for harm, as opposed to criminal law which addresses offenses against the state."),
          ),
          ListTile(
            title: Text("2. What are the types of cases handled in civil law?"),
            subtitle: Text("Civil law encompasses cases such as property disputes, contract breaches, family law matters (e.g., divorce, child custody), personal injury claims, and debt recovery."),
          ),
          ListTile(
            title: Text("3. What is the burden of proof in civil cases?"),
            subtitle: Text("In civil cases, the burden of proof typically rests with the plaintiff, who must establish their case on a 'preponderance of the evidence' standard, meaning it is more likely than not that their claims are true."),
          ),
          ListTile(
            title: Text("4. What is the difference between a plaintiff and a defendant in a civil case?"),
            subtitle: Text("The plaintiff is the party bringing the legal action, seeking a remedy or compensation, while the defendant is the party against whom the action is brought."),
          ),
          ListTile(
            title: Text("5. What is the role of a civil attorney?"),
            subtitle: Text("A civil attorney represents individuals or entities involved in civil disputes. They provide legal counsel, prepare and file legal documents, and represent their clients in court."),
          ),
          ListTile(
            title: Text("Matrimonial Law :"),
          ),
          ListTile(
            title: Text("1. What is matrimonial law?"),
            subtitle: Text("Matrimonial law, also known as family law, is a legal discipline that deals with issues related to marriage, divorce, child custody, and other familial matters."),
          ),
          ListTile(
            title: Text("2. What are the grounds for divorce in matrimonial law?"),
            subtitle: Text("Grounds for divorce may include cruelty, adultery, desertion, mental illness, and irreconcilable differences, depending on the jurisdiction."),
          ),
          ListTile(
            title: Text("3. What is the process for filing for divorce?"),
            subtitle: Text("The process generally involves filing a divorce petition, serving notice to the other spouse, negotiating terms or attending mediation, and appearing in court for divorce proceedings."),
          ),
          ListTile(
            title: Text("4. What is the difference between a contested and uncontested divorce?"),
            subtitle: Text("A contested divorce occurs when spouses cannot agree on key issues, while an uncontested divorce occurs when both parties agree on terms like property division and child custody."),
          ),
          ListTile(
            title: Text("5. What is alimony (spousal support), and how is it determined in divorce cases?"),
            subtitle: Text("Alimony is financial support provided by one spouse to the other after divorce. Its amount and duration are typically determined based on factors like the length of the marriage and the financial needs of both parties."),
          ),
          ListTile(
            title: Text("Property Law :"),
          ),
          ListTile(
            title: Text("1. What is property law?"),
            subtitle: Text("Property law is a legal field that governs the rights and interests of individuals and entities in real property, including land, buildings, and real estate."),
          ),
          ListTile(
            title: Text("2. What is real property and personal property?"),
            subtitle: Text("Real property refers to immovable assets, such as land and buildings, while personal property includes movable assets like cars, furniture, and personal belongings."),
          ),
          ListTile(
            title: Text("3. What are the key principles of property law?"),
            subtitle: Text("Key principles include the right to possess, use, transfer, and exclude others from one's property, as well as protection against trespass and property damage."),
          ),
          ListTile(
            title: Text("4. What is the difference between a deed and a title in property law?"),
            subtitle: Text("A deed is a legal document used to transfer ownership of real property, while a title is the legal evidence of ownership."),
          ),
          ListTile(
            title: Text("5. What is adverse possession, and how does it apply in property law?"),
            subtitle: Text("Adverse possession is a legal principle that allows a person to claim ownership of another's property if they openly and continuously use it for a specified period."),
          )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
