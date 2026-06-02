#include <stdlib.h>
extern signed int v3 (unsigned int, unsigned int, unsigned int, signed int);
extern signed int (*v4) (unsigned int, unsigned int, unsigned int, signed int);
extern unsigned char v5 (unsigned char);
extern unsigned char (*v6) (unsigned char);
signed char v7 (signed short, signed short, unsigned short, unsigned short);
signed char (*v8) (signed short, signed short, unsigned short, unsigned short) = v7;
extern signed char v9 (unsigned int, signed char, signed char, unsigned char);
extern signed char (*v10) (unsigned int, signed char, signed char, unsigned char);
extern void v11 (signed short, unsigned short, unsigned char, signed int);
extern void (*v12) (signed short, unsigned short, unsigned char, signed int);
extern signed int v13 (unsigned short, signed short);
extern signed int (*v14) (unsigned short, signed short);
extern unsigned char v15 (unsigned short, unsigned short, signed short, unsigned char);
extern unsigned char (*v16) (unsigned short, unsigned short, signed short, unsigned char);
signed char v17 (unsigned short);
signed char (*v18) (unsigned short) = v17;
extern signed int v19 (signed int, signed char, unsigned short, signed char);
extern signed int (*v20) (signed int, signed char, unsigned short, signed char);
extern unsigned int v21 (signed short);
extern unsigned int (*v22) (signed short);
extern signed int v23 (unsigned char, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int);
extern unsigned int v25 (signed short, unsigned char, signed short, unsigned short);
extern unsigned int (*v26) (signed short, unsigned char, signed short, unsigned short);
extern signed short v27 (signed int, signed char, signed int, signed char);
extern signed short (*v28) (signed int, signed char, signed int, signed char);
extern signed short v29 (signed int, unsigned short, unsigned char);
extern signed short (*v30) (signed int, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v82 = 6U;
signed char v81 = -1;
signed short v80 = 1;

signed char v17 (unsigned short v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -2;
signed char v85 = 3;
signed char v84 = -3;
trace++;
switch (trace)
{
case 2: 
return v85;
case 4: 
return v86;
case 11: 
return v85;
default: abort ();
}
}
}
}

signed char v7 (signed short v87, signed short v88, unsigned short v89, unsigned short v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = 3;
unsigned int v92 = 2U;
unsigned char v91 = 1;
trace++;
switch (trace)
{
case 7: 
{
signed short v94;
unsigned char v95;
signed short v96;
unsigned short v97;
unsigned int v98;
v94 = -3 + v87;
v95 = v91 - 0;
v96 = -4 - v87;
v97 = v89 - 3;
v98 = v25 (v94, v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 9: 
return -1;
default: abort ();
}
}
}
}
