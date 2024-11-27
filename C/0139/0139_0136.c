#include <stdlib.h>
#include <math.h>
  
 
 
 
 
 
 
 

 
#include <stdio.h>
#include <string.h>
 
struct tag1 { int            lint;
               unsigned long  uint[6];
               struct    {
                              char    stch[6][300];
                              int     stin;
               } st1;
 } s1, *sp1;
 
struct tag2 { unsigned long  uint[6];
               char           str[300];
 } t1, *tp1;
int main()
{
struct tag1 ws1[2], ws2, *wsp1, *wsp2 ;
struct tag2 wt1[2], wt2, *wtp1, *wtp2 ;
static char str1[]="\
aaaaaaaaaabbbbbbbbbbccccccccccddddddddddeeeeeeeeee\
fghijaaaaabbbbbbbbbbccccccccccbananaddddeeeeeeeeee\
aaaaaaaaaabbbbbbbbbbapplecccccddddddddddeeeeeeeeee\
abcdeaaaaabbbbbbbbbbccccccccccddddddddddeeeeeeeeee\
pqrstuaaaabbbbbbbbbbklmnocccccddddddddddeeeeeeeeee\
aaaaaaaaaabbbbbbbbbbccccccccccorangeddddeeeeeeeee";
static char str2[]="abcde";
static char str3[]="fghij";
static char str4[]="klmno";
static char str5[]="pqrstu";
 
 printf("*****   TEST START  *****\n");
 
wsp1 = ws1;
wsp2 = &ws2;
wtp1 = wt1;
wtp2 = &wt2;
sp1  = &s1;
tp1  = &t1;
 
memset(wsp1, 0x00, sizeof(ws1));
memset(wsp2, 0x00, sizeof(ws2));
memset(wtp1, 0x00, sizeof(wt1));
memset(wtp2, 0x00, sizeof(wt2));
memset(sp1 , 0x00, sizeof(s1 ));
memset(tp1 , 0x00, sizeof(t1 ));
 
memcpy(wsp1->st1.stch[0], str1, strlen(str1));
if (!memcmp(wsp1->st1.stch[0], str1, strlen(str1)))
     printf("     ###    NO.1  OK  ###\n");
else
     printf("     ***    NO.1  NG  ***\n");
 
strcpy(wtp1->str, str1);
if (!strcmp(wtp1->str, str1))
     printf("     ###    NO.2  OK  ###\n");
else
     printf("     ***    NO.2  NG  ***\n");
 
 wsp1->uint[1] = strlen(str1);
 wsp1->uint[2] = strlen(str2);
 wsp1->uint[3] = strlen(str3);
 wsp1->uint[4] = strlen(str4);
 wsp1->uint[5] = strlen(str5);
 
if (!memcmp(memcpy(wtp1->str,
             memcpy(wtp2->str,
              memcpy(tp1->str,
               memcpy(wsp1->st1.stch[0],
                memcpy(wsp2->st1.stch[0],
                 memcpy(sp1->st1.stch[0],
                  memcpy((wtp1+1)->str, str1,
                  wsp1->uint[1]),
                 wsp1->uint[1]),
                wsp1->uint[1]),
               wsp1->uint[1]),
              wsp1->uint[1]),
             wsp1->uint[1]),
            wsp1->uint[1]),
            str1,wsp1->uint[1]))
     printf("     ###    NO.3  OK  ###\n");
else
     printf("     ***    NO.3  NG  ***\n");
 
 
if (!memcmp((wtp1->str+50),            str3, strlen(str3)) &&
    !memcmp((wtp2->str+80),        "banana",            6) &&
    !memcmp((tp1->str+120),         "apple",            5) &&
    !memcmp((wsp1->st1.stch[0]+150), str2, strlen(str2)) &&
    !memcmp((wsp2->st1.stch[0]+200), str5, strlen(str5)) &&
    !memcmp((sp1->st1.stch[0]+220),  str4, strlen(str4)) &&
    !memcmp(((wtp1+1)->str+280),   "orange",            6)   )
 
     printf("     ###    NO.4  OK  ###\n");
else
     printf("     ***    NO.4  NG  ***\n");
 
 
printf("*****   TEST ENDED  *****\n");
exit (0);
}
