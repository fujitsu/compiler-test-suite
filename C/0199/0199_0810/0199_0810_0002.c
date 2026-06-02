#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
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
extern signed int v21 (unsigned short, unsigned short);
extern signed int (*v22) (unsigned short, unsigned short);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v27 (signed int);
extern signed int (*v28) (signed int);
extern unsigned short v29 (unsigned char, signed short);
extern unsigned short (*v30) (unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v79 = 4;
unsigned char v78 = 3;
unsigned short v77 = 7;

unsigned int v3 (void)
{
{
for (;;) {
unsigned short v82 = 5;
signed char v81 = -3;
signed char v80 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
unsigned char v85 = 7;
signed short v84 = 0;
unsigned char v83 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v86;
v86 = v7 ();
history[history_index++] = (int)v86;
}
break;
case 16: 
return v85;
default: abort ();
}
}
}
}
