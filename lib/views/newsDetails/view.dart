import 'package:flutter/material.dart';
import 'package:lagnet_eltanmya/constants.dart';
import 'package:lagnet_eltanmya/views/newsDetails/news_image.dart';
import 'package:lagnet_eltanmya/views/newsDetails/news_name_link_button.dart';
import 'package:lagnet_eltanmya/views/newsDetails/pop_button.dart';
import 'package:lagnet_eltanmya/views/newsDetails/views_icon.dart';
import 'package:lagnet_eltanmya/widgets/container_shadow.dart';

class NewsDetailsView extends StatelessWidget {
  final SizedBox _sizedBox = SizedBox(height: 15);
  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.title;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              NewsImage(),
              ContainerShadow(radius: 40,child: ViewsIcon(),),
              PopButton(),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _sizedBox,
                Text('استضافه مدير مركز التنميه الاجتماعيه',style: titleStyle,),
                Text('5 may 2020',style: TextStyle(
                  color: kDarkGrayColor,
                ),),
                _sizedBox,
                Text('هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق'),
                _sizedBox,
                Text('مصادر الخبر',style: titleStyle,),
                NewsNameLinkButton(),
                NewsNameLinkButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}