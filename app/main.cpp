#include "srcLibA.h"
#include <iostream>
#include <stdlib.h>

int main(int argc, char *argv[]){
	printf("main app\n");

	srcClassA *objA = new srcClassA();
	objA->nonVirtualFunc();

	system("pause");
	return 0;
}
