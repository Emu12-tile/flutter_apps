import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
      author: 'Oscs wilde',
      text: 'Be urself:everyone else is already taken',
    ),
    Quote(
      author: 'Oscs wilde',
      text: 'Be urself:everyone else is already taken',
    ),
    Quote(
      author: 'Oscs wilde',
      text: 'Be urself:everyone else is already taken',
    ),
  ];
  // Widget quoteTemplate(quote) {
  //   return QuoteCard(quote:quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote:quote,
            delete:() {
              setState((){
                quotes.remove(quote);
              });
            }
            
        )).toList(),
      ),
    );
  }
}

