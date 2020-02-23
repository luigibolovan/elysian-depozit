package com.elysian.depozit;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.StringTokenizer;

public class InserterMain {

    public static void main(String[] args) throws Exception{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        BufferedReader bf   = new BufferedReader(new InputStreamReader(System.in));
        ResultSet rs        = null;

        System.out.print("SID:");       String SID      = bf.readLine();
        System.out.print("username:");  String username = bf.readLine();
        System.out.print("password:");  String password = bf.readLine();

        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:" + SID, username, password);
        System.out.println("Conectat");
        Statement statement = conn.createStatement();

        System.out.print("Nume farmacie:"); String numeFarmacie = bf.readLine();
        numeFarmacie = String.format("'%s'", numeFarmacie); // numeFarmacie -> 'numeFarmacie'
        rs = statement.executeQuery("SELECT Order_ID FROM Orders WHERE ROWNUM = 1 ORDER BY Order_ID DESC");

        int orderNumber = 0;
        if(rs.next()){
            orderNumber = rs.getInt(1); //id-ul celei mai noi comenzi din tabela de comenzi
        }
        orderNumber++; //id-ul urmatoarei comenzi

        int farmID = 0;
        rs = statement.executeQuery("SELECT Client_ID FROM Clients WHERE Client_Name = " + numeFarmacie);
        if(rs.next()){
            farmID = rs.getInt(1);  //id-ul clientului
        }
        rs = statement.executeQuery("INSERT INTO Orders VALUES ("+orderNumber+","+farmID +",CURRENT_DATE)");

        System.out.println("Introduceti produsele impreuna cu cantitatea acestora, acestea vor fi introduse automat in comanda. STOP pentru a opri introducerea produselor");
        String line = null;
        int productID = 0;
        while(!(line = bf.readLine()).toLowerCase().equals("stop")){
            StringTokenizer strTokenizer    = new StringTokenizer(line, " ");
            int tokenNo                     = 0;
            int quantity                    = 0;
            String productName              = "";
            String token                    = "";

            while(strTokenizer.hasMoreTokens()){
                tokenNo++;
                token = strTokenizer.nextToken();

                if(Character.isDigit(token.charAt(0))){
                    quantity = Integer.parseInt(token);
                } else {

                    /* handling pentru produsele alcatuite din doua sau mai multe cuvinte
                    *  se adauga spatiu in fata fiecarui nou cuvant din numele produsului */
                    if(tokenNo > 1) {
                        productName += " " + token;
                    } else {
                        productName += token;
                    }
                }
            }
            productName = String.format("'%s'", productName); // productName -> 'productName' because SQL
            rs = statement.executeQuery("SELECT Product_ID FROM Products WHERE Product_Name = " + productName);
            if(rs.next()){
                productID = rs.getInt(1); // id-ul produsului pentru produsul introdus de la tastatura
            }
            rs = statement.executeQuery("INSERT INTO Orders_Products values (" + orderNumber + ',' + productID + ',' + quantity + ')');
            System.out.println("Introdus: " + productName + " - " + quantity);
        }
        rs.close();
        statement.close();
        conn.close();
    }
}
