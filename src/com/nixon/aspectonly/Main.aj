package com.nixon.aspectonly;

import com.nixon.aspectonly.calculator.*;

public aspect Main {
	before() : execution(public static void main(String[])) {
		BinaryOperator binOp = new BinaryOperator(new CalcDouble(1), Operation.Add, new CalcDouble(2));
		var binOpEval = binOp.evaluateToString();
		System.out.println(binOpEval);
	}
}