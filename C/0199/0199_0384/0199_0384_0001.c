#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned short, signed short);
extern unsigned char (*v2) (signed short, unsigned short, signed short);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern signed int v7 (signed int, signed short);
extern signed int (*v8) (signed int, signed short);
extern unsigned short v9 (unsigned short, signed int, signed char);
extern unsigned short (*v10) (unsigned short, signed int, signed char);
extern signed short v11 (signed int, signed int);
extern signed short (*v12) (signed int, signed int);
extern unsigned int v13 (signed short, signed short, unsigned char, signed short);
extern unsigned int (*v14) (signed short, signed short, unsigned char, signed short);
extern unsigned short v15 (signed int, signed int);
extern unsigned short (*v16) (signed int, signed int);
extern signed short v17 (unsigned char, signed short, signed char, unsigned int);
extern signed short (*v18) (unsigned char, signed short, signed char, unsigned int);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned char v21 (signed int, signed char);
extern unsigned char (*v22) (signed int, signed char);
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
signed int v25 (void);
signed int (*v26) (void) = v25;
extern unsigned short v27 (signed short, signed char);
extern unsigned short (*v28) (signed short, signed char);
extern unsigned char v29 (unsigned short, unsigned short, signed short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v75 = 3;
signed char v74 = 0;
signed char v73 = 0;

signed int v25 (void)
{
{
for (;;) {
signed char v78 = 1;
unsigned char v77 = 5;
unsigned char v76 = 6;
trace++;
switch (trace)
{
case 8: 
return 3;
case 10: 
{
unsigned short v79;
unsigned short v80;
signed short v81;
unsigned short v82;
unsigned char v83;
v79 = 6 - 7;
v80 = 3 - 4;
v81 = 1 + -3;
v82 = 1 + 6;
v83 = v29 (v79, v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}
