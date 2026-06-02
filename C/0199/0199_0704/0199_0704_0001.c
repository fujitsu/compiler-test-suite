#include <stdlib.h>
signed char v3 (signed int);
signed char (*v4) (signed int) = v3;
unsigned int v5 (unsigned short);
unsigned int (*v6) (unsigned short) = v5;
void v7 (signed char, unsigned char, unsigned char);
void (*v8) (signed char, unsigned char, unsigned char) = v7;
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern signed int v11 (signed char, unsigned int);
extern signed int (*v12) (signed char, unsigned int);
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
extern unsigned char v15 (unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, signed short);
extern unsigned int v17 (unsigned char);
extern unsigned int (*v18) (unsigned char);
extern signed int v19 (unsigned short, signed char);
extern signed int (*v20) (unsigned short, signed char);
extern void v21 (signed int);
extern void (*v22) (signed int);
unsigned short v23 (unsigned char, signed int);
unsigned short (*v24) (unsigned char, signed int) = v23;
extern unsigned short v25 (unsigned char, unsigned int, signed char);
extern unsigned short (*v26) (unsigned char, unsigned int, signed char);
extern unsigned int v27 (signed int, signed short, signed int, signed int);
extern unsigned int (*v28) (signed int, signed short, signed int, signed int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v71 = 0;
signed int v70 = 0;
unsigned short v69 = 2;

unsigned short v23 (unsigned char v72, signed int v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = 0;
unsigned short v75 = 1;
signed char v74 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
signed int v79 = 1;
unsigned int v78 = 6U;
signed int v77 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed char v80, unsigned char v81, unsigned char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 5;
signed short v84 = -4;
signed short v83 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 6;
unsigned char v88 = 7;
signed short v87 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 0;
signed int v92 = -3;
unsigned int v91 = 7U;
trace++;
switch (trace)
{
case 1: 
return -4;
case 8: 
return -4;
default: abort ();
}
}
}
}
