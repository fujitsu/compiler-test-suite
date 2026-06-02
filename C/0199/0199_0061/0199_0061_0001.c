#include <stdlib.h>
extern signed int v1 (unsigned char, signed short, unsigned int, unsigned short);
extern signed int (*v2) (unsigned char, signed short, unsigned int, unsigned short);
signed int v3 (unsigned char, unsigned short, signed char, signed short);
signed int (*v4) (unsigned char, unsigned short, signed char, signed short) = v3;
extern unsigned int v5 (signed char, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v6) (signed char, unsigned int, unsigned int, unsigned int);
extern signed int v9 (signed char, unsigned int, unsigned int, signed char);
extern signed int (*v10) (signed char, unsigned int, unsigned int, signed char);
extern unsigned int v11 (unsigned short, unsigned char);
extern unsigned int (*v12) (unsigned short, unsigned char);
extern unsigned char v13 (unsigned short, signed short, signed int);
extern unsigned char (*v14) (unsigned short, signed short, signed int);
extern signed short v15 (unsigned int, unsigned char, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char, unsigned char);
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
extern signed int v19 (unsigned int, signed char, signed int, signed char);
extern signed int (*v20) (unsigned int, signed char, signed int, signed char);
extern signed char v21 (signed char, unsigned short);
extern signed char (*v22) (signed char, unsigned short);
extern void v23 (unsigned int, unsigned short);
extern void (*v24) (unsigned int, unsigned short);
unsigned char v27 (signed int, signed short, signed short);
unsigned char (*v28) (signed int, signed short, signed short) = v27;
extern void v29 (signed int, unsigned short, unsigned int, signed short);
extern void (*v30) (signed int, unsigned short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v54 = -3;
unsigned int v53 = 4U;
signed char v52 = -3;

unsigned char v27 (signed int v55, signed short v56, signed short v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned char v60 = 7;
unsigned char v59 = 5;
unsigned char v58 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed int v61;
unsigned short v62;
unsigned int v63;
signed short v64;
v61 = v55 - v55;
v62 = 0 + 6;
v63 = 7U - 7U;
v64 = 3 + v57;
v29 (v61, v62, v63, v64);
}
break;
case 3: 
return v60;
default: abort ();
}
}
}
}

signed int v3 (unsigned char v65, unsigned short v66, signed char v67, signed short v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 5;
unsigned short v70 = 7;
signed short v69 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
