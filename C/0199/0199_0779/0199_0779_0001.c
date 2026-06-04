#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern void v3 (signed char, signed char, signed short, unsigned char);
extern void (*v4) (signed char, signed char, signed short, unsigned char);
extern signed int v5 (unsigned int, signed int, unsigned char, signed int);
extern signed int (*v6) (unsigned int, signed int, unsigned char, signed int);
extern signed char v7 (signed int, unsigned char, signed char);
extern signed char (*v8) (signed int, unsigned char, signed char);
extern unsigned int v9 (signed int, signed char, unsigned int, unsigned char);
extern unsigned int (*v10) (signed int, signed char, unsigned int, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (signed char, unsigned int);
extern void (*v14) (signed char, unsigned int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed char v17 (signed short, unsigned int, unsigned short);
extern signed char (*v18) (signed short, unsigned int, unsigned short);
extern unsigned char v19 (signed int, signed short, signed char);
extern unsigned char (*v20) (signed int, signed short, signed char);
extern signed int v21 (signed char, signed short, unsigned short);
extern signed int (*v22) (signed char, signed short, unsigned short);
void v23 (unsigned short);
void (*v24) (unsigned short) = v23;
extern signed short v25 (unsigned short, signed int, signed char);
extern signed short (*v26) (unsigned short, signed int, signed char);
extern unsigned char v27 (unsigned short, signed int);
extern unsigned char (*v28) (unsigned short, signed int);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v68 = 5;
signed int v67 = 1;
unsigned char v66 = 6;

void v23 (unsigned short v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 5U;
signed short v71 = -4;
signed char v70 = -3;
trace++;
switch (trace)
{
case 6: 
return;
case 8: 
return;
default: abort ();
}
}
}
}
