import 'package:flutter/material.dart';
import 'package:imaginarium_app/utility.dart';
import 'package:url_launcher/url_launcher.dart';
import './SizeConfig.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/contact.jpg'),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    child: Center(
                        child: Column(children: <Widget>[
                  SizedBox(height: 100),
                  Container(
                      width: SizeConfig.blockSizeHorizontal * 100,
                      color: Colors.white,
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(children: <Widget>[
                            SizedBox(height: 50),
                            Text(
                              'Get In Touch',
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 3,
                            ),
                            Image.asset(
                              'assets/divider.jpg',
                              width: SizeConfig.blockSizeHorizontal * 50,
                            ),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical * 10,
                            ),
                            _contactInfo(),
                          ])))
                ]))))));
  }
TextEditingController _emailController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();

  _sendEmail() async {
    final String _email = 'mailto:hello@imaginariumng.com' +
        '?subject=' +
        _subjectController.text +
        '&body=' +
        _bodyController.text;
    try {
      await launch(_email);
    } catch (e) {
      throw 'Could not Call Phone';
    }
  }


  final Text _firstHeader = Text(
    "Connect with us",
    style: boldStyle,
  );
  final String _fMessage =
      "We develop brand identities and brand experiences customers love.";
  final Text _sndHeader = Text(
    "Don’t be a Stranger",
    style: boldStyle,
  );
  final String _sMessage =
      "Our team is eager to help you grow your business. Please feel free to contact with us.";
  final String _address =
      "Nike Art Gallery Road, off Ikate, Lekki Epe Express Way, Lagos.";

  final CallsAndMessagesService _service = CallsAndMessagesService();


  Widget _contactInfo() {
    return Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: _firstHeader),
                    SizedBox(
            height: SizeConfig.safeBlockVertical * 3,
          ), Text("$_fMessage", style: lightStyle),

          SizedBox(
            height: SizeConfig.safeBlockVertical * 2,
          ),
          Divider(color: Colors.grey,),
           SizedBox(
            height: SizeConfig.safeBlockVertical * 2,
          ),
          ListTile(
            leading: Icon(Icons.pin_drop),
            title: Text('Plot 18'),
            subtitle: Text(_address),
          ),
           ListTile(
            leading: Icon(Icons.phone), title: Text("+234(0)8183765464", style: TextStyle(color: Colors.blue),), onLongPress: () => _service.call("+2348183765464")),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("hello@imaginariumng.com", style: TextStyle(color: Colors.blue),),
            onTap: () => _service.sendMail("hello@imaginariumng.com"),
          ),
          Divider(color: Colors.grey,),
           Align(
                         alignment: Alignment.centerLeft,
child: _sndHeader),
            SizedBox(
            height: SizeConfig.safeBlockVertical * 3,
          ), Text("$_sMessage", style: lightStyle),

          SizedBox(
            height: SizeConfig.safeBlockVertical * 2,
          ),
          Divider(color: Colors.grey,),
           SizedBox(
            height: SizeConfig.safeBlockVertical * 2,
          ),
          Center(
          child: Column(
        children: <Widget>[
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Email',
            ),
          ),
          TextField(
            controller: _subjectController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Subject',
            ),
          ),
          TextField(
            controller: _bodyController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Message',
            ),
          ),
          MaterialButton(
            child: Text('Send Email'),
            color: Color(0xFFE96B0D),
            textColor: Colors.white,
            onPressed: _sendEmail,
            minWidth: SizeConfig.screenWidth,
          
          ),
        ],
      )),
        ],
      ),
    );
  }
}

class CallsAndMessagesService {
  void call(String number) => launch("tel:$number");
  void sendSms(String number) => launch("sms:$number");
  void sendMail(String email) => launch("mailto:$email");
  void sendEmail(String email) => launch("mailto:$email");

}