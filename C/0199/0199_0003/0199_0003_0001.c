#include <stdlib.h>
extern void v1 (unsigned int, signed int);
extern void (*v2) (unsigned int, signed int);
extern signed int v3 (unsigned int, unsigned int, unsigned short);
extern signed int (*v4) (unsigned int, unsigned int, unsigned short);
unsigned int v5 (signed int, signed char, unsigned char);
unsigned int (*v6) (signed int, signed char, unsigned char) = v5;
signed int v7 (unsigned short, signed char, unsigned int);
signed int (*v8) (unsigned short, signed char, unsigned int) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed int v13 (signed char, signed char);
extern signed int (*v14) (signed char, signed char);
extern void v15 (unsigned char, unsigned int, unsigned short);
extern void (*v16) (unsigned char, unsigned int, unsigned short);
extern unsigned int v17 (signed char, unsigned short, unsigned int, signed char);
extern unsigned int (*v18) (signed char, unsigned short, unsigned int, signed char);
extern unsigned short v19 (unsigned short, signed short, signed int, signed short);
extern unsigned short (*v20) (unsigned short, signed short, signed int, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (unsigned short, signed char);
extern void (*v24) (unsigned short, signed char);
signed int v25 (unsigned short, unsigned int, signed int, signed short);
signed int (*v26) (unsigned short, unsigned int, signed int, signed short) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern signed int v29 (unsigned short, signed short, unsigned short);
extern signed int (*v30) (unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v75 = 3;
signed short v74 = -2;
signed char v73 = 3;

signed int v25 (unsigned short v76, unsigned int v77, signed int v78, signed short v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = -1;
unsigned short v81 = 5;
unsigned char v80 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned short v83, signed char v84, unsigned int v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 2;
signed int v87 = -1;
signed char v86 = 2;
trace++;
switch (trace)
{
case 6: 
return -2;
default: abort ();
}
}
}
}

unsigned int v5 (signed int v89, signed char v90, unsigned char v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned char v94 = 5;
unsigned int v93 = 6U;
unsigned short v92 = 3;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v95;
unsigned int v96;
unsigned short v97;
v95 = 1 - v94;
v96 = 5U + v93;
v97 = v92 + v92;
v15 (v95, v96, v97);
}
break;
case 12: 
return v93;
default: abort ();
}
}
}
}
