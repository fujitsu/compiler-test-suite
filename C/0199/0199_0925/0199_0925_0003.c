#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
static signed int v3 (unsigned short);
static signed int (*v4) (unsigned short) = v3;
extern unsigned char v5 (signed int, unsigned int, unsigned int);
extern unsigned char (*v6) (signed int, unsigned int, unsigned int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed short v13 (unsigned short, signed int, signed char, signed short);
extern signed short (*v14) (unsigned short, signed int, signed char, signed short);
extern void v15 (unsigned short, unsigned int, unsigned short);
extern void (*v16) (unsigned short, unsigned int, unsigned short);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern unsigned char v21 (signed short, signed int);
extern unsigned char (*v22) (signed short, signed int);
extern unsigned int v23 (unsigned char, signed int, unsigned short, signed int);
extern unsigned int (*v24) (unsigned char, signed int, unsigned short, signed int);
signed char v25 (unsigned short, signed char, signed int, signed int);
signed char (*v26) (unsigned short, signed char, signed int, signed int) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern unsigned char v29 (signed int, unsigned char, signed char);
extern unsigned char (*v30) (signed int, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v81 = 0;
unsigned int v80 = 1U;
unsigned char v79 = 4;

signed char v25 (unsigned short v82, signed char v83, signed int v84, signed int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -1;
signed short v87 = 0;
unsigned char v86 = 4;
trace++;
switch (trace)
{
case 11: 
return -2;
default: abort ();
}
}
}
}

static signed int v3 (unsigned short v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 5;
unsigned int v91 = 7U;
unsigned char v90 = 6;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v93;
signed int v94;
unsigned short v95;
signed int v96;
unsigned int v97;
v93 = 7 + 4;
v94 = -4 + 0;
v95 = v89 + v89;
v96 = -3 - -1;
v97 = v23 (v93, v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 3: 
{
unsigned short v98;
signed int v99;
signed char v100;
signed short v101;
signed short v102;
v98 = v89 - 5;
v99 = -4 - 2;
v100 = 1 - -1;
v101 = 1 - 3;
v102 = v13 (v98, v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 5: 
{
unsigned int v103;
v103 = 1U - v91;
v17 (v103);
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned short v106 = 4;
unsigned int v105 = 7U;
unsigned char v104 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v107;
signed int v108;
v107 = v106 - 5;
v108 = v3 (v107);
history[history_index++] = (int)v108;
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}
