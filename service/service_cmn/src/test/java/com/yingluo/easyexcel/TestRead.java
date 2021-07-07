package com.yingluo.easyexcel;

import com.alibaba.excel.EasyExcel;

public class TestRead {

    public static void main(String[] args) {
        //要读取文件的路径
        String filename = "F:\\excel\\01.xlsx";
        //调用方法实现读取操作
        EasyExcel.read(filename,UserData.class,new ExcelListener()).sheet().doRead();
    }
}
