#include <stdio.h>
int outblk;                   
struct outsttag
{int outstmem ; } outst;    
struct outuntag
{int outunmem ; } outun;    
enum   outemtag
  {  outemmem   } outem;    
int main()
{
  int inblk1;                 
  struct outsttag             
{int   outstmem ; } outst;
  struct outuntag             
{int   outunmem ; } outun;
  enum   outemtag             
    {  outemmem   } outem;
  lab:;                       
  printf(" TEST OK\n");
}
