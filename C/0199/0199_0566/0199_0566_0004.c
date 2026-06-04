#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned int, unsigned char);
extern unsigned int (*v2) (signed char, unsigned int, unsigned char);
extern signed char v3 (unsigned short, unsigned char, signed int, signed int);
extern signed char (*v4) (unsigned short, unsigned char, signed int, signed int);
extern signed int v5 (signed int, signed int, signed short, unsigned char);
extern signed int (*v6) (signed int, signed int, signed short, unsigned char);
extern signed char v7 (unsigned char, signed char);
extern signed char (*v8) (unsigned char, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned short v11 (signed int, unsigned short);
extern unsigned short (*v12) (signed int, unsigned short);
extern signed short v13 (unsigned short, unsigned int, signed short);
extern signed short (*v14) (unsigned short, unsigned int, signed short);
extern signed short v15 (unsigned char, unsigned int);
extern signed short (*v16) (unsigned char, unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (signed short, unsigned char, unsigned short, signed short);
extern unsigned short (*v22) (signed short, unsigned char, unsigned short, signed short);
extern signed short v23 (signed char);
extern signed short (*v24) (signed char);
signed short v25 (void);
signed short (*v26) (void) = v25;
unsigned short v27 (unsigned short, signed int, signed int, signed int);
unsigned short (*v28) (unsigned short, signed int, signed int, signed int) = v27;
extern unsigned int v29 (signed short, unsigned short, signed char, signed int);
extern unsigned int (*v30) (signed short, unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v136 = 2U;
signed int v135 = 1;
unsigned int v134 = 3U;

unsigned short v27 (unsigned short v137, signed int v138, signed int v139, signed int v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned short v143 = 0;
signed char v142 = -3;
unsigned int v141 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (void)
{
{
for (;;) {
unsigned int v146 = 6U;
signed int v145 = -3;
unsigned short v144 = 1;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v147;
unsigned int v148;
signed short v149;
signed short v150;
v147 = 6 - 6;
v148 = v146 - 3U;
v149 = 2 + -2;
v150 = v13 (v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}
