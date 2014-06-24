#include "libAheader.h"
#include <iostream>

libA::libA(){
	m_objA = new lib3rdPartyA();
}

libA::~libA(){
	if(m_objA){
		delete m_objA;
	}
}

void libA::demolibA(){
	if(m_objA){
		std::cout << "demo libA\n";
		m_objA->nonVirtualFunc();
	}else{
		std::cout << "objA is null\n";
	}
}
