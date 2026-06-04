#include <stdlib.h>
extern unsigned int v1 (signed char, signed int, signed short, signed char);
extern unsigned int (*v2) (signed char, signed int, signed short, signed char);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed char v5 (signed char, signed short);
extern signed char (*v6) (signed char, signed short);
extern unsigned short v7 (signed int, signed int, signed char, unsigned short);
extern unsigned short (*v8) (signed int, signed int, signed char, unsigned short);
extern signed int v9 (unsigned int, unsigned char, unsigned char);
extern signed int (*v10) (unsigned int, unsigned char, unsigned char);
extern signed int v11 (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed int (*v12) (unsigned int, unsigned char, unsigned short, unsigned int);
extern unsigned int v13 (signed char, unsigned int, unsigned int);
extern unsigned int (*v14) (signed char, unsigned int, unsigned int);
extern signed char v15 (signed int, unsigned char, signed char);
extern signed char (*v16) (signed int, unsigned char, signed char);
extern unsigned int v17 (signed int, unsigned char);
extern unsigned int (*v18) (signed int, unsigned char);
extern unsigned short v19 (signed char, unsigned char);
extern unsigned short (*v20) (signed char, unsigned char);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern signed short v23 (signed char, unsigned char, signed char);
extern signed short (*v24) (signed char, unsigned char, signed char);
extern unsigned int v25 (unsigned char, unsigned int, unsigned short);
extern unsigned int (*v26) (unsigned char, unsigned int, unsigned short);
extern unsigned short v27 (signed short, unsigned short, signed char, unsigned short);
extern unsigned short (*v28) (signed short, unsigned short, signed char, unsigned short);
extern signed char v29 (unsigned int, signed char, unsigned short, signed int);
extern signed char (*v30) (unsigned int, signed char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v74 = -3;
unsigned short v73 = 4;
unsigned char v72 = 4;

signed int v3 (void)
{
{
for (;;) {
unsigned int v77 = 7U;
signed char v76 = 1;
unsigned int v75 = 7U;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v78;
unsigned char v79;
unsigned short v80;
unsigned int v81;
signed int v82;
v78 = v75 + v77;
v79 = 7 - 7;
v80 = 4 - 2;
v81 = v75 + v75;
v82 = v11 (v78, v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 13: 
return -4;
default: abort ();
}
}
}
}
