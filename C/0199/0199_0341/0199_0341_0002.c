#include <stdlib.h>
extern signed int v1 (unsigned short, signed int);
extern signed int (*v2) (unsigned short, signed int);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern signed int v5 (unsigned short, unsigned int, unsigned char, signed int);
extern signed int (*v6) (unsigned short, unsigned int, unsigned char, signed int);
void v7 (signed char, signed char, signed short, unsigned short);
void (*v8) (signed char, signed char, signed short, unsigned short) = v7;
extern void v9 (signed short, unsigned char);
extern void (*v10) (signed short, unsigned char);
void v11 (unsigned int, unsigned int, unsigned char, unsigned int);
void (*v12) (unsigned int, unsigned int, unsigned char, unsigned int) = v11;
extern unsigned int v13 (signed int, unsigned char);
extern unsigned int (*v14) (signed int, unsigned char);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned short v17 (signed char, unsigned short, signed int, signed short);
extern unsigned short (*v18) (signed char, unsigned short, signed int, signed short);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
signed short v21 (void);
signed short (*v22) (void) = v21;
extern signed char v23 (signed int, unsigned char);
extern signed char (*v24) (signed int, unsigned char);
extern unsigned int v25 (unsigned short, unsigned char);
extern unsigned int (*v26) (unsigned short, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v72 = 1;
signed short v71 = -2;
signed char v70 = -4;

signed short v21 (void)
{
{
for (;;) {
signed char v75 = 2;
unsigned int v74 = 6U;
unsigned short v73 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
signed char v78 = -3;
signed int v77 = -4;
signed char v76 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned int v79, unsigned int v80, unsigned char v81, unsigned int v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 2U;
signed int v84 = -2;
unsigned short v83 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed char v86, signed char v87, signed short v88, unsigned short v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 0;
unsigned short v91 = 1;
unsigned short v90 = 6;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v93;
unsigned char v94;
unsigned int v95;
v93 = 3 + v90;
v94 = 6 + 0;
v95 = v25 (v93, v94);
history[history_index++] = (int)v95;
}
break;
case 5: 
return;
case 7: 
{
unsigned short v96;
unsigned char v97;
unsigned int v98;
v96 = v89 - v91;
v97 = v92 - 7;
v98 = v25 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned int v101 = 4U;
unsigned short v100 = 5;
signed int v99 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
