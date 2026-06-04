#include <stdlib.h>
unsigned char v1 (unsigned int);
unsigned char (*v2) (unsigned int) = v1;
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern signed short v5 (signed int, unsigned char);
extern signed short (*v6) (signed int, unsigned char);
signed char v7 (unsigned short, unsigned short);
signed char (*v8) (unsigned short, unsigned short) = v7;
extern void v9 (signed int, unsigned short, signed char, unsigned char);
extern void (*v10) (signed int, unsigned short, signed char, unsigned char);
extern unsigned short v11 (unsigned int, unsigned short, signed int, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned short, signed int, unsigned char);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
extern void v19 (void);
extern void (*v20) (void);
extern void v21 (signed short, signed int, unsigned short);
extern void (*v22) (signed short, signed int, unsigned short);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
extern signed int v27 (unsigned short, signed char);
extern signed int (*v28) (unsigned short, signed char);
extern unsigned short v29 (signed char, signed char, unsigned short);
extern unsigned short (*v30) (signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v85 = 6;
signed short v84 = -1;
signed char v83 = 1;

signed short v15 (void)
{
{
for (;;) {
unsigned short v88 = 4;
unsigned int v87 = 3U;
signed int v86 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned short v89, unsigned short v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = -4;
unsigned char v92 = 2;
signed char v91 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
signed char v96 = -2;
signed short v95 = 2;
signed short v94 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = -2;
signed int v99 = -1;
signed short v98 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v101;
unsigned short v102;
v101 = 2 - 5;
v102 = v13 (v101);
history[history_index++] = (int)v102;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
