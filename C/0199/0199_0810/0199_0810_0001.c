#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern unsigned int v9 (unsigned short, unsigned char, signed char);
extern unsigned int (*v10) (unsigned short, unsigned char, signed char);
extern unsigned int v11 (signed char, unsigned char, signed char);
extern unsigned int (*v12) (signed char, unsigned char, signed char);
extern void v13 (void);
extern void (*v14) (void);
extern void v15 (signed int, unsigned char);
extern void (*v16) (signed int, unsigned char);
extern signed int v17 (unsigned int, signed int);
extern signed int (*v18) (unsigned int, signed int);
extern unsigned char v19 (signed char, signed char, unsigned char);
extern unsigned char (*v20) (signed char, signed char, unsigned char);
signed int v21 (unsigned short, unsigned short);
signed int (*v22) (unsigned short, unsigned short) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v27 (signed int);
extern signed int (*v28) (signed int);
extern unsigned short v29 (unsigned char, signed short);
extern unsigned short (*v30) (unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v68 = 0;
unsigned char v67 = 4;
unsigned int v66 = 5U;

signed int v21 (unsigned short v69, unsigned short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = 1;
signed short v72 = -3;
signed short v71 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
unsigned short v76 = 2;
signed int v75 = -2;
unsigned char v74 = 3;
trace++;
switch (trace)
{
case 1: 
{
v13 ();
}
break;
case 15: 
return 1;
default: abort ();
}
}
}
}
