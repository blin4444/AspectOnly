package com.nixon.aspectonly.calculator;

public class BinaryOperator extends Evaluable {
	public Evaluable left;
	public Evaluable right;
	public Operation oper;
	
	public BinaryOperator(Evaluable left, Operation oper, Evaluable right) {
		this.left = left;
		this.right = right;
		this.oper = oper;
	}
	
	public String evaluateToString() {
		return null;
	}
}
