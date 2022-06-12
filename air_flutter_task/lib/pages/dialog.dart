import 'dart:ui';
import 'package:flutter/material.dart';

class ShowDialog extends StatefulWidget {
  const ShowDialog({Key? key}) : super(key: key);

  @override
  State<ShowDialog> createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 35,
                height: MediaQuery.of(context).size.height - 310,
                decoration: BoxDecoration(
                  color: Colors.grey.shade700.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Center(
                  child: SimpleDialog(
                    insetPadding: const EdgeInsets.all(0.0),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    elevation: 0.0,
                    backgroundColor: Colors.black.withOpacity(0.3),
                    children: <Widget>[
                      const SizedBox(height: 10.0),
                      SimpleDialogOption(
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            const CircleAvatar(
                              backgroundImage: AssetImage('assets/Default.jpg'),
                              radius: 30.0,
                              backgroundColor: Colors.white,
                            ),
                            const SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Lucy Andrison',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  'lucyandrison782@gmail.com             ',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 20.0,
                        color: Colors.black,
                        thickness: 2.0,
                        indent: 40.0,
                        endIndent: 15.0,
                      ),
                      SimpleDialogOption(
                        onPressed: () {},
                        child: Row(
                          children: const <Widget>[
                            Icon(Icons.emoji_emotions_outlined,
                                color: Colors.white, size: 36.0),
                            SizedBox(width: 15.0),
                            Text(
                              'Status',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      SimpleDialogOption(
                        onPressed: () {},
                        child: Row(
                          children: const <Widget>[
                            Icon(Icons.notifications_off_outlined,
                                color: Colors.white, size: 36.0),
                            SizedBox(width: 15.0),
                            Text(
                              'Snooze notifications',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        height: 12.0,
                        color: Colors.black,
                        thickness: 1.0,
                        indent: 50.0,
                        endIndent: 30.0,
                      ),
                      SimpleDialogOption(
                        onPressed: () {},
                        child: Row(
                          children: const <Widget>[
                            Icon(Icons.mark_email_unread_outlined,
                                color: Colors.white, size: 36.0),
                            SizedBox(width: 15.0),
                            Text(
                              'Invitation',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      SimpleDialogOption(
                        onPressed: () {},
                        child: Row(
                          children: const <Widget>[
                            Icon(Icons.archive_outlined,
                                color: Colors.white, size: 36.0),
                            SizedBox(width: 15.0),
                            Text(
                              'Archived',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        height: 3.0,
                        color: Colors.black,
                        thickness: 1.0,
                        indent: 50.0,
                        endIndent: 30.0,
                      ),
                      SimpleDialogOption(
                        onPressed: () {},
                        child: Row(
                          children: const <Widget>[
                            Icon(Icons.settings,
                                color: Colors.white, size: 36.0),
                            SizedBox(width: 15.0),
                            Text(
                              'Setting',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      SimpleDialogOption(
                        onPressed: () {},
                        child: Row(
                          children: const <Widget>[
                            Icon(Icons.question_mark,
                                color: Colors.white, size: 36.0),
                            SizedBox(width: 15.0),
                            Text(
                              'Help & feedback',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        height: 12.0,
                        color: Colors.black,
                        thickness: 2.0,
                      ),
                      SimpleDialogOption(
                        onPressed: () {},
                        child: Row(
                          children: const <Widget>[
                            Text(
                              'Privacy Policy     \u2022',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              ' Terms of service',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
