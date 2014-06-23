#include "srcLibA.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
	printf("main app\n");

	srcClassA *objA = new srcClassA();
	objA->nonVirtualFunc();

	system("pause");
	return 0;
}
