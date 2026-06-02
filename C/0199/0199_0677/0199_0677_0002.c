#include <stdlib.h>
extern signed int v1 (unsigned int, signed char, unsigned char, unsigned char);
extern signed int (*v2) (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern unsigned char v5 (signed short, signed short, signed char);
extern unsigned char (*v6) (signed short, signed short, signed char);
unsigned char v7 (unsigned int);
unsigned char (*v8) (unsigned int) = v7;
extern void v9 (unsigned char, signed char, signed short, unsigned int);
extern void (*v10) (unsigned char, signed char, signed short, unsigned int);
extern signed short v11 (signed int, unsigned short, unsigned int);
extern signed short (*v12) (signed int, unsigned short, unsigned int);
extern signed int v13 (signed char, signed short, unsigned int);
extern signed int (*v14) (signed char, signed short, unsigned int);
signed int v15 (signed char, signed int, unsigned short);
signed int (*v16) (signed char, signed int, unsigned short) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned int v19 (signed char, signed int);
extern unsigned int (*v20) (signed char, signed int);
extern unsigned int v21 (unsigned char, signed int, unsigned char, unsigned short);
extern unsigned int (*v22) (unsigned char, signed int, unsigned char, unsigned short);
extern signed short v23 (unsigned short, unsigned char);
extern signed short (*v24) (unsigned short, unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed char v27 (signed short, unsigned int, signed char);
extern signed char (*v28) (signed short, unsigned int, signed char);
extern unsigned int v29 (signed char, signed int, unsigned short);
extern unsigned int (*v30) (signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v81 = 6;
unsigned int v80 = 4U;
unsigned char v79 = 6;

signed int v15 (signed char v82, signed int v83, unsigned short v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 3;
unsigned int v86 = 4U;
signed char v85 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed short v88;
unsigned int v89;
signed char v90;
signed char v91;
v88 = 0 + 2;
v89 = 2U + v86;
v90 = v85 + -2;
v91 = v27 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 3: 
{
signed char v92;
signed int v93;
unsigned short v94;
unsigned int v95;
v92 = v82 - v85;
v93 = v83 - v83;
v94 = 5 - v84;
v95 = v29 (v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 5: 
{
unsigned char v96;
signed int v97;
unsigned char v98;
unsigned short v99;
unsigned int v100;
v96 = 2 + 0;
v97 = v87 - v83;
v98 = 1 + 6;
v99 = 5 - v84;
v100 = v21 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 7: 
{
unsigned char v101;
signed int v102;
unsigned char v103;
unsigned short v104;
unsigned int v105;
v101 = 4 - 6;
v102 = v87 + v83;
v103 = 1 - 0;
v104 = v84 - 6;
v105 = v21 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 13: 
return v87;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
unsigned short v109 = 1;
signed char v108 = -3;
signed char v107 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
