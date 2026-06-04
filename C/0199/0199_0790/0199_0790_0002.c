#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned short, unsigned char);
extern signed int (*v2) (unsigned int, unsigned short, unsigned char);
extern signed char v3 (unsigned short, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char);
extern unsigned int v5 (signed short, unsigned char, unsigned char);
extern unsigned int (*v6) (signed short, unsigned char, unsigned char);
extern unsigned char v7 (unsigned char, signed short, unsigned int);
extern unsigned char (*v8) (unsigned char, signed short, unsigned int);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (unsigned short, signed short);
extern signed char (*v14) (unsigned short, signed short);
signed int v15 (signed short, signed int, signed char, signed short);
signed int (*v16) (signed short, signed int, signed char, signed short) = v15;
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern signed short v19 (signed char, signed int);
extern signed short (*v20) (signed char, signed int);
extern signed int v21 (signed char, unsigned char);
extern signed int (*v22) (signed char, unsigned char);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
void v25 (unsigned int, unsigned int, unsigned int);
void (*v26) (unsigned int, unsigned int, unsigned int) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned char v29 (signed int, signed short);
extern unsigned char (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v84 = 1;
unsigned short v83 = 0;
signed short v82 = -2;

void v25 (unsigned int v85, unsigned int v86, unsigned int v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = 1;
signed char v89 = 0;
signed char v88 = -2;
trace++;
switch (trace)
{
case 6: 
return;
default: abort ();
}
}
}
}

signed int v15 (signed short v91, signed int v92, signed char v93, signed short v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = 2;
unsigned short v96 = 5;
signed char v95 = 1;
trace++;
switch (trace)
{
case 8: 
{
signed int v98;
unsigned int v99;
v98 = v92 - v92;
v99 = v23 (v98);
history[history_index++] = (int)v99;
}
break;
case 10: 
{
signed int v100;
unsigned int v101;
v100 = 1 - v92;
v101 = v23 (v100);
history[history_index++] = (int)v101;
}
break;
case 12: 
return v92;
default: abort ();
}
}
}
}
