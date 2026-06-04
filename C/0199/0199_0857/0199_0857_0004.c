#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned int v3 (signed short, unsigned char, signed char);
extern unsigned int (*v4) (signed short, unsigned char, signed char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned char v7 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned char (*v8) (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (signed char, unsigned short, unsigned char);
extern unsigned int (*v12) (signed char, unsigned short, unsigned char);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (signed int, unsigned int);
extern signed char (*v24) (signed int, unsigned int);
extern signed char v25 (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed short v27 (signed int, unsigned short, signed char, unsigned char);
extern signed short (*v28) (signed int, unsigned short, signed char, unsigned char);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v123 = -4;
signed int v122 = 1;
unsigned char v121 = 1;

unsigned short v29 (void)
{
{
for (;;) {
unsigned char v126 = 7;
signed char v125 = 2;
signed char v124 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v127;
unsigned int v128;
unsigned int v129;
unsigned int v130;
signed char v131;
v127 = 5U + 2U;
v128 = 2U - 1U;
v129 = 1U + 3U;
v130 = 2U - 3U;
v131 = v25 (v127, v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 3: 
return 5;
case 6: 
return 4;
case 8: 
{
unsigned int v132;
unsigned int v133;
unsigned int v134;
unsigned int v135;
signed char v136;
v132 = 1U - 5U;
v133 = 6U - 5U;
v134 = 2U - 1U;
v135 = 0U - 1U;
v136 = v25 (v132, v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 10: 
{
unsigned int v137;
unsigned int v138;
unsigned int v139;
unsigned int v140;
signed char v141;
v137 = 3U + 5U;
v138 = 3U - 5U;
v139 = 1U - 5U;
v140 = 0U - 6U;
v141 = v25 (v137, v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
