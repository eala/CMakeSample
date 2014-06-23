#include "libAheader.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
	printf("main app\n");

	libA *objA = new libA();
	objA->demolibA();

	system("pause");
	return 0;
}
