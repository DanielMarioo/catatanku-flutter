import 'package:flutter/material.dart'; // Import library flutter untuk UI

import '../models/note.dart'; // Import model Note

// Kelas EditScreen merupakan StatefulWidget yang digunakan untuk mengedit catatan
class EditScreen extends StatefulWidget {
  final Note? note; // Catatan yang akan diedit (opsional)
  const EditScreen({Key? key, this.note}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

// Kelas _EditScreenState merupakan state dari EditScreen
class _EditScreenState extends State<EditScreen> {
  TextEditingController _titleController = TextEditingController(); // Controller untuk judul catatan
  TextEditingController _contentController = TextEditingController(); // Controller untuk isi catatan

  @override
  void initState() {
    super.initState();
    // Mengisi nilai controller dengan nilai judul dan isi catatan jika catatan sudah ada
    if (widget.note != null) {
      _titleController = TextEditingController(text: widget.note!.title);
      _contentController = TextEditingController(text: widget.note!.content);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255), // Warna latar belakang
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(
          children: [
            // Bagian header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tombol kembali
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  padding: const EdgeInsets.all(0),
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            // Isi dari EditScreen
            Expanded(
              child: ListView(
                children: [
                  // Input judul catatan
                  TextField(
                    controller: _titleController,
                    style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 30),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Title',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
                  // Garis pembatas antara judul dan isi catatan
                  const Divider(thickness: 2, color: Colors.black),
                  // Input isi catatan
                  TextField(
                    controller: _contentController,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    maxLines: null,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type something here',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Tombol simpan
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Mengirimkan data yang diedit kembali ke halaman sebelumnya
          Navigator.pop(
            context,
            [_titleController.text, _contentController.text],
          );
        },
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        child: const Icon(Icons.save),
      ),
    );
  }
}
