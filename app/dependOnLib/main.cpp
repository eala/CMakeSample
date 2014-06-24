#include "libAheader.h"
#include <iostream>
#include <stdlib.h>

int main(int argc, char *argv[]){
	std::cout << "depend on libA app\n";

	libA *objA = new libA();
	objA->demolibA();

	return 0;
}
