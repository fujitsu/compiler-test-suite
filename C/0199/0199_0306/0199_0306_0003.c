#include <stdlib.h>
extern signed short v1 (signed int, signed int, unsigned char, signed char);
extern signed short (*v2) (signed int, signed int, unsigned char, signed char);
unsigned char v3 (signed char, unsigned char);
unsigned char (*v4) (signed char, unsigned char) = v3;
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern signed short v7 (signed char, signed short);
extern signed short (*v8) (signed char, signed short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned int v11 (unsigned int, signed int, signed char, signed char);
extern unsigned int (*v12) (unsigned int, signed int, signed char, signed char);
void v13 (unsigned int, signed short);
void (*v14) (unsigned int, signed short) = v13;
extern void v15 (unsigned char, signed int, signed char, unsigned short);
extern void (*v16) (unsigned char, signed int, signed char, unsigned short);
extern signed char v17 (signed char, signed char, unsigned int);
extern signed char (*v18) (signed char, signed char, unsigned int);
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern signed int v23 (unsigned int, signed short);
extern signed int (*v24) (unsigned int, signed short);
signed short v25 (unsigned char, unsigned short, signed int, unsigned int);
signed short (*v26) (unsigned char, unsigned short, signed int, unsigned int) = v25;
extern void v27 (unsigned char, signed short, signed char);
extern void (*v28) (unsigned char, signed short, signed char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v78 = 1;
signed short v77 = -3;
signed short v76 = 0;

signed short v25 (unsigned char v79, unsigned short v80, signed int v81, unsigned int v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 0U;
signed short v84 = 0;
signed int v83 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned int v86, signed short v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 5;
signed char v89 = 0;
signed int v88 = -2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v91;
v91 = v29 ();
history[history_index++] = (int)v91;
}
break;
case 3: 
{
unsigned int v92;
v92 = v29 ();
history[history_index++] = (int)v92;
}
break;
case 5: 
{
unsigned int v93;
signed short v94;
signed int v95;
v93 = v86 - 7U;
v94 = -1 + v87;
v95 = v23 (v93, v94);
history[history_index++] = (int)v95;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
unsigned char v98 = 3;
unsigned short v97 = 5;
signed char v96 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed char v99, unsigned char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned short v103 = 0;
unsigned short v102 = 0;
unsigned int v101 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
