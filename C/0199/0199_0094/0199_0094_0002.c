#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
unsigned char v3 (signed short, unsigned char);
unsigned char (*v4) (signed short, unsigned char) = v3;
extern signed char v5 (unsigned short, unsigned short);
extern signed char (*v6) (unsigned short, unsigned short);
static unsigned int v7 (unsigned int, signed char, unsigned char);
static unsigned int (*v8) (unsigned int, signed char, unsigned char) = v7;
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
void v11 (signed int, unsigned short, signed short, signed char);
void (*v12) (signed int, unsigned short, signed short, signed char) = v11;
extern unsigned short v13 (signed int, unsigned char);
extern unsigned short (*v14) (signed int, unsigned char);
extern unsigned char v15 (signed int, signed char, unsigned short);
extern unsigned char (*v16) (signed int, signed char, unsigned short);
extern void v17 (unsigned short, signed char, unsigned short, signed int);
extern void (*v18) (unsigned short, signed char, unsigned short, signed int);
extern void v19 (signed int, signed int, signed short, signed int);
extern void (*v20) (signed int, signed int, signed short, signed int);
extern unsigned int v21 (signed char, unsigned char, signed short);
extern unsigned int (*v22) (signed char, unsigned char, signed short);
extern unsigned char v23 (signed char);
extern unsigned char (*v24) (signed char);
extern signed int v25 (signed char, signed int, signed short);
extern signed int (*v26) (signed char, signed int, signed short);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v72 = -3;
signed short v71 = 3;
signed short v70 = -4;

void v11 (signed int v73, unsigned short v74, signed short v75, signed char v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -2;
unsigned int v78 = 2U;
signed short v77 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v7 (unsigned int v80, signed char v81, unsigned char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed char v85 = -1;
unsigned short v84 = 6;
unsigned short v83 = 6;
trace++;
switch (trace)
{
case 1: 
{
signed int v86;
signed int v87;
signed short v88;
signed int v89;
v86 = -4 - 0;
v87 = 3 + 0;
v88 = -2 - 2;
v89 = 0 + 2;
v19 (v86, v87, v88, v89);
}
break;
case 3: 
return 7U;
default: abort ();
}
}
}
}

unsigned char v3 (signed short v90, unsigned char v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -2;
unsigned short v93 = 3;
signed int v92 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed char v97 = -4;
unsigned int v96 = 7U;
signed char v95 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v98;
signed char v99;
unsigned char v100;
unsigned int v101;
v98 = v96 - 5U;
v99 = v97 + 1;
v100 = 7 - 0;
v101 = v7 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 4: 
{
signed int v102;
unsigned char v103;
unsigned short v104;
v102 = 0 - 0;
v103 = 5 + 7;
v104 = v13 (v102, v103);
history[history_index++] = (int)v104;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
