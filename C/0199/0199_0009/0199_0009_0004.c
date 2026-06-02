#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char, signed char);
extern unsigned short (*v2) (unsigned short, signed char, signed char);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed char v9 (unsigned short);
extern signed char (*v10) (unsigned short);
extern unsigned short v11 (unsigned char, signed int, signed char);
extern unsigned short (*v12) (unsigned char, signed int, signed char);
signed int v13 (unsigned short);
signed int (*v14) (unsigned short) = v13;
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern unsigned short v17 (unsigned short, signed short, signed int, signed short);
extern unsigned short (*v18) (unsigned short, signed short, signed int, signed short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned short v21 (signed char, signed int, unsigned short, signed char);
extern unsigned short (*v22) (signed char, signed int, unsigned short, signed char);
extern unsigned short v23 (unsigned char, signed int, signed char);
extern unsigned short (*v24) (unsigned char, signed int, signed char);
extern signed char v25 (unsigned char, signed char, unsigned int, signed char);
extern signed char (*v26) (unsigned char, signed char, unsigned int, signed char);
extern unsigned short v27 (unsigned short);
extern unsigned short (*v28) (unsigned short);
extern unsigned char v29 (signed char, unsigned int, signed char);
extern unsigned char (*v30) (signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v133 = 3;
unsigned int v132 = 1U;
unsigned int v131 = 5U;

unsigned short v15 (void)
{
{
for (;;) {
unsigned short v136 = 4;
unsigned char v135 = 3;
unsigned int v134 = 3U;
trace++;
switch (trace)
{
case 5: 
{
signed char v137;
signed int v138;
unsigned short v139;
signed char v140;
unsigned short v141;
v137 = -2 - 0;
v138 = -2 + -2;
v139 = 3 + 0;
v140 = 2 - -3;
v141 = v21 (v137, v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 13: 
return 7;
default: abort ();
}
}
}
}

signed int v13 (unsigned short v142)
{
history[history_index++] = (int)v142;
{
for (;;) {
unsigned char v145 = 3;
signed char v144 = 0;
unsigned char v143 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
