#include <stdio.h>
struct c {
public:
	int i;
	struct n { int j; }; 
	};
struct d : public c {
	int f(struct n* p) {  
		return 0;
		}
	};
int main(){
 printf("ok\n");
}
