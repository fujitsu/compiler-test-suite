#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char, signed int, signed char);
extern unsigned char (*v2) (unsigned int, signed char, signed int, signed char);
signed char v5 (void);
signed char (*v6) (void) = v5;
unsigned char v7 (unsigned short);
unsigned char (*v8) (unsigned short) = v7;
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
extern unsigned int v13 (unsigned char, unsigned short, signed char, unsigned int);
extern unsigned int (*v14) (unsigned char, unsigned short, signed char, unsigned int);
signed char v15 (signed int);
signed char (*v16) (signed int) = v15;
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
extern signed int v21 (signed char);
extern signed int (*v22) (signed char);
unsigned char v23 (signed int, signed char, signed char);
unsigned char (*v24) (signed int, signed char, signed char) = v23;
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (signed short, unsigned char, unsigned char, signed int);
extern unsigned int (*v28) (signed short, unsigned char, unsigned char, signed int);
extern signed int v29 (signed char);
extern signed int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v84 = 0;
unsigned short v83 = 0;
unsigned char v82 = 4;

unsigned char v23 (signed int v85, signed char v86, signed char v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = 0;
signed short v89 = -1;
signed short v88 = 1;
trace++;
switch (trace)
{
case 4: 
{
signed short v91;
unsigned char v92;
unsigned char v93;
signed int v94;
unsigned int v95;
v91 = v89 - v88;
v92 = 3 + 5;
v93 = 1 - 7;
v94 = v90 - v90;
v95 = v27 (v91, v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 6: 
{
v25 ();
}
break;
case 8: 
return 6;
default: abort ();
}
}
}
}

signed char v15 (signed int v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 0;
unsigned short v98 = 7;
unsigned char v97 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
unsigned int v103 = 6U;
signed char v102 = -3;
signed char v101 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned char v106 = 5;
signed short v105 = 1;
unsigned int v104 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
