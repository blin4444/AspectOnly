package com.nixon.aspectonly.aspect;

import com.nixon.aspectonly.calculator.*;

public aspect Main {
	before() : execution(public static void main(String[])) {
		BinaryOperator binOp = new BinaryOperator(new CalcDouble(1), Operation.Add, new CalcDouble(2));
		String binOpEval = binOp.evaluateToString();
		System.out.println(binOpEval);
		
		BinaryOperator binOp2 = new BinaryOperator(new CalcDouble(0), Operation.Divide, new CalcDouble(0));
		String binOpEval2 = binOp2.evaluateToString();
		System.out.println(binOpEval2);
	}
}