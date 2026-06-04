#include <stdlib.h>
extern unsigned int v3 (signed short, signed char, unsigned int);
extern unsigned int (*v4) (signed short, signed char, unsigned int);
extern unsigned char v5 (unsigned int, signed char, signed int, unsigned int);
extern unsigned char (*v6) (unsigned int, signed char, signed int, unsigned int);
extern void v7 (void);
extern void (*v8) (void);
extern signed int v9 (signed int, signed int, signed short);
extern signed int (*v10) (signed int, signed int, signed short);
signed short v11 (void);
signed short (*v12) (void) = v11;
extern signed int v13 (unsigned char, signed short);
extern signed int (*v14) (unsigned char, signed short);
extern signed short v15 (signed char, signed short, unsigned int, unsigned short);
extern signed short (*v16) (signed char, signed short, unsigned int, unsigned short);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned char v19 (signed int, unsigned int, signed int);
extern unsigned char (*v20) (signed int, unsigned int, signed int);
extern signed int v21 (signed char, signed int, signed char, unsigned char);
extern signed int (*v22) (signed char, signed int, signed char, unsigned char);
extern void v23 (unsigned short, signed short, signed char, unsigned char);
extern void (*v24) (unsigned short, signed short, signed char, unsigned char);
extern signed int v25 (signed char, signed short);
extern signed int (*v26) (signed char, signed short);
extern signed int v27 (signed int, signed short);
extern signed int (*v28) (signed int, signed short);
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v128 = 2;
unsigned int v127 = 3U;
unsigned short v126 = 1;

signed short v11 (void)
{
{
for (;;) {
unsigned int v131 = 5U;
signed short v130 = -2;
signed char v129 = -2;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v132;
signed short v133;
v132 = 5 + 5;
v133 = v29 (v132);
history[history_index++] = (int)v133;
}
break;
case 4: 
{
unsigned short v134;
signed short v135;
v134 = 6 + 3;
v135 = v29 (v134);
history[history_index++] = (int)v135;
}
break;
case 6: 
{
unsigned short v136;
signed short v137;
v136 = 3 - 4;
v137 = v29 (v136);
history[history_index++] = (int)v137;
}
break;
case 8: 
{
unsigned short v138;
signed short v139;
v138 = 4 + 1;
v139 = v29 (v138);
history[history_index++] = (int)v139;
}
break;
case 10: 
{
unsigned short v140;
signed short v141;
v140 = 7 + 1;
v141 = v29 (v140);
history[history_index++] = (int)v141;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}
