#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub();


unsigned int idx = 5;
struct tag { int mem1;
             char ca[10];
	   } st;
int main()
{
unsigned int i;
printf("********** 001 TEST START **********\n"); 
for (i = 0; i < 10; i++) {
  st.ca[i] = i+99;
}
st.ca[idx] = 124;
sub();
if (st.ca[5]== 124) {
  printf("OK-1\n");
}
else {
  printf("NG-1\n");
}
sub();
i = st.ca[6];
sub();
if (i==105) {
  printf("OK-2\n");
}
else {
  printf("NG-2\n");
}
printf("********** 001 TEST  END  **********\n");
exit (0);
}
int sub()
{
  return 0;
}
