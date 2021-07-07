package com.yingluo.easyexcel;

import com.alibaba.excel.EasyExcel;

import java.util.ArrayList;
import java.util.List;

public class TestWrite {

    public static void main(String[] args) {
        List<UserData> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            UserData data = new UserData();
            data.setUid(i);
            data.setUsername("yingluo"+i);
            list.add(data);
        }
        //设置excel路径和名称
        String filename = "F:\\excel\\01.xlsx";

        //调用方法实现写操作
        EasyExcel.write(filename,UserData.class).sheet("用户信息")
                .doWrite(list);
    }
}
