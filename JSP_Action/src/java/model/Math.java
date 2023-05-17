/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serializable;

/**
 *
 * @author Đàm Quang Chiến
 */
public class Math implements Serializable {

    private String num1="" , num2="" , op="";

    public Math() {
    }

    public String getNum1() {
        return num1;
    }

    public void setNum1(String num1) {
        this.num1 = num1;
    }

    public String getNum2() {
        return num2;
    }

    public void setNum2(String num2) {
        this.num2 = num2;
    }

    public String getOp() {
        return op;
    }

    public void setOp(String op) {
        this.op = op;
    }

    public String getResult() {
        String res="";
        try {
            double num1 = Double.parseDouble(this.num1);
            double num2 = Double.parseDouble(this.num2);
            switch (op) {
                case "+":
                    res = "" + (num1 + num2);
                    break;
                case "-":
                    res = "" + (num1 - num2);
                    break;
                case "*":
                    res = "" + (num1 * num2);
                    break;
                case "/":
                    if(num2!=0)
                    res = "" + (num1 / num2);
                    else res ="Cannot divided for 0";
            }
        } catch (NumberFormatException e) {
            res="khong phai so";
        }

        return res;
    }

}
