#include <stdlib.h>
extern unsigned int v3 (unsigned short, unsigned int);
extern unsigned int (*v4) (unsigned short, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (signed int, unsigned char, signed short);
extern signed short (*v8) (signed int, unsigned char, signed short);
extern unsigned short v9 (unsigned short, unsigned short, signed short);
extern unsigned short (*v10) (unsigned short, unsigned short, signed short);
extern unsigned int v11 (unsigned int, signed char);
extern unsigned int (*v12) (unsigned int, signed char);
extern void v13 (signed char, signed char);
extern void (*v14) (signed char, signed char);
extern unsigned short v15 (unsigned int, unsigned char);
extern unsigned short (*v16) (unsigned int, unsigned char);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
signed short v19 (unsigned short);
signed short (*v20) (unsigned short) = v19;
extern signed char v21 (unsigned int, signed short, signed char);
extern signed char (*v22) (unsigned int, signed short, signed char);
extern signed int v23 (signed char, signed int);
extern signed int (*v24) (signed char, signed int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (unsigned char, unsigned int, signed short, signed char);
extern unsigned int (*v28) (unsigned char, unsigned int, signed short, signed char);
unsigned int v29 (unsigned short);
unsigned int (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v85 = -3;
signed int v84 = -2;
unsigned int v83 = 2U;

unsigned int v29 (unsigned short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 2U;
unsigned char v88 = 1;
unsigned int v87 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned short v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 3;
unsigned short v92 = 2;
unsigned char v91 = 6;
trace++;
switch (trace)
{
case 1: 
return -1;
default: abort ();
}
}
}
}
