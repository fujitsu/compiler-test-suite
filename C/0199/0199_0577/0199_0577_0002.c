#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
extern unsigned char v5 (unsigned short, signed short);
extern unsigned char (*v6) (unsigned short, signed short);
extern void v9 (void);
extern void (*v10) (void);
extern void v11 (unsigned char, unsigned int, unsigned char, unsigned char);
extern void (*v12) (unsigned char, unsigned int, unsigned char, unsigned char);
signed char v13 (signed char, unsigned short, signed int);
signed char (*v14) (signed char, unsigned short, signed int) = v13;
extern unsigned short v15 (unsigned short, unsigned char);
extern unsigned short (*v16) (unsigned short, unsigned char);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern void v19 (signed char);
extern void (*v20) (signed char);
extern unsigned int v21 (signed int, unsigned short);
extern unsigned int (*v22) (signed int, unsigned short);
extern unsigned int v23 (unsigned short, signed char);
extern unsigned int (*v24) (unsigned short, signed char);
extern signed int v25 (signed char, unsigned int, signed char, signed short);
extern signed int (*v26) (signed char, unsigned int, signed char, signed short);
extern unsigned char v27 (unsigned int, signed char);
extern unsigned char (*v28) (unsigned int, signed char);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v82 = 1;
signed char v81 = -4;
signed int v80 = -2;

signed char v13 (signed char v83, unsigned short v84, signed int v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -1;
unsigned int v87 = 0U;
signed int v86 = 3;
trace++;
switch (trace)
{
case 7: 
{
signed char v89;
v89 = 0 - 2;
v19 (v89);
}
break;
case 9: 
return -3;
default: abort ();
}
}
}
}
