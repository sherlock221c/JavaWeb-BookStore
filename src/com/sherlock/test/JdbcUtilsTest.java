package com.sherlock.test;

import com.sherlock.utils.JdbcUtils;
import com.sun.xml.internal.ws.api.server.SDDocument;
import org.junit.Test;

import java.sql.Connection;
import java.sql.SQLException;

public class JdbcUtilsTest {

    @Test
    public void Test1() {
        for (int i = 0; i < 50; i++) {
            Connection connection = JdbcUtils.getConnection();
            System.out.println(connection);
//            JdbcUtils.close(connection);
        }
    }

}
