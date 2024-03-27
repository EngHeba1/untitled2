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
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16))),
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
                    label: Container(
                        width: 100,

                        child: Card(
                          child: Center(child: Text("Task ID",style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),)),
                          elevation: 10,
                          color: Colors.blue,
                        ))),
                DataColumn(
                    label: Container(
                        width: 100,

                        child: Card(
                          child: Center(child: Text("Task Titel",style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),)),
                          elevation: 10,
                          color: Colors.blue,
                        ))),
                DataColumn(
                    label: Container(
                        width: 100,

                        child: Card(
                          child: Center(child: Text("Describtion",style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),)),
                          elevation: 10,
                          color: Colors.blue,
                        ))),
              ],
              source: Data())
        ],
      ),
    );
  }
}

class Data extends DataTableSource {
  List<Map<String, dynamic>> datasource = List.generate(
      20,
      (index) =>
          {"ID": "$index", "titel": "Titel ", "discribtion": "Discription"});

  @override
  DataRow? getRow(int index) {
    return DataRow(
      color:index.isEven? MaterialStatePropertyAll(Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5)):
      MaterialStatePropertyAll(Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5)),
        cells: [
      DataCell(Text(datasource[index]["ID"].toString())),
      DataCell(Text(datasource[index]["titel"])),
      DataCell(Text(datasource[index]["discribtion"]))
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
