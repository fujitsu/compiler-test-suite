#include <stdlib.h>
extern void v1 (unsigned short, signed char);
extern void (*v2) (unsigned short, signed char);
extern unsigned char v3 (unsigned int, signed char, unsigned int);
extern unsigned char (*v4) (unsigned int, signed char, unsigned int);
signed int v5 (signed char, signed int);
signed int (*v6) (signed char, signed int) = v5;
extern signed short v7 (signed int, unsigned char, signed short, signed char);
extern signed short (*v8) (signed int, unsigned char, signed short, signed char);
extern unsigned char v9 (unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned short, unsigned int);
extern signed int v11 (signed int);
extern signed int (*v12) (signed int);
extern unsigned int v13 (unsigned char, signed short);
extern unsigned int (*v14) (unsigned char, signed short);
unsigned char v15 (unsigned int, signed short, unsigned int);
unsigned char (*v16) (unsigned int, signed short, unsigned int) = v15;
extern signed int v17 (unsigned int, unsigned char, signed short);
extern signed int (*v18) (unsigned int, unsigned char, signed short);
signed char v21 (unsigned short, unsigned char, unsigned char, unsigned char);
signed char (*v22) (unsigned short, unsigned char, unsigned char, unsigned char) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern void v29 (signed char, signed int, signed int, unsigned int);
extern void (*v30) (signed char, signed int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v71 = 2;
signed short v70 = 3;
unsigned short v69 = 0;

signed char v21 (unsigned short v72, unsigned char v73, unsigned char v74, unsigned char v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned char v78 = 4;
unsigned char v77 = 4;
signed char v76 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned int v79, signed short v80, unsigned int v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = -3;
unsigned int v83 = 1U;
signed short v82 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed char v85, signed int v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = -4;
unsigned char v88 = 3;
unsigned int v87 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
