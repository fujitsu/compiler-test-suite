#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned int, unsigned char, signed int);
extern unsigned int (*v2) (unsigned short, unsigned int, unsigned char, signed int);
extern signed char v5 (signed int, unsigned short, unsigned short, unsigned int);
extern signed char (*v6) (signed int, unsigned short, unsigned short, unsigned int);
extern unsigned char v7 (signed short, unsigned int, signed char);
extern unsigned char (*v8) (signed short, unsigned int, signed char);
extern void v9 (unsigned short, signed short, unsigned char);
extern void (*v10) (unsigned short, signed short, unsigned char);
extern signed short v11 (unsigned short, signed short);
extern signed short (*v12) (unsigned short, signed short);
void v13 (unsigned char, signed short, signed char);
void (*v14) (unsigned char, signed short, signed char) = v13;
extern void v15 (signed short, unsigned int, unsigned int, unsigned char);
extern void (*v16) (signed short, unsigned int, unsigned int, unsigned char);
signed int v17 (unsigned int, signed int);
signed int (*v18) (unsigned int, signed int) = v17;
unsigned char v19 (signed int, signed int);
unsigned char (*v20) (signed int, signed int) = v19;
extern signed short v21 (signed char, unsigned char);
extern signed short (*v22) (signed char, unsigned char);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern unsigned int v27 (signed char, signed int, unsigned char, signed short);
extern unsigned int (*v28) (signed char, signed int, unsigned char, signed short);
extern signed short v29 (signed char, signed char, signed short, unsigned short);
extern signed short (*v30) (signed char, signed char, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v71 = -2;
signed short v70 = -3;
signed char v69 = -1;

unsigned int v23 (void)
{
{
for (;;) {
unsigned int v74 = 1U;
unsigned char v73 = 3;
unsigned char v72 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed int v75, signed int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 5;
signed short v78 = -4;
unsigned short v77 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned int v80, signed int v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 7;
signed char v83 = 3;
unsigned char v82 = 5;
trace++;
switch (trace)
{
case 7: 
{
signed short v85;
unsigned int v86;
unsigned int v87;
unsigned char v88;
v85 = 2 + -4;
v86 = v80 - 7U;
v87 = v80 + 3U;
v88 = 2 - v82;
v15 (v85, v86, v87, v88);
}
break;
case 9: 
return v81;
default: abort ();
}
}
}
}

void v13 (unsigned char v89, signed short v90, signed char v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = -1;
unsigned char v93 = 1;
unsigned char v92 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
