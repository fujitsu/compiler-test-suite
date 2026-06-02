#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned char, signed char, signed char);
extern signed int (*v2) (unsigned short, unsigned char, signed char, signed char);
extern unsigned short v3 (signed short);
extern unsigned short (*v4) (signed short);
extern signed char v5 (signed int, unsigned short);
extern signed char (*v6) (signed int, unsigned short);
signed char v7 (unsigned int, unsigned short, unsigned int);
signed char (*v8) (unsigned int, unsigned short, unsigned int) = v7;
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
extern signed short v11 (unsigned short, unsigned char, unsigned int, unsigned int);
extern signed short (*v12) (unsigned short, unsigned char, unsigned int, unsigned int);
extern signed int v13 (signed char, signed int, unsigned short, signed char);
extern signed int (*v14) (signed char, signed int, unsigned short, signed char);
extern signed int v15 (unsigned char, signed short);
extern signed int (*v16) (unsigned char, signed short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern void v23 (unsigned int, signed short, signed char, unsigned char);
extern void (*v24) (unsigned int, signed short, signed char, unsigned char);
unsigned int v25 (signed int);
unsigned int (*v26) (signed int) = v25;
extern unsigned char v27 (signed char, unsigned short, unsigned int);
extern unsigned char (*v28) (signed char, unsigned short, unsigned int);
extern signed char v29 (signed char, signed int);
extern signed char (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v85 = 0;
unsigned int v84 = 5U;
signed int v83 = -3;

unsigned int v25 (signed int v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = -3;
signed int v88 = -4;
unsigned short v87 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned int v90, unsigned short v91, unsigned int v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = 3;
unsigned int v94 = 2U;
unsigned int v93 = 4U;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v96;
unsigned char v97;
unsigned int v98;
unsigned int v99;
signed short v100;
v96 = v91 + 5;
v97 = 2 + 6;
v98 = v93 + v93;
v99 = v94 - v92;
v100 = v11 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 9: 
{
unsigned short v101;
unsigned char v102;
unsigned int v103;
unsigned int v104;
signed short v105;
v101 = 1 + v91;
v102 = 1 + 3;
v103 = v94 - 3U;
v104 = v92 - v94;
v105 = v11 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}
