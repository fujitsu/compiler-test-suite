#include <stdlib.h>
extern unsigned short v3 (signed short, unsigned short);
extern unsigned short (*v4) (signed short, unsigned short);
extern unsigned int v5 (unsigned short, signed short);
extern unsigned int (*v6) (unsigned short, signed short);
unsigned char v7 (unsigned short, unsigned int, unsigned char, signed int);
unsigned char (*v8) (unsigned short, unsigned int, unsigned char, signed int) = v7;
extern signed char v9 (signed int, unsigned char, signed char);
extern signed char (*v10) (signed int, unsigned char, signed char);
extern signed int v11 (unsigned short, signed char, signed int, signed int);
extern signed int (*v12) (unsigned short, signed char, signed int, signed int);
extern unsigned short v13 (signed char, unsigned int);
extern unsigned short (*v14) (signed char, unsigned int);
extern void v15 (unsigned short, signed int, signed short);
extern void (*v16) (unsigned short, signed int, signed short);
extern signed char v17 (unsigned short, unsigned char);
extern signed char (*v18) (unsigned short, unsigned char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v23 (unsigned int, signed int, unsigned int, unsigned short);
extern void (*v24) (unsigned int, signed int, unsigned int, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
signed int v27 (signed int, signed short);
signed int (*v28) (signed int, signed short) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v139 = -3;
unsigned char v138 = 7;
signed short v137 = -4;

signed int v27 (signed int v140, signed short v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned int v144 = 1U;
signed int v143 = 3;
unsigned char v142 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v145, unsigned int v146, unsigned char v147, signed int v148)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed int v151 = 1;
signed int v150 = 0;
unsigned char v149 = 7;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v152;
v152 = v25 ();
history[history_index++] = (int)v152;
}
break;
case 3: 
return v149;
default: abort ();
}
}
}
}
