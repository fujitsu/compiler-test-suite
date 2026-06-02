#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
extern unsigned char v3 (signed int, signed char, signed char);
extern unsigned char (*v4) (signed int, signed char, signed char);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned int v7 (signed int, signed char, signed short);
extern unsigned int (*v8) (signed int, signed char, signed short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
void v11 (signed char);
void (*v12) (signed char) = v11;
unsigned char v13 (signed int);
unsigned char (*v14) (signed int) = v13;
signed short v15 (unsigned int);
signed short (*v16) (unsigned int) = v15;
extern unsigned char v17 (unsigned char, unsigned char, signed char);
extern unsigned char (*v18) (unsigned char, unsigned char, signed char);
extern signed char v19 (signed short, unsigned short, unsigned short);
extern signed char (*v20) (signed short, unsigned short, unsigned short);
extern unsigned int v21 (signed short, unsigned int, signed char);
extern unsigned int (*v22) (signed short, unsigned int, signed char);
extern unsigned char v23 (unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, signed int);
extern unsigned char v25 (signed short, unsigned short, signed char, unsigned short);
extern unsigned char (*v26) (signed short, unsigned short, signed char, unsigned short);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v82 = 7U;
unsigned short v81 = 1;
signed char v80 = 0;

signed short v15 (unsigned int v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 1;
signed short v85 = 3;
signed short v84 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed int v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 5U;
unsigned char v89 = 0;
unsigned char v88 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 6U;
signed int v93 = -4;
signed int v92 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
signed int v97 = 2;
unsigned short v96 = 5;
unsigned int v95 = 7U;
trace++;
switch (trace)
{
case 1: 
{
signed short v98;
unsigned int v99;
signed char v100;
unsigned int v101;
v98 = 0 + -4;
v99 = v95 - v95;
v100 = -1 - -4;
v101 = v21 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 5: 
{
signed short v102;
unsigned short v103;
signed char v104;
unsigned short v105;
unsigned char v106;
v102 = 2 - 2;
v103 = 7 - v96;
v104 = -4 + 0;
v105 = 2 + 7;
v106 = v25 (v102, v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 9: 
{
signed short v107;
unsigned short v108;
signed char v109;
unsigned short v110;
unsigned char v111;
v107 = -4 + -1;
v108 = 4 - v96;
v109 = 2 + -3;
v110 = 6 - v96;
v111 = v25 (v107, v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 11: 
return v95;
default: abort ();
}
}
}
}
