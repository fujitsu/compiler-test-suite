#include <stdlib.h>
signed short v1 (unsigned int);
signed short (*v2) (unsigned int) = v1;
extern unsigned short v3 (signed int, unsigned int);
extern unsigned short (*v4) (signed int, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed int v7 (signed char, signed char, signed int);
extern signed int (*v8) (signed char, signed char, signed int);
extern unsigned int v9 (unsigned short, unsigned short, signed int);
extern unsigned int (*v10) (unsigned short, unsigned short, signed int);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed char v13 (unsigned char, unsigned short);
extern signed char (*v14) (unsigned char, unsigned short);
extern unsigned int v17 (signed char, unsigned char, signed int);
extern unsigned int (*v18) (signed char, unsigned char, signed int);
extern signed short v19 (unsigned int, signed int);
extern signed short (*v20) (unsigned int, signed int);
extern unsigned int v21 (unsigned int, signed char);
extern unsigned int (*v22) (unsigned int, signed char);
extern signed short v23 (signed int, signed int, unsigned short);
extern signed short (*v24) (signed int, signed int, unsigned short);
extern signed short v25 (unsigned int, unsigned short);
extern signed short (*v26) (unsigned int, unsigned short);
extern unsigned short v27 (signed char, signed char, signed char);
extern unsigned short (*v28) (signed char, signed char, signed char);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v82 = 3;
unsigned int v81 = 5U;
unsigned int v80 = 5U;

signed short v1 (unsigned int v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 2;
signed short v85 = 1;
unsigned int v84 = 0U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v87;
unsigned short v88;
signed char v89;
v87 = 6 + 4;
v88 = 3 - 3;
v89 = v13 (v87, v88);
history[history_index++] = (int)v89;
}
break;
case 4: 
{
unsigned char v90;
unsigned short v91;
signed char v92;
v90 = 3 + 4;
v91 = 0 + 5;
v92 = v13 (v90, v91);
history[history_index++] = (int)v92;
}
break;
case 6: 
{
unsigned int v93;
signed char v94;
unsigned int v95;
v93 = 4U - v83;
v94 = -2 + 3;
v95 = v21 (v93, v94);
history[history_index++] = (int)v95;
}
break;
case 8: 
{
unsigned short v96;
unsigned short v97;
signed int v98;
unsigned int v99;
v96 = 1 - 1;
v97 = 4 + 4;
v98 = 3 + -1;
v99 = v9 (v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 10: 
{
signed int v100;
unsigned int v101;
unsigned short v102;
v100 = 0 - 3;
v101 = v83 + 2U;
v102 = v3 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
