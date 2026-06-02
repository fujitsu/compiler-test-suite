#include <stdlib.h>
extern unsigned int v1 (signed int, signed char);
extern unsigned int (*v2) (signed int, signed char);
extern signed short v3 (signed short, unsigned char);
extern signed short (*v4) (signed short, unsigned char);
extern unsigned char v5 (unsigned short, unsigned char);
extern unsigned char (*v6) (unsigned short, unsigned char);
extern void v7 (unsigned short, unsigned short, signed char, unsigned char);
extern void (*v8) (unsigned short, unsigned short, signed char, unsigned char);
extern void v9 (signed char, signed short, unsigned char);
extern void (*v10) (signed char, signed short, unsigned char);
extern void v11 (signed short, signed char);
extern void (*v12) (signed short, signed char);
extern unsigned char v13 (signed char, signed int);
extern unsigned char (*v14) (signed char, signed int);
extern signed int v15 (unsigned int, signed int, signed char, signed int);
extern signed int (*v16) (unsigned int, signed int, signed char, signed int);
extern unsigned short v17 (unsigned int, signed short, signed char, signed char);
extern unsigned short (*v18) (unsigned int, signed short, signed char, signed char);
signed short v19 (signed int, unsigned short, unsigned char, signed int);
signed short (*v20) (signed int, unsigned short, unsigned char, signed int) = v19;
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
unsigned char v23 (signed short, unsigned int, signed short, signed char);
unsigned char (*v24) (signed short, unsigned int, signed short, signed char) = v23;
unsigned int v25 (unsigned int, unsigned char, signed short, unsigned short);
unsigned int (*v26) (unsigned int, unsigned char, signed short, unsigned short) = v25;
extern unsigned int v29 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned int (*v30) (unsigned int, unsigned char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v72 = 7U;
unsigned char v71 = 7;
unsigned char v70 = 3;

unsigned int v25 (unsigned int v73, unsigned char v74, signed short v75, unsigned short v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 5U;
unsigned char v78 = 1;
signed char v77 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed short v80, unsigned int v81, signed short v82, signed char v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = -4;
unsigned char v85 = 5;
unsigned int v84 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed int v87, unsigned short v88, unsigned char v89, signed int v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = 1;
unsigned short v92 = 7;
unsigned int v91 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
