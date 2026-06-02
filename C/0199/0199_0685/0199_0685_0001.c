#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned int v3 (unsigned int, unsigned short);
extern unsigned int (*v4) (unsigned int, unsigned short);
extern unsigned short v5 (unsigned short, signed int, signed char, signed short);
extern unsigned short (*v6) (unsigned short, signed int, signed char, signed short);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
void v9 (unsigned int, unsigned int);
void (*v10) (unsigned int, unsigned int) = v9;
extern unsigned short v11 (signed short, signed int, unsigned short, unsigned short);
extern unsigned short (*v12) (signed short, signed int, unsigned short, unsigned short);
extern signed char v13 (unsigned char, unsigned short, signed int);
extern signed char (*v14) (unsigned char, unsigned short, signed int);
extern unsigned short v15 (unsigned short, signed int);
extern unsigned short (*v16) (unsigned short, signed int);
extern signed int v17 (unsigned int, unsigned int);
extern signed int (*v18) (unsigned int, unsigned int);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern signed int v23 (signed short, unsigned short);
extern signed int (*v24) (signed short, unsigned short);
signed char v25 (signed char);
signed char (*v26) (signed char) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v80 = 2U;
unsigned short v79 = 4;
signed int v78 = 2;

signed char v25 (signed char v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 0;
unsigned char v83 = 6;
signed int v82 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned int v85, unsigned int v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 7;
signed int v88 = 3;
signed int v87 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
