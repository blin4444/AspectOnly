package com.nixon.aspectonly.calculator;

public enum Operation {
	Add,
	Subtract,
	Multiply,
	Divide,
	Power;
	
	@Override
    public String toString() {
        switch (this) {
        case Add:
        	return "+";
        case Subtract:
        	return "-";
        case Multiply:
        	return "-";
        case Divide:
        	return "/";
        case Power:
        	return "^";
        }
        
        return "";
    }
}
