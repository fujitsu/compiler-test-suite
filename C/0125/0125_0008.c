#include <string.h>
#include<stdio.h>

int main() {
 
   int y;
 
   printf(" TEST START \n");
 
#define x(x) # x
#define y(y) x(y)
 
#define a %
 if (!memcmp(y(a),"%",1))
   printf(" *** O K (27-01) *** \n");
 else
   printf(" *** N G (27-01) *** \n");
 
#undef a
#define a(x) x
 if (a(1) == 1)
   printf(" *** O K (27-02) *** \n");
 else
   printf(" *** N G (27-02) *** \n");
 
y = 10;
#undef a
#define a(x) y
 if (a(3) == 10)
   printf(" *** O K (27-03) *** \n");
 else
   printf(" *** N G (27-03) *** \n");
 
#undef a
#define a(x) 'xyz'
 if (a(x) == 'xyz')
   printf(" *** O K (27-04) *** \n");
 else
   printf(" *** N G (27-04) *** \n");
 
#undef a
#define a(x) "xyz"
 if (!memcmp(a(x),"xyz",3))
   printf(" *** O K (27-05) *** \n");
 else
   printf(" *** N G (27-05) *** \n");
 
#undef a
#define a(x) 12345
 if (a(x) == 12345)
   printf(" *** O K (27-06) *** \n");
 else
   printf(" *** N G (27-06) *** \n");
 
#undef a
#define a(x) \n
 if (!memcmp(y(a(x)),"\n",1))
   printf(" *** O K (27-07) *** \n");
 else
   printf(" *** N G (27-07) *** \n");
 
#undef a
#define a(x) x/*abcdefg*/+
 if (a(5) 5 == 10)
   printf(" *** O K (27-08) *** \n");
 else
   printf(" *** N G (27-08) *** \n");
 
#undef a
#define a(x) # x
 if (!memcmp(a(abcdef),"abcdef",6))
   printf(" *** O K (27-09) *** \n");
 else
   printf(" *** N G (27-09) *** \n");
 
#undef a
#define a(x) x ## y
 if (!memcmp(y(a(xxy)),"xxyy",4))
   printf(" *** O K (27-10) *** \n");
 else
   printf(" *** N G (27-10) *** \n");
 
#undef a
#define a(x) %
 if (!memcmp(y(a(c)),"%",1))
   printf(" *** O K (27-11) *** \n");
 else
   printf(" *** N G (27-11) *** \n");
 
 
   printf(" TEST END \n");
 
}
