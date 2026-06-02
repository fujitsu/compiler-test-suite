#include <stdlib.h>
extern signed short v1 (signed int, signed int);
extern signed short (*v2) (signed int, signed int);
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (signed short, signed char, signed char, signed char);
extern void (*v6) (signed short, signed char, signed char, signed char);
void v7 (void);
void (*v8) (void) = v7;
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern signed char v11 (signed char, unsigned char);
extern signed char (*v12) (signed char, unsigned char);
extern unsigned int v13 (unsigned char);
extern unsigned int (*v14) (unsigned char);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern unsigned int v17 (unsigned char, signed char);
extern unsigned int (*v18) (unsigned char, signed char);
extern signed short v19 (signed short, signed char, unsigned short);
extern signed short (*v20) (signed short, signed char, unsigned short);
extern unsigned int v21 (signed char, signed short);
extern unsigned int (*v22) (signed char, signed short);
extern unsigned int v23 (unsigned char, unsigned int, signed char, unsigned short);
extern unsigned int (*v24) (unsigned char, unsigned int, signed char, unsigned short);
extern signed short v25 (signed int, unsigned int);
extern signed short (*v26) (signed int, unsigned int);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
extern unsigned char v29 (unsigned char, unsigned char, signed short);
extern unsigned char (*v30) (unsigned char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v77 = -1;
unsigned char v76 = 4;
signed short v75 = 0;

void v7 (void)
{
{
for (;;) {
unsigned int v80 = 2U;
unsigned char v79 = 7;
unsigned int v78 = 7U;
trace++;
switch (trace)
{
case 3: 
{
signed char v81;
signed short v82;
unsigned int v83;
v81 = -2 - -3;
v82 = -2 + 2;
v83 = v21 (v81, v82);
history[history_index++] = (int)v83;
}
break;
case 5: 
{
signed short v84;
signed char v85;
signed char v86;
signed char v87;
v84 = -1 + -4;
v85 = 1 + 0;
v86 = 3 - 1;
v87 = 0 - 1;
v5 (v84, v85, v86, v87);
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
