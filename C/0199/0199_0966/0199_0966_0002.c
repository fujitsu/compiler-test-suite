#include <stdlib.h>
signed int v1 (signed char, unsigned int, signed short, signed short);
signed int (*v2) (signed char, unsigned int, signed short, signed short) = v1;
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (signed short, signed int, unsigned char);
extern unsigned short (*v8) (signed short, signed int, unsigned char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned int (*v12) (unsigned char, unsigned int, unsigned char, unsigned short);
extern signed char v13 (signed int, unsigned int);
extern signed char (*v14) (signed int, unsigned int);
extern unsigned char v15 (unsigned int, signed int, signed char);
extern unsigned char (*v16) (unsigned int, signed int, signed char);
extern signed int v17 (signed int, unsigned int, signed short);
extern signed int (*v18) (signed int, unsigned int, signed short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (unsigned char, signed int);
extern unsigned short (*v22) (unsigned char, signed int);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
extern unsigned char v27 (signed int, signed char, unsigned int, unsigned int);
extern unsigned char (*v28) (signed int, signed char, unsigned int, unsigned int);
extern unsigned char v29 (unsigned short);
extern unsigned char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v86 = 0;
signed short v85 = 1;
signed char v84 = 1;

signed int v1 (signed char v87, unsigned int v88, signed short v89, signed short v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = -3;
signed short v92 = -2;
unsigned int v91 = 2U;
trace++;
switch (trace)
{
case 0: 
{
signed int v94;
v94 = v19 ();
history[history_index++] = (int)v94;
}
break;
case 2: 
{
unsigned int v95;
signed int v96;
signed char v97;
unsigned char v98;
v95 = 7U + v88;
v96 = -3 + 1;
v97 = v87 + v87;
v98 = v15 (v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
