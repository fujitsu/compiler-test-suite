#define  max_len   10
int main()
{
   int a[max_len][max_len];
   int i,j,sum;
   for(i=0;i<=max_len-1;i++) {
     for(j=0;j<=max_len-1;j++) {
       a[i][j]=i;
     }
   }
   sum=0;
   for(i=0;i<=max_len-1;i++) {
      for(j=0;j<=max_len-1;j++)
         sum=sum+a[i][j];
   }
   return 0;
}
