import 'package:flutter/material.dart';
import 'package:nihao_flutter/demo/expansion_panel_demo.dart';
import './button_demo.dart';
import './floating_action_button_demo.dart';
import './popup_menu_button_demo.dart';
import './form_demo.dart';
import './checkbox_demo.dart';
import './Radio_demo.dart';
import './switch_demo.dart';
import './slider_demo.dart';
import './dateTime_Demo.dart';
import './simpleDialog_demo.dart';
import './alertDialog_demo.dart';
import './bottom_sheet.dart';
import './snack_bar_demo.dart';
import './clip_demo.dart';
import './dataTable_demo.dart';
import './paginated_data_table_demo.dart';
import './card_demo.dart';
import 'stepper_demo.dart';

class MaterialComponentsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponentsDemo'),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          ListItem(title: 'stepperDemo', page: StepperDemo()),
          ListItem(title: 'cardDemo', page: CasrDemo()),
          ListItem(title: 'paginatedDataDemo', page: PaginatedDataTableDemo()),
          ListItem(title: 'dataTableDemo', page: DataTableDemo()),
          ListItem(title: 'clipDemo', page: ClipDemo()),
          ListItem(title: 'expansionPanelDemo', page: ExpansionPanelDemo()),
          ListItem(title: 'snackBarDemo', page: SnackBarDemo()),
          ListItem(title: 'bottomSheetDemo', page: BottomSheetDemo()),
          ListItem(title: 'alertDialogDemo', page: AlertDialogDemo()),
          ListItem(title: 'simpleDialog', page: SimpleDialogDemo()),
          ListItem(title: 'date', page: DateTimeDemo()),
          ListItem(title: 'Slider', page: SliderDemo()),
          ListItem(title: 'Radio', page: RadioDemo()),
          ListItem(title: 'Switch', page: SwitchDemo()),
          ListItem(title: 'Checkbox', page: CheckboxDemo()),
          ListItem(title: 'Form', page: FormDemo()),
          ListItem(title: 'Button', page: ButtonDemo()),
          ListItem(title: 'popUpMenuButtonDemo', page: PopupMenuButtonDemo()),
          ListItem(
              title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
        ],
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
