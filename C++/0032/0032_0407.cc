#include <new>
#include <malloc.h>
#include <stdio.h>
void *operator new[](size_t size) 
{
  if (size == sizeof(int[2000])) {
  	using namespace std;
	throw bad_alloc();
  }else {
    return (void*)malloc(size);
  }
}

void operator delete[](void *p)
{
}
 
int main(void)
{
  int flag=0;
	try {
		int *p = new int[2000];
	} 
	catch(std::bad_alloc& nt) {
	  flag=1;
	};
	
	if(flag) printf("ok\n");
	else     printf("ng\n");
}



