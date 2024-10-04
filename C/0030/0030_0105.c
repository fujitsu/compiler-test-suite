#include <stdio.h>
int main()
{
   int n = 30;
   char a[n];
   for (int i = 0; i < n; i++) a[i] = i; 
   for (int i = 0; i < n; i++) printf("%d\n", a[i]); 
}
