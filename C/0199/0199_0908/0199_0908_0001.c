#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned short, signed int, unsigned short);
extern signed int (*v2) (unsigned char, unsigned short, signed int, unsigned short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned int v5 (unsigned short, signed char, unsigned short);
extern unsigned int (*v6) (unsigned short, signed char, unsigned short);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed int v11 (signed int, unsigned short, unsigned short);
extern signed int (*v12) (signed int, unsigned short, unsigned short);
extern signed char v13 (unsigned int);
extern signed char (*v14) (unsigned int);
signed int v15 (unsigned char, signed int);
signed int (*v16) (unsigned char, signed int) = v15;
extern void v17 (signed short, signed int, signed short, signed int);
extern void (*v18) (signed short, signed int, signed short, signed int);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed char v21 (unsigned int, unsigned int, signed char, unsigned char);
extern signed char (*v22) (unsigned int, unsigned int, signed char, unsigned char);
extern signed int v23 (unsigned char, signed short);
extern signed int (*v24) (unsigned char, signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (signed int, unsigned char);
extern unsigned int (*v28) (signed int, unsigned char);
extern signed char v29 (unsigned short, unsigned char);
extern signed char (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v90 = 2;
signed char v89 = 0;
signed short v88 = 0;

signed int v15 (unsigned char v91, signed int v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = -4;
unsigned char v94 = 6;
signed short v93 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v96;
signed char v97;
unsigned short v98;
unsigned int v99;
v96 = 2 - 4;
v97 = 0 - 3;
v98 = 6 + 1;
v99 = v5 (v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 3: 
{
unsigned short v100;
signed char v101;
unsigned short v102;
unsigned int v103;
v100 = 1 - 6;
v101 = -4 - 0;
v102 = 3 - 5;
v103 = v5 (v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 5: 
{
signed short v104;
signed int v105;
signed short v106;
signed int v107;
v104 = -2 - -1;
v105 = v92 - v95;
v106 = 1 + v93;
v107 = -1 + -1;
v17 (v104, v105, v106, v107);
}
break;
case 7: 
{
signed short v108;
signed int v109;
signed short v110;
signed int v111;
v108 = v93 + v93;
v109 = -4 + v95;
v110 = v93 - v93;
v111 = v95 - v95;
v17 (v108, v109, v110, v111);
}
break;
case 13: 
return v92;
default: abort ();
}
}
}
}
