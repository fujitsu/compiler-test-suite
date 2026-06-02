#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v5 (signed short, signed char, unsigned char);
extern unsigned short (*v6) (signed short, signed char, unsigned char);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern unsigned char v9 (signed int, unsigned short, unsigned int, signed short);
extern unsigned char (*v10) (signed int, unsigned short, unsigned int, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned char v13 (signed char, unsigned int, unsigned short, signed short);
extern unsigned char (*v14) (signed char, unsigned int, unsigned short, signed short);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern signed int v17 (signed char, unsigned char);
extern signed int (*v18) (signed char, unsigned char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned char v21 (signed short, signed int, unsigned char, unsigned int);
extern unsigned char (*v22) (signed short, signed int, unsigned char, unsigned int);
extern unsigned short v23 (unsigned char, signed short);
extern unsigned short (*v24) (unsigned char, signed short);
extern unsigned int v25 (unsigned char, signed short, unsigned char, signed int);
extern unsigned int (*v26) (unsigned char, signed short, unsigned char, signed int);
extern signed char v27 (unsigned short, unsigned int, unsigned short, signed short);
extern signed char (*v28) (unsigned short, unsigned int, unsigned short, signed short);
unsigned char v29 (unsigned int, unsigned char, signed char);
unsigned char (*v30) (unsigned int, unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v79 = 0;
unsigned short v78 = 1;
signed short v77 = 3;

unsigned char v29 (unsigned int v80, unsigned char v81, signed char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed char v85 = 2;
signed short v84 = -2;
unsigned short v83 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
unsigned int v88 = 1U;
unsigned short v87 = 1;
signed int v86 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
signed int v91 = 3;
unsigned int v90 = 7U;
unsigned int v89 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
unsigned char v94 = 1;
signed int v93 = 0;
signed short v92 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v95;
signed int v96;
unsigned char v97;
unsigned int v98;
unsigned char v99;
v95 = -1 - v92;
v96 = v93 - v93;
v97 = 4 + v94;
v98 = 3U - 2U;
v99 = v21 (v95, v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
