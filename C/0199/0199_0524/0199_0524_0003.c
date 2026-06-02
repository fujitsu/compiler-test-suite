#include <stdlib.h>
extern unsigned int v3 (signed short, signed char, unsigned int);
extern unsigned int (*v4) (signed short, signed char, unsigned int);
extern unsigned char v5 (unsigned int, signed char, signed int, unsigned int);
extern unsigned char (*v6) (unsigned int, signed char, signed int, unsigned int);
void v7 (void);
void (*v8) (void) = v7;
extern signed int v9 (signed int, signed int, signed short);
extern signed int (*v10) (signed int, signed int, signed short);
extern signed short v11 (void);
extern signed short (*v12) (void);
signed int v13 (unsigned char, signed short);
signed int (*v14) (unsigned char, signed short) = v13;
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
unsigned int v116 = 1U;
unsigned int v115 = 3U;
signed char v114 = -4;

signed int v13 (unsigned char v117, signed short v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = 3;
signed short v120 = 1;
unsigned char v119 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
unsigned short v124 = 0;
signed int v123 = 0;
signed short v122 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed short v125;
v125 = v11 ();
history[history_index++] = (int)v125;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
