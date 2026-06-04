#include <stdlib.h>
unsigned int v1 (unsigned short);
unsigned int (*v2) (unsigned short) = v1;
extern unsigned int v3 (unsigned int, signed int, signed char, signed int);
extern unsigned int (*v4) (unsigned int, signed int, signed char, signed int);
extern signed int v5 (signed int, signed short);
extern signed int (*v6) (signed int, signed short);
extern unsigned int v7 (signed short, signed short, unsigned int, unsigned int);
extern unsigned int (*v8) (signed short, signed short, unsigned int, unsigned int);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern unsigned char v11 (signed char, unsigned char, unsigned char);
extern unsigned char (*v12) (signed char, unsigned char, unsigned char);
signed char v13 (signed char, signed char);
signed char (*v14) (signed char, signed char) = v13;
extern unsigned char v15 (unsigned char, unsigned char);
extern unsigned char (*v16) (unsigned char, unsigned char);
extern signed char v17 (signed char, signed char, unsigned char, signed int);
extern signed char (*v18) (signed char, signed char, unsigned char, signed int);
extern unsigned int v19 (signed int);
extern unsigned int (*v20) (signed int);
extern void v21 (signed int, signed short, signed int);
extern void (*v22) (signed int, signed short, signed int);
extern unsigned short v23 (unsigned int, signed char, unsigned int);
extern unsigned short (*v24) (unsigned int, signed char, unsigned int);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern unsigned char v27 (unsigned char);
extern unsigned char (*v28) (unsigned char);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v62 = 1;
signed int v61 = 3;
signed char v60 = 2;

signed char v13 (signed char v63, signed char v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = -1;
unsigned short v66 = 7;
unsigned char v65 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = -3;
signed int v70 = 3;
unsigned short v69 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v72;
signed int v73;
signed char v74;
signed int v75;
unsigned int v76;
v72 = 3U - 0U;
v73 = -4 - 1;
v74 = -2 + 1;
v75 = 0 + 0;
v76 = v3 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 14: 
return 3U;
default: abort ();
}
}
}
}
