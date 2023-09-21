import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  List<File?> sourceimage = [];
  ImagePicker picture = ImagePicker();
  TextEditingController captioncontroller = TextEditingController();

  Future pickimagefromgallary() async {
    List<XFile?> image = await picture.pickMultiImage();
    for (var element in image) {
      setState(() {
        if (image.isNotEmpty) {
          sourceimage.add(File(element!.path));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Post',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 30,),
            SizedBox(
              height: 160,
              child: sourceimage.isEmpty
                  ? Center(
                      child: Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(16)),
                            border: Border.all(width: 4, color: Colors.blue)),
                        child: IconButton(
                          onPressed: () {
                            pickimagefromgallary();
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 80,
                          ),
                        ),
                      ),
                    )
                  : ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: sourceimage.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 140,
                                width: 140,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: FileImage(
                                        sourceimage[index]!,
                                      ),
                                      fit: BoxFit.fill),
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(16)),
                                ),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        sourceimage.removeAt(index);
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.cancel,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              sourceimage.length - 1 == index
                                  ? Padding(
                                      padding:
                                          const EdgeInsets.only(left: 16.0),
                                      child: Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(16)),
                                            border: Border.all(
                                                width: 4, color: Colors.blue)),
                                        child: IconButton(
                                          onPressed: () {
                                            pickimagefromgallary();
                                          },
                                          icon: const Icon(
                                            Icons.add,
                                            color: Colors.blue,
                                            size: 80,
                                          ),
                                        ),
                                      ),
                                    )
                                  : const SizedBox.shrink()
                            ],
                          ),
                        );
                      }),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 2,
              thickness: 1,
              color: Colors.black87,
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(child: Text('What\'s on your mind?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: captioncontroller,
                minLines: 5,
                maxLines: 5,
                onChanged: (v) {
                  setState(() {});
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF979797),
                  ),
                  filled: true,
                  fillColor: Color(0x0D000000),
                  hintText: 'Enter your Cation Here....',
                  hintStyle: TextStyle(
                      color: Color(0x33000000),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SF Pro Text"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      color: Color(0x1A000000),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      color: Color(0x1A000000),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 2,
              thickness: 1,
              color: Colors.black87,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    color: sourceimage.isNotEmpty &&
                            captioncontroller.text.isNotEmpty
                        ? Colors.blue
                        : Colors.grey),
                height: 60,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Add Post',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
