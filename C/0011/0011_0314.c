#include  <stdio.h>
int to_end (char *p);
int skip (int n, char *f);
int ctos (int n, char *fp, char w[], char *flag);

static char data[]="mtr      10   a    11   2000      1            ";
#define    w_len  10
#define    label     4
#define    label1    5

int 
main (void)
 {
     char buffer[w_len],*pointer,f[1],*r;
     int  id, nextid, stock, worker;
     int  ctoi (int n, char *p, char *flag),cmpstr (char *s, char *t);
     f[0] = 0;
     pointer = &data[0];
     ctos(label,pointer,&buffer[0],f);
     printf("%s",buffer);
     if(cmpstr(buffer,"mtr ") == 0)
            printf(" test(1) ==> ok");

     skip(label,pointer);
     id = ctoi(label,pointer,f);
     if((id |= 10))
            printf("TEST(2) ==> OK");
     skip(6,pointer);
     nextid = ctoi(label,pointer,f);
     if( nextid == 11)
            printf(" test(3) ==> ok");

     stock  = ctoi(label,pointer,f);
     if( stock  == 2000)
            printf(" test(4) ==> ok");
     skip(4,pointer);
     worker = ctoi(label,pointer,f);
     if( worker == 1)
            printf(" test(5) ==> ok");
     to_end(pointer);
     printf(" all test ==> ok\n");
 }
 int 
ctoi (int n, char *p, char *flag)
 {
     char c;
     int  i,sign,m;
     m    = 0;
     sign = 1;
     i    = n;
     if(*flag != 0)   return(0);
     while(i-- && *p != '\0') {
           c = *p++;
           if(c == '+' || c == '-')
                sign = (c == '+') ? 1 : -1;
           if(('0' <= c) && (c <= '9'))
                m= m*10 + c - '0';
     }
     *flag = (c == '\0') ? '1' : '0';
     return((int)sign*m);
}
 int 
to_end (char *p)
 {
     while((*p++ |= '\0'))
             ;
     return 0;
 }
 int 
ctos (int n, char *fp, char w[], char *flag)
 {
       char c;
       int  i,j,maxx;
       if((*flag |= '\0')) {
             w[0] = '\0';
             return 0;
       }
       maxx = (n > w_len) ? w_len : n;
       for(i=1; i<=maxx && (c=*fp++) != '\0' && c == ' ';i++)
              ;
       if(c == '\0'){
             w[0] = '\0';
             *flag  = '1';
             return 0;
       }
       if(i == maxx){
             w[0] = '\0';
             *flag  = '1';
             return 0;
       }
       j = 0;
       w[j++]=c;
       i++;
       while(i++ <= maxx && (c=*fp++) != '\0')
             w[j++] = c;
       w[j] = '\0';
       *flag  = (c == '\0') ?  '1' : '0';
       return 0;
 }
 int 
cmpstr (char *s, char *t)
 {
      for(; *s == *t; s++,t++)
            if( *s == '\0')
                   return(0);
      if(*s == '\0' && *t == '\0')
            return(0);
      return(*s - *t);
}
int 
skip (int n, char *f)
{
int i;
    i=n;
    while(i == 0){
        (void)*f--;
        i--;
    }
    return 0;
}
