#include "libAheader.h"
#include <stdio.h>

libA::libA(){
	m_objA = new srcClassA();
}

libA::~libA(){
	if(m_objA){
		delete m_objA;
	}
}

void libA::demolibA(){
	if(m_objA){
		printf("demo libA\n");
		m_objA->nonVirtualFunc();
	}else{
		printf("objA is null\n");
	}
}
