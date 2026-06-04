#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned short, signed int);
extern signed int (*v2) (unsigned short, unsigned short, signed int);
signed char v3 (signed char, unsigned int, unsigned int);
signed char (*v4) (signed char, unsigned int, unsigned int) = v3;
extern signed int v5 (signed char);
extern signed int (*v6) (signed char);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v11 (signed short, unsigned char);
extern void (*v12) (signed short, unsigned char);
extern unsigned char v13 (unsigned short, unsigned short, signed int, signed char);
extern unsigned char (*v14) (unsigned short, unsigned short, signed int, signed char);
extern signed short v15 (signed char, unsigned int, unsigned short, unsigned short);
extern signed short (*v16) (signed char, unsigned int, unsigned short, unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned short v19 (unsigned char, unsigned int, unsigned short);
extern unsigned short (*v20) (unsigned char, unsigned int, unsigned short);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
extern void v23 (void);
extern void (*v24) (void);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern unsigned short v27 (signed int, unsigned char);
extern unsigned short (*v28) (signed int, unsigned char);
extern unsigned short v29 (unsigned char, unsigned short, signed char);
extern unsigned short (*v30) (unsigned char, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v80 = 7U;
signed char v79 = 2;
unsigned short v78 = 3;

signed char v3 (signed char v81, unsigned int v82, unsigned int v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 7U;
signed short v85 = -3;
signed short v84 = -1;
trace++;
switch (trace)
{
case 11: 
return -1;
default: abort ();
}
}
}
}
