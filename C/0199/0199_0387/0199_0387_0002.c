#include <stdlib.h>
extern unsigned int v1 (signed short, signed short, unsigned char, unsigned short);
extern unsigned int (*v2) (signed short, signed short, unsigned char, unsigned short);
extern unsigned short v3 (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned int, signed char, unsigned short, unsigned short);
extern signed short v5 (signed short, unsigned char, unsigned char);
extern signed short (*v6) (signed short, unsigned char, unsigned char);
extern signed char v7 (signed char, unsigned char, signed short);
extern signed char (*v8) (signed char, unsigned char, signed short);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
signed char v11 (unsigned short, signed short, signed int, signed short);
signed char (*v12) (unsigned short, signed short, signed int, signed short) = v11;
signed char v13 (unsigned int, signed short);
signed char (*v14) (unsigned int, signed short) = v13;
extern void v15 (unsigned char, unsigned int);
extern void (*v16) (unsigned char, unsigned int);
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
signed char v19 (unsigned char);
signed char (*v20) (unsigned char) = v19;
extern signed char v21 (unsigned char, unsigned int);
extern signed char (*v22) (unsigned char, unsigned int);
extern unsigned char v23 (unsigned short, signed short);
extern unsigned char (*v24) (unsigned short, signed short);
extern unsigned int v25 (signed int, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v26) (signed int, unsigned int, unsigned int, unsigned int);
void v27 (void);
void (*v28) (void) = v27;
extern signed int v29 (signed int, unsigned int);
extern signed int (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v79 = -3;
unsigned char v78 = 6;
signed char v77 = 0;

void v27 (void)
{
{
for (;;) {
signed int v82 = 2;
unsigned short v81 = 3;
signed int v80 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned char v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = 0;
signed char v85 = -4;
signed int v84 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned int v87, signed short v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 3;
signed short v90 = -2;
unsigned int v89 = 5U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v92;
unsigned int v93;
v92 = 7 - 6;
v93 = v89 - 4U;
v15 (v92, v93);
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

signed char v11 (unsigned short v94, signed short v95, signed int v96, signed short v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 7;
signed char v99 = 1;
signed short v98 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
