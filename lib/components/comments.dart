import 'package:flutter/material.dart';
import 'package:mundo_pictures/components/data/comment_data.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  CommentList allCommentList = CommentList();

  void HandleAddComment() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${allCommentList.length} Comments',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        letterSpacing: 2),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "./img/Genesis_img.jpg",
                        width: 60,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: TextField(
                          style: TextStyle(color: Color(0xff4d2773)),
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 152, 0, 1))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 152, 0, 1))),
                            hintText: "Comment...",
                            hintStyle: TextStyle(color: Color(0xff4d2773)),
                            label: Text(
                              "CHOP IT UP",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 152, 0, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  shadows: [
                                    Shadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 0,
                                        color: Color(0xff4d2773))
                                  ]),
                            ),
                            fillColor: Color(0xffb0c0ba),
                            filled: true,
                          )),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: HandleAddComment,
                    style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                        padding: WidgetStateProperty.all<EdgeInsets>(
                          EdgeInsets.fromLTRB(20, 10, 20, 10),
                        ),
                        backgroundColor:
                            WidgetStateProperty.all(Color(0xffff9800))),
                    child: Text(
                      "Comment",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff4d2773)),
                    ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Divider(
              color: Color.fromRGBO(255, 152, 0, 1),
              thickness: 2,
            ),
          ),
          for (int i = 0; i < allCommentList.length; i++)
            Column(
              children: [
                Container(
                  color: Color.fromRGBO(224, 149, 233, 1),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          allCommentList.getList()[i].name,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Text(allCommentList.getList()[i].getDateSubmitter(),
                            style: TextStyle(color: Colors.black, fontSize: 14))
                      ],
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        allCommentList.getList()[i].text,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    )
                  ]),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Divider(
                    color: Color.fromRGBO(255, 152, 0, 1),
                    thickness: 2,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
