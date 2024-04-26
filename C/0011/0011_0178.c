#include  <stdio.h>

char a[1000];
short b[1500];
int c[2200];
long long int d[250];
int main()
 {
long long int cnt;int i;
static int a1[100];
static char a2[3000]; 
printf("* ENTERED *\n");
for(cnt=i=0;i<1000;i++)cnt+=a[i];
if(cnt==0)                          printf(" ** 01 OK **\n");
                               else printf(" ** 01 NG **\n");
for(cnt=i=0;i<1500;i++)cnt+=b[i];
if(cnt==0)                          printf(" ** 02 OK **\n");
                               else printf(" ** 02 NG **\n");
for(cnt=i=0;i<2200;i++)cnt+=c[i];
if(cnt==0)                          printf(" ** 03 OK **\n");
                               else printf(" ** 03 NG **\n");
for(cnt=i=0;i<250;i++)cnt+=d[i];
if(cnt==0)                          printf(" ** 04 OK **\n");
                               else printf(" ** 04 NG **\n");
for(cnt=i=0;i<100;i++)cnt+=a1[i];
if(cnt==0)                          printf(" ** 05 OK **\n");
                               else printf(" ** 05 NG **\n");
for(cnt=i=0;i<3000;i++)cnt+=a2[i];
if(cnt==0)                          printf(" ** 06 OK **\n");
                               else printf(" ** 06 NG **\n");
printf("  * ENDED *\n\n");
}
