#include <stdlib.h>
extern signed short v1 (signed int, unsigned short, signed char);
extern signed short (*v2) (signed int, unsigned short, signed char);
extern void v3 (signed int, signed char, signed char, unsigned char);
extern void (*v4) (signed int, signed char, signed char, unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
signed short v7 (unsigned int, unsigned int, unsigned int);
signed short (*v8) (unsigned int, unsigned int, unsigned int) = v7;
extern unsigned int v9 (signed short);
extern unsigned int (*v10) (signed short);
unsigned int v11 (unsigned char);
unsigned int (*v12) (unsigned char) = v11;
extern signed int v13 (signed short);
extern signed int (*v14) (signed short);
extern void v15 (unsigned short, unsigned char, signed char);
extern void (*v16) (unsigned short, unsigned char, signed char);
extern unsigned int v17 (signed char, signed char, unsigned short);
extern unsigned int (*v18) (signed char, signed char, unsigned short);
extern unsigned char v19 (signed char, signed char, unsigned int, unsigned short);
extern unsigned char (*v20) (signed char, signed char, unsigned int, unsigned short);
extern unsigned int v23 (signed char, unsigned short);
extern unsigned int (*v24) (signed char, unsigned short);
signed int v25 (signed char, unsigned char);
signed int (*v26) (signed char, unsigned char) = v25;
extern unsigned char v27 (unsigned int, signed int, signed int, unsigned int);
extern unsigned char (*v28) (unsigned int, signed int, signed int, unsigned int);
extern unsigned short v29 (unsigned int, signed int, unsigned int);
extern unsigned short (*v30) (unsigned int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v79 = 3;
signed char v78 = -4;
unsigned short v77 = 1;

signed int v25 (signed char v80, unsigned char v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = 2;
signed short v83 = 3;
signed short v82 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = 2;
signed int v87 = -3;
unsigned short v86 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned int v89, unsigned int v90, unsigned int v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 7;
signed char v93 = -4;
unsigned char v92 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
