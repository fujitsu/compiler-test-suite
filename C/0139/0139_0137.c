#include <stdlib.h>
#include <math.h>
  
 
 
 
 
 
 
 

 
#include <stdio.h>
#include <string.h>
 
struct tag1 { int            lint;
               unsigned long  uint;
               struct    {
                              char    stch[1000];
                              int     stin;
               } st1;
 } s1, *sp1;
 
struct tag2 { unsigned long  uint[6];
               char           str[1000];
 } t1, *tp1;
int main()
{
struct tag1 ws1, *wsp1;
struct tag2 wt1, *wtp1;
static char str1[]="\
aaaaaaaaaabbbbbbbbbbccccccccccddddddddddeeeeeeeeee\
nahepaaaaabbbbbbbbbbccccccccccurrurrddddeeeeeeeeee\
aaaaaaaaaabbbbbbbbbbsutbocccccddddddddddeeeeeeeeee\
zusupaaaaabbbbbbbbbbccccccccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
nagnagaaaabbbbbbbbbbrawapcccccddddddddddeeeeeeeeee\
aaaaaaaaaabbbbbbbbbbcccccccccctsyuupddddeeeeeeeee";
static char str2[]="zusup";
static char str3[]="nahep";
static char str4[]="rawap";
static char str5[]="nagnag";
 
 printf("*****   TEST START  *****\n");
 
wsp1 = &ws1;
wtp1 = &wt1;
sp1  = &s1;
tp1  = &t1;
 
memset(wsp1, 0x00, sizeof(ws1));
memset(wtp1, 0x00, sizeof(wt1));
memset(sp1 , 0x00, sizeof(s1));
memset(tp1 , 0x00, sizeof(t1));
 
memcpy(wsp1->st1.stch, str1, strlen(str1));
if (!memcmp(wsp1->st1.stch, str1, strlen(str1)))
     printf("     ###    NO.1  OK  ###\n");
else
     printf("     ***    NO.1  NG  ***\n");
 
strcpy(wtp1->str, str1);
if (!strcmp(wtp1->str, str1))
     printf("     ###    NO.2  OK  ###\n");
else
     printf("     ***    NO.2  NG  ***\n");
 
 wtp1->uint[1] = strlen(str1);
 wtp1->uint[2] = strlen(str2);
 wtp1->uint[3] = strlen(str3);
 wtp1->uint[4] = strlen(str4);
 wtp1->uint[5] = strlen(str5);
 
if (!strcmp(strcpy(wtp1->str,
             strcpy(tp1->str,
              strcpy(wsp1->st1.stch,
               strcpy(sp1->st1.stch, str1)))),
            str1))
     printf("     ###    NO.3  OK  ###\n");
else
     printf("     ***    NO.3  NG  ***\n");
 
 
if (!memcmp((wtp1->str+50),       str3, strlen(str3)) &&
    !memcmp((wtp1->str+80),   "urrurr",            6) &&
    !memcmp((tp1->str+120),    "sutbo",            5) &&
    !memcmp((wsp1->st1.stch+150), str2, strlen(str2)) &&
    !memcmp((wsp1->st1.stch+800), str5, strlen(str5)) &&
    !memcmp((sp1->st1.stch+820),  str4, strlen(str4)) &&
    !memcmp((wtp1->str+980),  "tsyuup",            6)   )
 
     printf("     ###    NO.4  OK  ###\n");
else
     printf("     ***    NO.4  NG  ***\n");
 
 
printf("*****   TEST ENDED  *****\n");
exit (0);
}
