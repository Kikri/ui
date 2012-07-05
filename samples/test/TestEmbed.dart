//Sample Code: Test IdSpace

#import('dart:html');

#import('../../client/app/app.dart');
#import('../../client/view/view.dart');

class TestEmbed extends Activity {

  void onCreate_() {
    final TextView webView = new TextView.html('''
      <ul style="line-height: 23px">
        <li>Structured Web Apps <span style="float:right"></span></li>
        <li>Structured UI Model <span style="float:right"></span></li>
      </ul>
      ''');
    webView.width = 250;
    webView.on.mount.add((event) {
      for (Element n in webView.node.queryAll("span"))
        new Switch(true).addToDocument(n, location: "right top");
    });
    mainView.addChild(webView);
  }
}

void main() {
  new TestEmbed().run();
}
