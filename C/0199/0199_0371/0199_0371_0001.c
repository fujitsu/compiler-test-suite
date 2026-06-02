#include <stdlib.h>
extern signed int v1 (signed short, unsigned char, signed short, unsigned short);
extern signed int (*v2) (signed short, unsigned char, signed short, unsigned short);
extern signed char v3 (unsigned short, unsigned short, signed short);
extern signed char (*v4) (unsigned short, unsigned short, signed short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (signed int, signed char, unsigned short);
extern signed short (*v8) (signed int, signed char, unsigned short);
extern signed int v9 (signed int, unsigned int, unsigned int);
extern signed int (*v10) (signed int, unsigned int, unsigned int);
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
extern signed short v13 (signed char, signed short, signed char);
extern signed short (*v14) (signed char, signed short, signed char);
extern signed short v15 (signed int, signed int, signed char);
extern signed short (*v16) (signed int, signed int, signed char);
extern void v17 (unsigned short, unsigned short, signed int, signed char);
extern void (*v18) (unsigned short, unsigned short, signed int, signed char);
extern unsigned char v19 (signed int, signed int, unsigned char);
extern unsigned char (*v20) (signed int, signed int, unsigned char);
extern unsigned char v21 (signed int, unsigned int, signed char, unsigned int);
extern unsigned char (*v22) (signed int, unsigned int, signed char, unsigned int);
extern unsigned char v23 (signed int, unsigned short, signed char, signed char);
extern unsigned char (*v24) (signed int, unsigned short, signed char, signed char);
extern void v25 (unsigned short, signed short, signed short, signed char);
extern void (*v26) (unsigned short, signed short, signed short, signed char);
extern unsigned int v27 (signed char, signed char, signed short, signed char);
extern unsigned int (*v28) (signed char, signed char, signed short, signed char);
unsigned int v29 (signed char, signed short, signed char);
unsigned int (*v30) (signed char, signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v80 = 0;
unsigned char v79 = 6;
unsigned char v78 = 3;

unsigned int v29 (signed char v81, signed short v82, signed char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 3U;
signed char v85 = 2;
unsigned char v84 = 7;
trace++;
switch (trace)
{
case 8: 
return v86;
case 10: 
return 0U;
default: abort ();
}
}
}
}
