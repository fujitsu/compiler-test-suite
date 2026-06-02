#include <stdlib.h>
extern unsigned int v1 (signed short);
extern unsigned int (*v2) (signed short);
extern void v3 (signed int, unsigned int);
extern void (*v4) (signed int, unsigned int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern void v7 (signed char, signed char, signed int, signed short);
extern void (*v8) (signed char, signed char, signed int, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v13 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned char, unsigned int);
extern unsigned short v15 (unsigned int, signed char);
extern unsigned short (*v16) (unsigned int, signed char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
void v19 (signed char, signed int);
void (*v20) (signed char, signed int) = v19;
extern signed short v21 (unsigned char, signed int);
extern signed short (*v22) (unsigned char, signed int);
extern signed char v23 (unsigned short, signed int);
extern signed char (*v24) (unsigned short, signed int);
extern unsigned char v25 (signed short);
extern unsigned char (*v26) (signed short);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v83 = 5U;
unsigned int v82 = 1U;
signed char v81 = 0;

unsigned int v29 (void)
{
{
for (;;) {
signed int v86 = -1;
unsigned char v85 = 7;
unsigned char v84 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed char v87, signed int v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned int v91 = 2U;
unsigned short v90 = 7;
signed short v89 = -2;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v92;
signed int v93;
v92 = 5 + 3;
v93 = v27 (v92);
history[history_index++] = (int)v93;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
