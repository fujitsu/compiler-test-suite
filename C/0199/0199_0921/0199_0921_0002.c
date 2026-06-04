#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, unsigned int);
extern unsigned char (*v2) (unsigned short, unsigned char, unsigned int);
extern unsigned char v3 (unsigned int, signed char, signed char, signed short);
extern unsigned char (*v4) (unsigned int, signed char, signed char, signed short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed int v7 (signed int, signed char, unsigned int);
extern signed int (*v8) (signed int, signed char, unsigned int);
extern unsigned char v9 (signed int, unsigned short, signed short, signed char);
extern unsigned char (*v10) (signed int, unsigned short, signed short, signed char);
extern signed char v11 (signed char);
extern signed char (*v12) (signed char);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern void v15 (unsigned int, unsigned int, unsigned char, signed char);
extern void (*v16) (unsigned int, unsigned int, unsigned char, signed char);
unsigned int v17 (unsigned char, signed int);
unsigned int (*v18) (unsigned char, signed int) = v17;
extern signed short v19 (signed short);
extern signed short (*v20) (signed short);
signed char v21 (void);
signed char (*v22) (void) = v21;
extern void v23 (unsigned short, unsigned char, unsigned short, unsigned int);
extern void (*v24) (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned char v25 (unsigned short, signed char);
extern unsigned char (*v26) (unsigned short, signed char);
signed char v27 (unsigned short, unsigned short, signed short, signed char);
signed char (*v28) (unsigned short, unsigned short, signed short, signed char) = v27;
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v76 = 4U;
signed short v75 = -2;
unsigned char v74 = 7;

signed char v27 (unsigned short v77, unsigned short v78, signed short v79, signed char v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = -2;
unsigned short v82 = 5;
signed int v81 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
signed char v86 = -2;
unsigned int v85 = 3U;
unsigned int v84 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned char v87, signed int v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 1;
unsigned char v90 = 6;
signed short v89 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
unsigned int v94 = 3U;
unsigned char v93 = 6;
unsigned short v92 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed int v95;
unsigned short v96;
signed short v97;
signed char v98;
unsigned char v99;
v95 = -1 + -2;
v96 = v92 - 7;
v97 = 0 - -3;
v98 = -4 - -3;
v99 = v9 (v95, v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 7: 
{
signed int v100;
unsigned short v101;
signed short v102;
signed char v103;
unsigned char v104;
v100 = 3 - 3;
v101 = 7 - 6;
v102 = 2 + -4;
v103 = 3 - -1;
v104 = v9 (v100, v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}
