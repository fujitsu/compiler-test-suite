#include <stdlib.h>
extern signed int v1 (unsigned char, signed short, unsigned int, unsigned short);
extern signed int (*v2) (unsigned char, signed short, unsigned int, unsigned short);
extern signed int v3 (unsigned char, unsigned short, signed char, signed short);
extern signed int (*v4) (unsigned char, unsigned short, signed char, signed short);
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
signed int v19 (unsigned int, signed char, signed int, signed char);
signed int (*v20) (unsigned int, signed char, signed int, signed char) = v19;
signed char v21 (signed char, unsigned short);
signed char (*v22) (signed char, unsigned short) = v21;
extern void v23 (unsigned int, unsigned short);
extern void (*v24) (unsigned int, unsigned short);
extern unsigned char v27 (signed int, signed short, signed short);
extern unsigned char (*v28) (signed int, signed short, signed short);
extern void v29 (signed int, unsigned short, unsigned int, signed short);
extern void (*v30) (signed int, unsigned short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v74 = 6;
signed int v73 = 2;
unsigned short v72 = 5;

signed char v21 (signed char v75, unsigned short v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 3;
unsigned char v78 = 2;
signed int v77 = 2;
trace++;
switch (trace)
{
case 11: 
return 3;
default: abort ();
}
}
}
}

signed int v19 (unsigned int v80, signed char v81, signed int v82, signed char v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 2;
signed short v85 = 3;
signed int v84 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
