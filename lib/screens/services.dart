import 'package:flutter/material.dart';
import 'package:imaginarium_app/screens/contact.dart';

import 'SizeConfig.dart';
import '../utility.dart';


class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
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
                          image: AssetImage('assets/service.jpg'),
                          fit: BoxFit.cover)),
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 100),
                          Container(
                            width: SizeConfig.blockSizeHorizontal * 100,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 50),
                                  Text(
                                    'What We Do',
                                    style: TextStyle(
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 3,
                                  ),
                                  Image.asset(
                                    'assets/divider.jpg',
                                    width: SizeConfig.blockSizeHorizontal * 50,
                                  ),
                                  SizedBox(
                                      height:
                                          SizeConfig.safeBlockVertical * 10),
                                          _bDnD(),
      SizedBox(height: SizeConfig.safeBlockVertical * 3),
      _webExp(),
      SizedBox(height: SizeConfig.safeBlockVertical * 3),
      _dMS(),
       SizedBox(height: SizeConfig.safeBlockVertical * 3),
      _graphicDesign(),
             SizedBox(height: SizeConfig.safeBlockVertical * 3),
      _production(),
                   SizedBox(height: SizeConfig.safeBlockVertical * 3),
      _mnAd(),
                         SizedBox(height: SizeConfig.safeBlockVertical * 3),
      _pDnD(),
      SizedBox(height: SizeConfig.safeBlockVertical * 3),
      _animation(),
      SizedBox(
                                    height: SizeConfig.safeBlockVertical * 5,
                                  ),
                                  Center(
                                      child: Text(
                                    'Talk to us about your business today', style: boldStyle,textAlign: TextAlign.center,
                                  )),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 2,
                                  ),
                                  Center(
                                      child: Text(
                                    'Our talented team is always ready to help you.',
                                    style: TextStyle(
                                        fontSize: 22.0, color: Colors.grey),
                                    textAlign: TextAlign.center,
                                  )),
                                  SizedBox(
                                    height: SizeConfig.safeBlockVertical * 2,
                                  ),
                                  FlatButton(
                                    onPressed: () => {
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (context) =>
                                                  ContactPage()))
                                    },
                                    color: Colors.blue,
                                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                                    child: Text(
                                      'GET IN TOUCH',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                          
                                ]
                              )
                            )
                          )
                        ]
                      )
                    )
                  )
              )
          )             
    );
  }

  Widget _bDnD(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("BRAND DEVELOPMENT & DESIGN", style: boldStyle,)),
      Text("Our first step in brand development is finding the core of your business. We evaluate everything, from classifying your target audience to exploring your industry and finding the strengths and weaknesses of your competitors; and then, guide you to a better position. Drawing from the insights during the research process, we design the iconic brand identity that communicates your brand message, values and solutions in a way that tells a meaningful and compelling brand story.", style: lightStyle,),
       SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Text("LOGO DESIGN", style: smallBoldStyle,),
      Text("BRAND VOICE & TONE", style: smallBoldStyle,),
      Text("COLOUR PALETTE", style: smallBoldStyle,),
      Text("TYPEFACE", style: smallBoldStyle,),
      Text("BRAND NAMING", style: smallBoldStyle,),
      Text("BRAND PERSONALITY", style: smallBoldStyle,),
      Text("AUDIENCE CLASSIFICATION", style: smallBoldStyle,),
      Text("INDUSTRY RESEARCH", style: smallBoldStyle,),
      SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Image.asset("assets/projects/project-7.jpg"),
      ],

    );
  }

    Widget _webExp(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("WEB EXPERIENCE", style: boldStyle,)),
      Text("In creating advanced digital solutions, only one thing matters – the user. At all times, what the user needs for an optimal experience is at the forefront of our concepts across all digital applications and platforms. To ensure brand consistency across board, we try to unravel the mindsets of users to find what makes sense to them and what keeps them engaged. This approach enables us to create interactive media solutions that pulls users into the brand’s system and then, engages them. We deliver the most effective integral system your brand needs to work seamlessly online and offline.", style: lightStyle,),
       SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Text("USER EXPERIENCE & USER INTERFACE", style: smallBoldStyle,),
      Text("INTERACTIVE MEDIA", style: smallBoldStyle,),
      Text("WEBSITE DESIGN & DEVELOPMENT", style: smallBoldStyle,),
      Text("MOBILE CONTENT PORTALS", style: smallBoldStyle,),
      Text("SHORTCODE SERVICES", style: smallBoldStyle,),
      Text("SOFTWARE DEVELOPMENT", style: smallBoldStyle,),
      Text("API INTEGRATIONS", style: smallBoldStyle,),
      Text("MOBILE APP DEVELOPMENT", style: smallBoldStyle,),
      SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Image.asset("assets/projects/webexp.jpg"),
      ],
    );
  }

  
    Widget _dMS(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("DIGITAL MARKETING STRATEGY", style: boldStyle,)),
      Text("We do one thing well; keep your business in the face of paying customers. We relay your brand message in a visually captivating way to stir your audience into taking the desired action and hitting targeted goals. We create solutions that drive measurable outcomes, drive competitive advantage and profitable growth", style: lightStyle,),
       SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Text("DIGITAL MEDIA CAMPAIGNS", style: smallBoldStyle,),
      Text("SOCIAL MEDIA MANAGEMENT", style: smallBoldStyle,),
      Text("CONTENT STRATEGY AND COPYWRITING", style: smallBoldStyle,),
      Text("SEO OPTIMIZATION", style: smallBoldStyle,),
      Text("EMAIL MARKETING", style: smallBoldStyle,),
      Text("STRATEGIC DIGITAL CONSULTING", style: smallBoldStyle,),
      SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Image.asset("assets/projects/project-13.jpg"),
      ],
    );
  }
  Widget _graphicDesign(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("GRAPHIC DESIGN", style: boldStyle,)),
      Text("Great visuals are the gateway to customers’ wallets. We create eye-catching graphic designs in a cohesive way that plugs into everything your brand touches – from web designs to marketing collateral and advertising campaign materials. Our goal is to use the precise colours and shapes that simplifies the essence of your brand, into memorable visuals. Perfect for easy decision making for your customers, partners and sponsors.", style: lightStyle,),
       SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Text("BROCHURE & CATALOG DESIGN", style: smallBoldStyle,),
      Text("COMPANY PROFILE DESIGN", style: smallBoldStyle,),
      Text("MARKETING ELEMENTS DESIGN", style: smallBoldStyle,),
      Text("INTERACTIVE PORTFOLIOS", style: smallBoldStyle,),
      Text("INTERACTIVE PRESENTATIONS", style: smallBoldStyle,),
      SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Image.asset("assets/projects/project-9.jpg"),
      ],
    );
  }

    Widget _production(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("PRODUCTION", style: boldStyle,)),
      Text("Your brand experience is your brand, make it compelling. That’s why we take a strategic approach in creating media content that aligns perfectly with your brand message. Our one rule is, three seconds: you have three seconds to impress your audience in exchange for their attention. Let’s make the most out of the first three seconds.", style: lightStyle,),
       SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Text("AUDIO/VISUAL PRODUCTION", style: smallBoldStyle,),
      Text("PHOTOGRAPHY", style: smallBoldStyle,),
      Text("WEB SERIES & DOCUMENTARIES", style: smallBoldStyle,),
      Text("SHORT AND FEATURE FILMS", style: smallBoldStyle,),
      SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Image.asset("assets/projects/production.jpg"),
      ],
    );
  }

      Widget _mnAd(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("MARKETING & ADVERTISEMENT", style: boldStyle,)),
      Text("Let’s tell the world who you are. We can help your brand make a grand entrance, announce a new product, and ensure they don’t forget. Our approach is guided by an in-depth understanding of your brand, who your customers are, what your customers value, where your target audience spends the most time and the industry your brand operates in. Based on these analyses, we carefully choose the appropriate media channels – print or digital – or a combination of both, to speak to them.", style: lightStyle,),
       SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Text("MEDIA BUYS", style: smallBoldStyle,),
      Text("AD EXPERIENCES", style: smallBoldStyle,),
      Text("CONSUMER CONVERSIONS", style: smallBoldStyle,),
      Text("TARGETING AUDIENCES", style: smallBoldStyle,),
      SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Image.asset("assets/projects/marketing.jpg"),
      ],
    );
  }

   Widget _pDnD(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("PRODUCT DEVELOPMENT AND DESIGN", style: boldStyle,)),
      Text("Packaging should be attractive, memorable and a classic representation of your brand. Product development and design is what prepares the product for the market. With this understanding, we delve into the minds of the consumers to craft designs that appeal to their senses. We evaluate what is trendy and what’s not, what is environmentally acceptable and other supporting information in assessing the best way to satisfy the consumers’ evolving desires. We use materials, printing techniques and finishes that make the fingers itch to unwrap the product.", style: lightStyle,),
       SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Text("PRODUCT LABELLING", style: smallBoldStyle,),
      Text("PACKAGING MATERIALS", style: smallBoldStyle,),
      Text("GRAPHIC COMMUNICATION", style: smallBoldStyle,),
      Text("CONSUMER EXPERIENCE", style: smallBoldStyle,),
      SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Image.asset("assets/projects/product-dev.jpg"),
      ],
    );
  }
   Widget _animation(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("ANIMATION", style: boldStyle,)),
      Text("Brands who tells the stories, get the ears of the audience. Animation is the perfect way of combining brand elements, message and creative freedom in creating exciting brand stories. We entertain the audience, as much as we educate and inspire them to make purchases. From story development, to drawing and sound production, to editing and rendering finalizations, creating high impact content takes the involvement of an entire creative team. We have the best in-house creative team, made up of animators, illustrators, scriptwriters, voiceover artists and creative directors, all tasked to handle every project.", style: lightStyle,),
       SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Text("MOTION GRAPHIC", style: smallBoldStyle,),
      Text("EXPLAINER VIDEOS", style: smallBoldStyle,),
      Text("ILLUSTRATION", style: smallBoldStyle,),
      Text("VOICE OVERS", style: smallBoldStyle,),
            Text("VIDEO SCRIPTS", style: smallBoldStyle,),
      SizedBox(height: SizeConfig.safeBlockVertical * 3),
      Image.asset("assets/projects/animation.jpg"),
      ],
    );
  }
}