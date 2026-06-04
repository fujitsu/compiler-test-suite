#include <stdlib.h>
unsigned short v3 (unsigned char, signed char, signed char, signed short);
unsigned short (*v4) (unsigned char, signed char, signed char, signed short) = v3;
void v5 (unsigned short, signed short, signed short, unsigned short);
void (*v6) (unsigned short, signed short, signed short, unsigned short) = v5;
signed short v7 (unsigned short);
signed short (*v8) (unsigned short) = v7;
extern unsigned int v9 (unsigned short, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned short, unsigned char, unsigned int);
extern signed short v11 (signed char, signed int, signed int);
extern signed short (*v12) (signed char, signed int, signed int);
extern signed short v13 (signed int, unsigned int, unsigned int);
extern signed short (*v14) (signed int, unsigned int, unsigned int);
extern signed short v15 (signed char, signed short, signed char, unsigned char);
extern signed short (*v16) (signed char, signed short, signed char, unsigned char);
extern unsigned char v17 (signed short, signed char, unsigned int);
extern unsigned char (*v18) (signed short, signed char, unsigned int);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern signed int v21 (unsigned short, unsigned short, signed char, signed short);
extern signed int (*v22) (unsigned short, unsigned short, signed char, signed short);
extern unsigned char v23 (signed char, signed int);
extern unsigned char (*v24) (signed char, signed int);
extern unsigned short v25 (signed short, unsigned int, signed char);
extern unsigned short (*v26) (signed short, unsigned int, signed char);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (unsigned char, signed short, signed int, unsigned char);
extern void (*v30) (unsigned char, signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v80 = -3;
signed short v79 = -2;
unsigned char v78 = 0;

signed short v7 (unsigned short v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 7;
unsigned short v83 = 5;
signed char v82 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v85, signed short v86, signed short v87, unsigned short v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = 2;
unsigned int v90 = 7U;
unsigned short v89 = 2;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v92;
unsigned short v93;
unsigned char v94;
unsigned int v95;
unsigned int v96;
v92 = v89 + v85;
v93 = 4 + v89;
v94 = 1 - 4;
v95 = v90 + 7U;
v96 = v9 (v92, v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v97, signed char v98, signed char v99, signed short v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned short v103 = 1;
signed int v102 = -1;
signed short v101 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
