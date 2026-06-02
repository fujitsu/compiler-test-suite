#include <stdlib.h>
signed char v1 (signed char);
signed char (*v2) (signed char) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (unsigned char, unsigned short);
extern signed char (*v6) (unsigned char, unsigned short);
unsigned char v7 (signed char, signed short, signed int, unsigned int);
unsigned char (*v8) (signed char, signed short, signed int, unsigned int) = v7;
extern signed short v9 (unsigned short, unsigned short);
extern signed short (*v10) (unsigned short, unsigned short);
void v11 (unsigned char);
void (*v12) (unsigned char) = v11;
extern signed char v13 (signed int, unsigned int, unsigned char, signed char);
extern signed char (*v14) (signed int, unsigned int, unsigned char, signed char);
extern unsigned short v15 (signed char, signed char);
extern unsigned short (*v16) (signed char, signed char);
void v17 (signed int, signed short, signed int);
void (*v18) (signed int, signed short, signed int) = v17;
extern signed short v19 (signed char, signed char, unsigned short);
extern signed short (*v20) (signed char, signed char, unsigned short);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern void v23 (unsigned char, signed short);
extern void (*v24) (unsigned char, signed short);
extern signed short v25 (signed int, signed int);
extern signed short (*v26) (signed int, signed int);
extern unsigned int v27 (unsigned char, unsigned short);
extern unsigned int (*v28) (unsigned char, unsigned short);
extern unsigned char v29 (unsigned char, unsigned int);
extern unsigned char (*v30) (unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v68 = -2;
unsigned char v67 = 2;
unsigned short v66 = 1;

void v17 (signed int v69, signed short v70, signed int v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = -4;
signed short v73 = -1;
signed short v72 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned char v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 6U;
unsigned char v77 = 2;
unsigned int v76 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed char v79, signed short v80, signed int v81, unsigned int v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 6U;
signed int v84 = 2;
signed char v83 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed char v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 1;
signed short v88 = -4;
unsigned int v87 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed int v90;
unsigned int v91;
unsigned char v92;
signed char v93;
signed char v94;
v90 = -1 - -2;
v91 = 5U + v87;
v92 = v89 - v89;
v93 = -2 - -4;
v94 = v13 (v90, v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 6: 
{
signed char v95;
signed char v96;
v95 = v86 + v86;
v96 = v21 (v95);
history[history_index++] = (int)v96;
}
break;
case 10: 
{
unsigned short v97;
unsigned short v98;
signed short v99;
v97 = 3 + 1;
v98 = 7 - 1;
v99 = v9 (v97, v98);
history[history_index++] = (int)v99;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}
