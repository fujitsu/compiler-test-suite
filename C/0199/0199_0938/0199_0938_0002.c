#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
signed char v3 (signed short, signed short);
signed char (*v4) (signed short, signed short) = v3;
extern unsigned short v5 (unsigned int, unsigned short, signed short);
extern unsigned short (*v6) (unsigned int, unsigned short, signed short);
extern unsigned int v7 (signed char, signed int, signed int, unsigned int);
extern unsigned int (*v8) (signed char, signed int, signed int, unsigned int);
extern unsigned int v9 (unsigned int, unsigned char, signed int, unsigned char);
extern unsigned int (*v10) (unsigned int, unsigned char, signed int, unsigned char);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned int v13 (signed short, signed char);
extern unsigned int (*v14) (signed short, signed char);
extern unsigned short v15 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v16) (unsigned char, unsigned char, unsigned int);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned char v19 (signed char);
extern unsigned char (*v20) (signed char);
extern void v21 (unsigned short);
extern void (*v22) (unsigned short);
extern unsigned char v23 (unsigned short, unsigned char, signed char);
extern unsigned char (*v24) (unsigned short, unsigned char, signed char);
extern signed short v25 (signed short, unsigned int, unsigned short);
extern signed short (*v26) (signed short, unsigned int, unsigned short);
extern signed int v27 (signed char, unsigned short, unsigned short, signed char);
extern signed int (*v28) (signed char, unsigned short, unsigned short, signed char);
extern signed int v29 (unsigned int, unsigned int, unsigned int, signed char);
extern signed int (*v30) (unsigned int, unsigned int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v84 = 4;
signed char v83 = -3;
unsigned char v82 = 0;

signed char v3 (signed short v85, signed short v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 0U;
signed short v88 = -1;
unsigned int v87 = 5U;
trace++;
switch (trace)
{
case 2: 
{
v11 ();
}
break;
case 6: 
return 3;
default: abort ();
}
}
}
}
