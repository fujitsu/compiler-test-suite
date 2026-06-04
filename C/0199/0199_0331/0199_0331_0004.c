#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern unsigned int v3 (signed short, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int);
extern signed short v5 (signed int, signed short);
extern signed short (*v6) (signed int, signed short);
extern unsigned char v7 (signed char, signed char);
extern unsigned char (*v8) (signed char, signed char);
extern unsigned int v9 (signed short, unsigned char, signed char, signed char);
extern unsigned int (*v10) (signed short, unsigned char, signed char, signed char);
extern signed int v11 (signed char, signed short, unsigned char, unsigned int);
extern signed int (*v12) (signed char, signed short, unsigned char, unsigned int);
unsigned int v13 (unsigned short, signed int);
unsigned int (*v14) (unsigned short, signed int) = v13;
extern unsigned char v15 (signed char, unsigned char, signed short);
extern unsigned char (*v16) (signed char, unsigned char, signed short);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
signed char v19 (signed int);
signed char (*v20) (signed int) = v19;
signed short v21 (void);
signed short (*v22) (void) = v21;
extern unsigned char v23 (unsigned int);
extern unsigned char (*v24) (unsigned int);
extern unsigned char v25 (signed short, unsigned char);
extern unsigned char (*v26) (signed short, unsigned char);
extern unsigned char v27 (unsigned char, signed char, signed int, unsigned int);
extern unsigned char (*v28) (unsigned char, signed char, signed int, unsigned int);
extern unsigned char v29 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v136 = 4;
signed short v135 = 0;
signed short v134 = -2;

signed short v21 (void)
{
{
for (;;) {
signed int v139 = -1;
unsigned int v138 = 2U;
signed short v137 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed int v140)
{
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = -3;
unsigned char v142 = 3;
unsigned short v141 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v144, signed int v145)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned short v148 = 1;
signed short v147 = -3;
unsigned int v146 = 6U;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v149;
unsigned char v150;
v149 = v146 - 6U;
v150 = v23 (v149);
history[history_index++] = (int)v150;
}
break;
case 13: 
return v146;
default: abort ();
}
}
}
}
