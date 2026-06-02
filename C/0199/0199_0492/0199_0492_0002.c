#include <stdlib.h>
extern void v1 (unsigned char, unsigned char, unsigned int, signed char);
extern void (*v2) (unsigned char, unsigned char, unsigned int, signed char);
unsigned char v3 (signed short, signed int);
unsigned char (*v4) (signed short, signed int) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned char v7 (signed short, signed int);
extern unsigned char (*v8) (signed short, signed int);
extern signed char v9 (signed short, unsigned char, unsigned char);
extern signed char (*v10) (signed short, unsigned char, unsigned char);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (unsigned int);
extern signed char (*v14) (unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (signed char);
extern unsigned int (*v18) (signed char);
extern unsigned int v19 (unsigned int);
extern unsigned int (*v20) (unsigned int);
extern unsigned char v21 (unsigned int, unsigned char, unsigned int, unsigned char);
extern unsigned char (*v22) (unsigned int, unsigned char, unsigned int, unsigned char);
signed int v23 (unsigned short);
signed int (*v24) (unsigned short) = v23;
extern void v25 (unsigned short, unsigned int, signed char, signed int);
extern void (*v26) (unsigned short, unsigned int, signed char, signed int);
extern unsigned int v27 (unsigned int, signed int, signed char);
extern unsigned int (*v28) (unsigned int, signed int, signed char);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v80 = -2;
unsigned short v79 = 7;
signed short v78 = -3;

signed int v23 (unsigned short v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 7;
unsigned short v83 = 4;
unsigned char v82 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v85, signed int v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = -4;
unsigned short v88 = 1;
unsigned short v87 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
