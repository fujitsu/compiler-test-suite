int main()
{
     struct s1 {
       char *s;
       struct s1 *slp;
     };
     static struct s1 a[] = {
       { "abcd",a+1 },
       { "efgh",a+2 }
     };
   }
