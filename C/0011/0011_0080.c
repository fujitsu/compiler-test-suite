#include  <stdio.h>

#include <stdio.h>
#include <string.h>
#include <memory.h>
#define om 'o'
#define km 'k'
#define sp ' '
#define rt '\0'

struct wordtag {
  char omark[13];
  char kmark[13];
};
int main()
{
   struct wordtag ok;
   int loopc;
   char *schar;
   void oset(int counter, char *set),kset(int counter, char *set);

   for(loopc=0; loopc<=5; loopc++)
   {
     oset(loopc, ok.omark);
     printf("%s",ok.omark);
     kset(loopc, ok.kmark);
     printf("%s\n",ok.kmark);
   }
}
void oset(int counter, char *set)
{
  int i;

    set = memset(set,0x0,13);
    switch(counter)
    {
      case 0: case 5:
        for(i=0; i<=11; i++)
        {
           switch(i)
           {
             case 0: case 8:
               *set = sp;
               break;
             case 1: case 2: case 3: case 4: case 5: case 6: case 7:
               *set = om;
               break;
             default:
               *set = sp;
           }
           set++;
        }
        break;
      case 1: case 2: case 3: case 4:
        for(i=0; i<=11; i++)
        {
            if(i==0 || i==8)
              *set = om;
            else
              *set = sp;
            set++;
        }
        break;
      }
}
void kset(int counter, char *set)
{
  int i;

    set = memset(set,sp,13);
    set = memset(set,km,1);
    switch(counter)
    {
      case 0:
        *(set+7) = km;
        break;
      case 1:
        *(set+6) = km;
        break;
      case 2:
        for(i=0; i<=5; i++)
        {
         *(set+i) = km;
        }
        break;
      case 3:
        *(set+6) = km;
        break;
      case 4:
        *(set+7) = km;
        break;
      case 5:
        *(set+8) = km;
    }
    *(set+12) = rt;
}
