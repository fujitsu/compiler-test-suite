#include <stdlib.h>
extern unsigned char v1 (signed char, signed short, unsigned short);
extern unsigned char (*v2) (signed char, signed short, unsigned short);
void v3 (signed int, signed char, signed char);
void (*v4) (signed int, signed char, signed char) = v3;
extern signed int v5 (unsigned char, signed char, signed int);
extern signed int (*v6) (unsigned char, signed char, signed int);
extern unsigned short v7 (signed short, signed char);
extern unsigned short (*v8) (signed short, signed char);
unsigned char v9 (signed int, unsigned short, unsigned short);
unsigned char (*v10) (signed int, unsigned short, unsigned short) = v9;
extern void v11 (unsigned int, signed int);
extern void (*v12) (unsigned int, signed int);
extern signed int v13 (unsigned int, unsigned char);
extern signed int (*v14) (unsigned int, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned short v17 (signed char, signed short, unsigned short);
extern unsigned short (*v18) (signed char, signed short, unsigned short);
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
extern void v21 (signed char, signed short);
extern void (*v22) (signed char, signed short);
signed int v23 (unsigned char, unsigned int, unsigned int);
signed int (*v24) (unsigned char, unsigned int, unsigned int) = v23;
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern signed int v27 (signed short, unsigned char, signed char);
extern signed int (*v28) (signed short, unsigned char, signed char);
extern unsigned short v29 (unsigned int, unsigned short, unsigned char);
extern unsigned short (*v30) (unsigned int, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v76 = -1;
signed int v75 = -3;
signed short v74 = 3;

signed int v23 (unsigned char v77, unsigned int v78, unsigned int v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 4;
signed short v81 = -2;
unsigned short v80 = 1;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v83;
unsigned short v84;
unsigned char v85;
unsigned short v86;
v83 = 4U + v78;
v84 = 0 + v80;
v85 = v77 + 0;
v86 = v29 (v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 6: 
{
unsigned int v87;
unsigned short v88;
unsigned char v89;
unsigned short v90;
v87 = 2U + v79;
v88 = v82 - v80;
v89 = 4 - 2;
v90 = v29 (v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}

unsigned char v9 (signed int v91, unsigned short v92, unsigned short v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned short v96 = 3;
signed char v95 = 2;
signed char v94 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed int v97, signed char v98, signed char v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 1;
unsigned char v101 = 3;
unsigned short v100 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
