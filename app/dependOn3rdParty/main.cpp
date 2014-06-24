#include "lib3rdpartyA.h"
#include <iostream>

int main(int argc, char *argv[]){
	std::cout << "main app\n";

	lib3rdPartyA *objA = new lib3rdPartyA();
	objA->nonVirtualFunc();

	return 0;
}
