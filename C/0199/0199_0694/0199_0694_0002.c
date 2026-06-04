#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
extern unsigned short v3 (unsigned int, unsigned int, signed short, signed int);
extern unsigned short (*v4) (unsigned int, unsigned int, signed short, signed int);
extern signed int v7 (signed short, signed short);
extern signed int (*v8) (signed short, signed short);
extern void v9 (unsigned char, unsigned short);
extern void (*v10) (unsigned char, unsigned short);
extern unsigned char v11 (signed int, unsigned char, signed short, unsigned char);
extern unsigned char (*v12) (signed int, unsigned char, signed short, unsigned char);
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
extern unsigned short v15 (signed short, signed int);
extern unsigned short (*v16) (signed short, signed int);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
signed short v19 (unsigned short);
signed short (*v20) (unsigned short) = v19;
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern unsigned char v23 (unsigned short, unsigned int, unsigned char, signed short);
extern unsigned char (*v24) (unsigned short, unsigned int, unsigned char, signed short);
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern void v27 (unsigned char, signed char, unsigned int, signed int);
extern void (*v28) (unsigned char, signed char, unsigned int, signed int);
extern unsigned short v29 (signed int, unsigned int, signed short);
extern unsigned short (*v30) (signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v94 = 0;
signed int v93 = 1;
unsigned short v92 = 7;

signed short v19 (unsigned short v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 1;
signed short v97 = -2;
signed short v96 = -3;
trace++;
switch (trace)
{
case 7: 
return v96;
default: abort ();
}
}
}
}
