// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddProductPage extends StatelessWidget {
  AddProductPage({super.key});

  final _titleController = TextEditingController();
  final _desctriptionController = TextEditingController();
  final _dateTimeController = TextEditingController();
  final _userNameController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddProductPage'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        children: [
          CustomTextField(controller: _titleController, hintext: 'title'),
          CustomTextField(
              controller: _desctriptionController, hintext: 'desctription'),
          CustomTextField(
            controller: _dateTimeController,
            hintext: 'dateTime',
            onTap: () {
              showCupertinoModalPopup<DateTime>(
                context: context,
                builder: (BuildContext builder) {
                  return Container(
                    height:
                        MediaQuery.of(context).copyWith().size.height * 0.25,
                    color: Colors.white,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      onDateTimeChanged: (value) {
                        _dateTimeController.text = value.toString();
                      },
                      initialDateTime: DateTime.now(),
                      minimumYear: 2000,
                      maximumYear: 3000,
                    ),
                  );
                },
              );
            },
          ),
          CustomTextField(controller: _userNameController, hintext: 'userName'),
          CustomTextField(controller: _addressController, hintext: 'address'),
          CustomTextField(
              controller: _phoneNumberController, hintext: 'phoneNumber'),
          CustomTextField(controller: _priceController, hintext: 'price'),
          ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.publish),
              label: Text('Add to firestore'))
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.hintext,
    this.controller,
    this.maxLines,
    this.onTap,
  }) : super(key: key);
  final String? hintext;
  final TextEditingController? controller;
  final int? maxLines;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintext,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
