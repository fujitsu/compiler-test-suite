#include <stdlib.h>
void v1 (signed short, unsigned char, unsigned char, signed int);
void (*v2) (signed short, unsigned char, unsigned char, signed int) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern void v5 (signed short);
extern void (*v6) (signed short);
extern unsigned char v7 (unsigned int, unsigned short, signed int);
extern unsigned char (*v8) (unsigned int, unsigned short, signed int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed char v11 (signed short, signed int, signed char);
extern signed char (*v12) (signed short, signed int, signed char);
extern signed char v13 (unsigned short, signed char, unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, signed char, unsigned short, unsigned int);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (unsigned int, unsigned int, signed char, unsigned char);
extern void (*v22) (unsigned int, unsigned int, signed char, unsigned char);
extern signed short v23 (signed short, signed short, signed int);
extern signed short (*v24) (signed short, signed short, signed int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (signed char, unsigned int, signed char);
extern void (*v30) (signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v78 = 0U;
unsigned short v77 = 6;
signed char v76 = 1;

void v1 (signed short v79, unsigned char v80, unsigned char v81, signed int v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed short v85 = 2;
unsigned int v84 = 5U;
signed short v83 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed char v86;
unsigned int v87;
signed char v88;
v86 = -1 + -3;
v87 = v84 - 2U;
v88 = 2 + 2;
v29 (v86, v87, v88);
}
break;
case 2: 
{
signed short v89;
v89 = v83 - v85;
v5 (v89);
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
