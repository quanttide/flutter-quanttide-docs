import 'package:flutter/material.dart';
import 'package:simple_markdown_editor/simple_markdown_editor.dart';

// HomeScreen Editor
class MarkdownEditorScreen extends StatefulWidget {
  const MarkdownEditorScreen({Key? key}) : super(key: key);

  @override
  _MarkdownEditorScreenState createState() => _MarkdownEditorScreenState();
}

class _MarkdownEditorScreenState extends State<MarkdownEditorScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Markdown Editor"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SecondScreen(
                    data: _controller.text,
                  ),
                ),
              );
            },
            icon: const Icon(Icons.view_compact),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: MarkdownFormField(
                controller: _controller,
                enableToolBar: true,
                emojiConvert: true,
                autoCloseAfterSelectEmoji: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Markdown Parse"),
      ),
      body: MarkdownParse(
        data: data,
        onTapHastag: (String name, String match) {
          // example : #hashtag
          // name => hashtag
          // match => #hashtag
        },
        onTapMention: (String name, String match) {
          // example : @mention
          // name => mention
          // match => #mention
        },
      ),
    );
  }
}
