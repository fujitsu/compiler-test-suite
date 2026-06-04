#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (unsigned short, unsigned char, signed int, unsigned int);
extern signed int (*v4) (unsigned short, unsigned char, signed int, unsigned int);
extern signed int v5 (unsigned short, unsigned int, unsigned int);
extern signed int (*v6) (unsigned short, unsigned int, unsigned int);
extern signed char v7 (signed int);
extern signed char (*v8) (signed int);
extern void v9 (signed short, unsigned short);
extern void (*v10) (signed short, unsigned short);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
unsigned short v13 (signed int, unsigned char);
unsigned short (*v14) (signed int, unsigned char) = v13;
extern unsigned int v15 (unsigned short, unsigned char);
extern unsigned int (*v16) (unsigned short, unsigned char);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
signed char v19 (unsigned short, unsigned char);
signed char (*v20) (unsigned short, unsigned char) = v19;
signed short v21 (signed short, unsigned int, unsigned char, signed short);
signed short (*v22) (signed short, unsigned int, unsigned char, signed short) = v21;
extern unsigned char v23 (signed short, unsigned int, signed int);
extern unsigned char (*v24) (signed short, unsigned int, signed int);
extern void v25 (unsigned int, signed char);
extern void (*v26) (unsigned int, signed char);
extern signed char v27 (signed char, unsigned char, signed short);
extern signed char (*v28) (signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v87 = -2;
signed short v86 = 0;
unsigned char v85 = 5;

signed short v21 (signed short v88, unsigned int v89, unsigned char v90, signed short v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 1;
signed short v93 = 1;
signed short v92 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned short v95, unsigned char v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = 0;
signed int v98 = -4;
unsigned short v97 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed int v100, unsigned char v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 6;
unsigned char v103 = 5;
signed char v102 = -1;
trace++;
switch (trace)
{
case 8: 
{
signed char v105;
unsigned char v106;
signed short v107;
signed char v108;
v105 = 3 + -3;
v106 = v104 - v104;
v107 = -3 + -3;
v108 = v27 (v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 10: 
return 5;
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
unsigned short v111 = 3;
unsigned char v110 = 5;
signed int v109 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
