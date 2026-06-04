#include <stdlib.h>
extern unsigned char v1 (signed int, signed char, signed int, unsigned char);
extern unsigned char (*v2) (signed int, signed char, signed int, unsigned char);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern void v7 (signed int, signed short, signed char);
extern void (*v8) (signed int, signed short, signed char);
extern void v9 (signed int, signed int, unsigned char);
extern void (*v10) (signed int, signed int, unsigned char);
extern unsigned int v11 (unsigned int, unsigned char, signed char);
extern unsigned int (*v12) (unsigned int, unsigned char, signed char);
signed char v13 (signed int);
signed char (*v14) (signed int) = v13;
extern signed char v15 (unsigned short, unsigned short, unsigned int);
extern signed char (*v16) (unsigned short, unsigned short, unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (signed char, unsigned int, signed short, unsigned char);
extern unsigned char (*v20) (signed char, unsigned int, signed short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v27 (signed short, unsigned int, signed short);
extern unsigned short (*v28) (signed short, unsigned int, signed short);
extern unsigned char v29 (signed short, signed int);
extern unsigned char (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v59 = 2;
unsigned int v58 = 6U;
unsigned int v57 = 0U;

signed char v13 (signed int v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = 2;
signed char v62 = -2;
unsigned int v61 = 0U;
trace++;
switch (trace)
{
case 3: 
{
signed int v64;
signed int v65;
unsigned char v66;
v64 = 3 + -3;
v65 = v60 - v63;
v66 = 6 + 3;
v9 (v64, v65, v66);
}
break;
case 15: 
return v62;
default: abort ();
}
}
}
}
