#include <stdlib.h>
signed char v1 (signed int);
signed char (*v2) (signed int) = v1;
extern void v3 (unsigned char, unsigned short);
extern void (*v4) (unsigned char, unsigned short);
extern unsigned short v5 (signed char, signed int, unsigned short, signed int);
extern unsigned short (*v6) (signed char, signed int, unsigned short, signed int);
extern void v7 (unsigned int);
extern void (*v8) (unsigned int);
unsigned int v9 (signed short, signed int);
unsigned int (*v10) (signed short, signed int) = v9;
extern signed char v11 (unsigned char, unsigned int);
extern signed char (*v12) (unsigned char, unsigned int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (unsigned short, signed short);
extern unsigned short (*v16) (unsigned short, signed short);
extern signed short v17 (unsigned char, unsigned int, signed char, unsigned int);
extern signed short (*v18) (unsigned char, unsigned int, signed char, unsigned int);
signed char v19 (signed char, unsigned short);
signed char (*v20) (signed char, unsigned short) = v19;
unsigned short v21 (unsigned short);
unsigned short (*v22) (unsigned short) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
extern signed int v25 (unsigned char, signed char, signed char);
extern signed int (*v26) (unsigned char, signed char, signed char);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v82 = 3;
signed short v81 = 2;
unsigned int v80 = 2U;

signed int v27 (void)
{
{
for (;;) {
signed char v85 = 2;
unsigned char v84 = 2;
signed int v83 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 5;
signed short v88 = -4;
unsigned int v87 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed char v90, unsigned short v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -1;
unsigned char v93 = 0;
unsigned int v92 = 2U;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v95;
signed char v96;
v95 = 1 + 1;
v96 = v29 (v95);
history[history_index++] = (int)v96;
}
break;
case 12: 
return v90;
default: abort ();
}
}
}
}

unsigned int v9 (signed short v97, signed int v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = 0;
unsigned char v100 = 1;
unsigned short v99 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed int v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
unsigned short v105 = 4;
signed int v104 = 3;
unsigned int v103 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v106;
unsigned short v107;
v106 = 0 + 6;
v107 = 2 + v105;
v3 (v106, v107);
}
break;
case 2: 
{
unsigned char v108;
unsigned short v109;
v108 = 3 - 0;
v109 = v105 - 3;
v3 (v108, v109);
}
break;
case 18: 
return -1;
default: abort ();
}
}
}
}
