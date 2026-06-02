#include <stdlib.h>
unsigned short v3 (signed short, signed int, unsigned short, signed int);
unsigned short (*v4) (signed short, signed int, unsigned short, signed int) = v3;
extern signed short v5 (signed short, signed int, signed short);
extern signed short (*v6) (signed short, signed int, signed short);
extern signed int v7 (unsigned char, unsigned int, unsigned int);
extern signed int (*v8) (unsigned char, unsigned int, unsigned int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (signed int, signed short, unsigned char);
extern unsigned int (*v12) (signed int, signed short, unsigned char);
extern unsigned int v13 (signed int, unsigned char, signed short);
extern unsigned int (*v14) (signed int, unsigned char, signed short);
extern signed int v15 (unsigned short, signed char);
extern signed int (*v16) (unsigned short, signed char);
extern signed int v17 (signed int, signed char);
extern signed int (*v18) (signed int, signed char);
extern void v19 (signed int);
extern void (*v20) (signed int);
extern void v21 (void);
extern void (*v22) (void);
extern void v23 (signed char, unsigned int, signed short);
extern void (*v24) (signed char, unsigned int, signed short);
extern signed short v25 (unsigned int, unsigned char, signed int);
extern signed short (*v26) (unsigned int, unsigned char, signed int);
extern signed char v27 (unsigned short, signed char);
extern signed char (*v28) (unsigned short, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v82 = 6U;
signed short v81 = 2;
unsigned char v80 = 5;

unsigned short v3 (signed short v83, signed int v84, unsigned short v85, signed int v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 1U;
unsigned char v88 = 7;
signed char v87 = 3;
trace++;
switch (trace)
{
case 4: 
{
signed int v90;
signed short v91;
unsigned char v92;
unsigned int v93;
v90 = 1 - v86;
v91 = -1 - 1;
v92 = 5 + 0;
v93 = v11 (v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 6: 
return v85;
default: abort ();
}
}
}
}
