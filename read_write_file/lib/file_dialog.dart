import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class FileDialog extends StatelessWidget {
  final List<FileSystemEntity> files;

  FileDialog({this.files});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Choose your file'),
      ),
      child: ListView(
        children: files.map(
          (file) {
            return Material(
              child: ListTile(
                title: Text(split(file.path).last),
                onTap: () {
                  Navigator.pop(context, file);
                },
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}