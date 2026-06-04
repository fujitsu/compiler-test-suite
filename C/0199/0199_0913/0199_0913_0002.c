#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (unsigned short, signed int, unsigned short, signed int);
extern unsigned short (*v4) (unsigned short, signed int, unsigned short, signed int);
extern unsigned int v5 (unsigned int, unsigned short, signed char, unsigned char);
extern unsigned int (*v6) (unsigned int, unsigned short, signed char, unsigned char);
extern signed char v7 (unsigned char, unsigned short, unsigned int, unsigned short);
extern signed char (*v8) (unsigned char, unsigned short, unsigned int, unsigned short);
extern unsigned short v9 (unsigned char, unsigned short, signed short);
extern unsigned short (*v10) (unsigned char, unsigned short, signed short);
extern unsigned int v11 (unsigned int);
extern unsigned int (*v12) (unsigned int);
signed short v13 (unsigned char);
signed short (*v14) (unsigned char) = v13;
extern void v15 (signed short);
extern void (*v16) (signed short);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (unsigned short, unsigned int, unsigned short, signed char);
extern signed short (*v20) (unsigned short, unsigned int, unsigned short, signed char);
signed int v21 (unsigned char, signed short, unsigned int, signed short);
signed int (*v22) (unsigned char, signed short, unsigned int, signed short) = v21;
extern unsigned int v23 (unsigned char, unsigned char);
extern unsigned int (*v24) (unsigned char, unsigned char);
static void v25 (signed int, signed char, unsigned char, unsigned char);
static void (*v26) (signed int, signed char, unsigned char, unsigned char) = v25;
void v27 (unsigned char);
void (*v28) (unsigned char) = v27;
extern void v29 (signed short, unsigned short, signed char, unsigned short);
extern void (*v30) (signed short, unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v78 = 7U;
signed short v77 = 1;
signed short v76 = 3;

void v27 (unsigned char v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 0;
unsigned char v81 = 1;
unsigned short v80 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed int v83;
signed char v84;
unsigned char v85;
unsigned char v86;
v83 = 1 - 2;
v84 = -2 - 3;
v85 = v79 + 3;
v86 = v81 - v79;
v25 (v83, v84, v85, v86);
}
break;
case 7: 
return;
default: abort ();
}
}
}
}

static void v25 (signed int v87, signed char v88, unsigned char v89, unsigned char v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 2;
unsigned int v92 = 5U;
signed char v91 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed short v94;
unsigned short v95;
signed char v96;
unsigned short v97;
v94 = -4 - 3;
v95 = 2 - 0;
v96 = v88 - v88;
v97 = 3 + 2;
v29 (v94, v95, v96, v97);
}
break;
case 4: 
{
signed short v98;
unsigned short v99;
signed char v100;
unsigned short v101;
v98 = -4 + 1;
v99 = 0 - 7;
v100 = v91 - v91;
v101 = 1 + 6;
v29 (v98, v99, v100, v101);
}
break;
case 6: 
return;
default: abort ();
}
}
}
}

signed int v21 (unsigned char v102, signed short v103, unsigned int v104, signed short v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = 3;
signed short v107 = -2;
unsigned short v106 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned char v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 7;
signed char v111 = -1;
unsigned int v110 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
