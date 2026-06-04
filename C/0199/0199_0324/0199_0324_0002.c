#include <stdlib.h>
extern signed int v1 (unsigned int, signed char);
extern signed int (*v2) (unsigned int, signed char);
extern signed char v3 (signed int, signed short);
extern signed char (*v4) (signed int, signed short);
extern signed short v5 (signed short, signed char, unsigned char);
extern signed short (*v6) (signed short, signed char, unsigned char);
extern signed int v7 (unsigned short, signed char, signed char);
extern signed int (*v8) (unsigned short, signed char, signed char);
extern unsigned char v11 (signed char, signed char);
extern unsigned char (*v12) (signed char, signed char);
extern unsigned short v13 (signed int, signed char, unsigned int);
extern unsigned short (*v14) (signed int, signed char, unsigned int);
extern unsigned char v15 (signed char, signed int);
extern unsigned char (*v16) (signed char, signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern void v19 (unsigned char, signed short);
extern void (*v20) (unsigned char, signed short);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
extern unsigned char v25 (signed short, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v26) (signed short, unsigned char, unsigned int, unsigned int);
extern signed int v27 (signed char, unsigned char);
extern signed int (*v28) (signed char, unsigned char);
void v29 (signed int);
void (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v86 = 5;
signed short v85 = 2;
unsigned short v84 = 6;

void v29 (signed int v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = -3;
unsigned int v89 = 1U;
signed char v88 = -2;
trace++;
switch (trace)
{
case 8: 
return;
default: abort ();
}
}
}
}

unsigned char v21 (void)
{
{
for (;;) {
signed char v93 = -4;
signed int v92 = -2;
signed int v91 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
