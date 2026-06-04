#include <stdlib.h>
unsigned short v1 (signed int);
unsigned short (*v2) (signed int) = v1;
extern signed int v3 (unsigned char, signed short, unsigned int);
extern signed int (*v4) (unsigned char, signed short, unsigned int);
extern void v5 (unsigned short);
extern void (*v6) (unsigned short);
extern unsigned char v7 (unsigned int, signed char);
extern unsigned char (*v8) (unsigned int, signed char);
extern unsigned int v9 (signed int, signed char, signed short);
extern unsigned int (*v10) (signed int, signed char, signed short);
extern signed char v11 (signed char, unsigned char, unsigned char);
extern signed char (*v12) (signed char, unsigned char, unsigned char);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern unsigned int v19 (unsigned char, signed int, unsigned int, signed char);
extern unsigned int (*v20) (unsigned char, signed int, unsigned int, signed char);
extern void v21 (signed int);
extern void (*v22) (signed int);
extern unsigned char v25 (signed short, signed int, unsigned char, signed int);
extern unsigned char (*v26) (signed short, signed int, unsigned char, signed int);
extern signed int v27 (unsigned int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned int);
extern unsigned short v29 (signed short, signed char);
extern unsigned short (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v75 = -3;
unsigned char v74 = 4;
unsigned short v73 = 4;

unsigned short v1 (signed int v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = -2;
signed int v78 = -2;
unsigned char v77 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v80;
v80 = v76 - v78;
v21 (v80);
}
break;
case 6: 
{
unsigned char v81;
signed short v82;
unsigned int v83;
signed int v84;
v81 = 3 + v77;
v82 = -4 - -1;
v83 = 7U + 1U;
v84 = v3 (v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 16: 
return 4;
default: abort ();
}
}
}
}
