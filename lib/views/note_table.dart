import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Text(
              "My Notes",
              style: GoogleFonts.poppins(
                  fontSize: 30.sp,
                  color: Colors.blue,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          PaginatedDataTable(
              columnSpacing: 20,
              arrowHeadColor: Colors.cyan,
              // header: Container(
              //     padding: EdgeInsets.only(left: 16, top: 20),
              //     height: 60,
              //     decoration: BoxDecoration(
              //         color: Colors.cyan,
              //         borderRadius: BorderRadius.all(Radius.circular(20))),
              //     child: Text("Tasks")),
              rowsPerPage: 5,
              columns: [
                DataColumn(
                    label: SizedBox(
                        width: 100,
                        child: Card(
                          elevation: 10,
                          color: Colors.blue,
                          child: Center(
                              child: Text(
                            "Task ID",
                            style: GoogleFonts.poppins(
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          )),
                        ))),
                DataColumn(
                    label: SizedBox(
                        width: 100,
                        child: Card(
                          elevation: 10,
                          color: Colors.blue,
                          child: Center(
                              child: Text(
                            "Task Titel",
                            style: GoogleFonts.poppins(
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          )),
                        ))),
                DataColumn(
                    label: SizedBox(
                        width: 100,
                        child: Card(
                          elevation: 10,
                          color: Colors.blue,
                          child: Center(
                              child: Text(
                            "Describtion",
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          )),
                        ))),
              ],
              source: Data())
        ],
      ),
    );
  }
}

class Data extends DataTableSource {
  static List<String> title = [
    'Task 1',
    'Task 2',
    'Task 3',
    'Task 4',
    'Task 5',
    'Task 6',
    'Task 7',
    'Task 8',
    'Task 9',
    'Task 10',
    'Task 11',
    'Task 12',
    'Task 13',
    'Task 14',
    'Task 15',
    'Task 16',
    'Task 17',
    'Task 18',
    'Task 19',
    'Task 20',
  ];
  static List<String> description = [
    'First description',
    'Second description',
    'Third description',
    'Fourth description',
    'Fifth description',
    'Sixth description',
    'Seventh description',
    'Eighth description',
    'Ninth description',
    'Tenth description',
    'Eleventh description',
    'Twelfth description',
    'Thirteenth description',
    'Fourteenth description',
    'Fifteenth description',
    'Sixteenth description',
    'Seventeenth description',
    'Eighteenth description',
    'Nineteenth description',
    'Twentieth description',
  ];
  List<Map<String, dynamic>> datasource = List.generate(
    20,
    (index) => {
      "ID": "$index",
      "title": title[index],
      "description": description[index],
    },
  );

  @override
  DataRow? getRow(int index) {
    return DataRow(
        color: index.isEven
            ? const MaterialStatePropertyAll(
                Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5))
            : const MaterialStatePropertyAll(
                Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5)),
        cells: [
          DataCell(Text(
            datasource[index]["ID"].toString(),
            style: GoogleFonts.poppins(
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.normal),
          )),
          DataCell(Text(datasource[index]["title"],style: GoogleFonts.poppins(
              fontSize: 20.sp,
              color: Colors.white,
              fontWeight: FontWeight.normal))),
          DataCell(Text(datasource[index]["description"],style: GoogleFonts.poppins(
              fontSize: 15.sp,
              color: Colors.white,
              fontWeight: FontWeight.normal)))
        ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => datasource.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
