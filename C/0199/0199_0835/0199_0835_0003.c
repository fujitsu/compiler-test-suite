#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short);
extern unsigned short (*v2) (unsigned short, unsigned short);
extern void v3 (void);
extern void (*v4) (void);
extern signed char v5 (signed char, signed short, unsigned int, unsigned int);
extern signed char (*v6) (signed char, signed short, unsigned int, unsigned int);
extern unsigned short v7 (unsigned int, unsigned short);
extern unsigned short (*v8) (unsigned int, unsigned short);
extern void v9 (void);
extern void (*v10) (void);
extern void v11 (signed int, signed short, signed char, unsigned char);
extern void (*v12) (signed int, signed short, signed char, unsigned char);
unsigned char v13 (signed char);
unsigned char (*v14) (signed char) = v13;
extern void v17 (signed int, unsigned char);
extern void (*v18) (signed int, unsigned char);
extern signed char v19 (signed char, unsigned int, signed int, unsigned short);
extern signed char (*v20) (signed char, unsigned int, signed int, unsigned short);
void v21 (unsigned char, unsigned int, unsigned int, signed short);
void (*v22) (unsigned char, unsigned int, unsigned int, signed short) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
extern unsigned int v27 (signed char, unsigned short, unsigned int, unsigned char);
extern unsigned int (*v28) (signed char, unsigned short, unsigned int, unsigned char);
extern void v29 (unsigned int, unsigned char, unsigned char);
extern void (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v83 = -1;
signed int v82 = -4;
unsigned char v81 = 0;

void v21 (unsigned char v84, unsigned int v85, unsigned int v86, signed short v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 3;
signed short v89 = -1;
signed int v88 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed char v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = -1;
signed char v93 = 2;
signed int v92 = 2;
trace++;
switch (trace)
{
case 2: 
return 6;
case 4: 
{
signed char v95;
v95 = v23 ();
history[history_index++] = (int)v95;
}
break;
case 6: 
{
signed char v96;
v96 = v23 ();
history[history_index++] = (int)v96;
}
break;
case 8: 
{
unsigned int v97;
unsigned char v98;
unsigned char v99;
v97 = 4U + 7U;
v98 = 3 + 5;
v99 = 1 + 6;
v29 (v97, v98, v99);
}
break;
case 10: 
{
signed char v100;
v100 = v23 ();
history[history_index++] = (int)v100;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
