#include <stdlib.h>
signed short v1 (unsigned char, unsigned char, signed char, signed char);
signed short (*v2) (unsigned char, unsigned char, signed char, signed char) = v1;
static void v3 (signed char, signed int, signed int);
static void (*v4) (signed char, signed int, signed int) = v3;
extern unsigned short v5 (unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned int, unsigned short);
extern unsigned char v7 (unsigned int, signed int, unsigned short, signed short);
extern unsigned char (*v8) (unsigned int, signed int, unsigned short, signed short);
extern signed int v9 (unsigned short, signed short, signed char, signed short);
extern signed int (*v10) (unsigned short, signed short, signed char, signed short);
extern void v11 (signed short, unsigned short, signed char, signed short);
extern void (*v12) (signed short, unsigned short, signed char, signed short);
extern void v13 (signed short, unsigned short);
extern void (*v14) (signed short, unsigned short);
extern unsigned char v15 (unsigned int, signed char);
extern unsigned char (*v16) (unsigned int, signed char);
extern void v17 (signed int, signed char, unsigned char, unsigned int);
extern void (*v18) (signed int, signed char, unsigned char, unsigned int);
extern signed short v19 (signed short, signed char);
extern signed short (*v20) (signed short, signed char);
extern signed char v21 (signed int, signed int, signed int, unsigned short);
extern signed char (*v22) (signed int, signed int, signed int, unsigned short);
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
extern signed int v25 (unsigned short, signed short, unsigned int, signed char);
extern signed int (*v26) (unsigned short, signed short, unsigned int, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (unsigned short, unsigned short);
extern signed char (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v83 = -2;
unsigned short v82 = 5;
unsigned short v81 = 4;

static void v3 (signed char v84, signed int v85, signed int v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = -1;
signed int v88 = 3;
unsigned short v87 = 4;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v90;
signed short v91;
signed short v92;
v90 = 1U + 0U;
v91 = 2 + 1;
v92 = v23 (v90, v91);
history[history_index++] = (int)v92;
}
break;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

signed short v1 (unsigned char v93, unsigned char v94, signed char v95, signed char v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 4;
signed short v98 = 1;
unsigned char v97 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed char v100;
signed int v101;
signed int v102;
v100 = -4 + v95;
v101 = -1 - -4;
v102 = -4 + 0;
v3 (v100, v101, v102);
}
break;
case 10: 
{
signed char v103;
signed int v104;
signed int v105;
v103 = v96 + v95;
v104 = -4 + -2;
v105 = -2 + -2;
v3 (v103, v104, v105);
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
