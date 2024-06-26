package com.nixon.aspectonly.aspect;

import com.nixon.aspectonly.calculator.BinaryOperator;
import com.nixon.aspectonly.calculator.CalcDouble;

public aspect Calculator {
	String around(): target(BinaryOperator) && call(String evaluateToString()) {
		BinaryOperator binOp = (BinaryOperator) thisJoinPoint.getTarget();
		return binOp.left.evaluateToString() + binOp.oper + binOp.right.evaluateToString();
	}
	
	
	String around(): target(CalcDouble) && call(String evaluateToString()) {
		CalcDouble calcDouble = (CalcDouble) thisJoinPoint.getTarget();
		return Double.toString(calcDouble.value);
	}
}