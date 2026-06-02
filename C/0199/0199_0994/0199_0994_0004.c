#include <stdlib.h>
extern void v1 (signed int, signed char, signed int, signed short);
extern void (*v2) (signed int, signed char, signed int, signed short);
extern void v3 (unsigned char, signed char, unsigned short);
extern void (*v4) (unsigned char, signed char, unsigned short);
extern unsigned char v5 (unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned int, unsigned int, unsigned int);
extern signed char v7 (signed int, unsigned char);
extern signed char (*v8) (signed int, unsigned char);
static void v9 (signed int, unsigned short);
static void (*v10) (signed int, unsigned short) = v9;
extern unsigned char v11 (unsigned int, signed char, signed int);
extern unsigned char (*v12) (unsigned int, signed char, signed int);
extern unsigned int v13 (unsigned char, signed short, signed char);
extern unsigned int (*v14) (unsigned char, signed short, signed char);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern void v25 (void);
extern void (*v26) (void);
extern signed char v27 (signed int, unsigned int);
extern signed char (*v28) (signed int, unsigned int);
signed char v29 (unsigned int, unsigned short);
signed char (*v30) (unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v139 = -2;
signed short v138 = 3;
signed char v137 = -2;

signed char v29 (unsigned int v140, unsigned short v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned short v144 = 1;
signed char v143 = 0;
signed short v142 = 0;
trace++;
switch (trace)
{
case 9: 
{
signed int v145;
unsigned short v146;
v145 = 1 - 0;
v146 = v144 + v144;
v9 (v145, v146);
}
break;
case 11: 
return v143;
default: abort ();
}
}
}
}

static void v9 (signed int v147, unsigned short v148)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
unsigned short v151 = 5;
unsigned int v150 = 2U;
unsigned short v149 = 2;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}
