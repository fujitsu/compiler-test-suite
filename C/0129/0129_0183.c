#include <math.h>
#include <stdlib.h>

#include <stdio.h>
int main(){
     struct Y{
           signed long long int ll;
         unsigned long long int ull;
     };

     struct X{
	struct Y y;
     };

     struct X *root;
	root = (struct X *)malloc(sizeof(struct X));
	(root->y).ll = 0xffffffffffffffffLL;
   	(root->y).ull= 0x0000010000000111LL;

	if((root->y).ll == 0xffffffffffffffffLL)
		printf("(01) ok\n");
	else    printf("(01) ng %#x %#x\n",(root->y).ll);

	if((root->y).ull == 0x0000010000000111LL)
		printf("(02) ok\n");
	else    printf("(02) ng %#x %#x\n",(root->y).ull);
	free(root);
exit (0);
 }