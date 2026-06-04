#include <stdlib.h>
extern signed int v1 (unsigned short);
extern signed int (*v2) (unsigned short);
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (unsigned int, unsigned char, signed short, signed char);
extern signed short (*v8) (unsigned int, unsigned char, signed short, signed char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned int v11 (unsigned short, signed char, signed int);
extern unsigned int (*v12) (unsigned short, signed char, signed int);
extern unsigned char v13 (unsigned int, unsigned char, signed int, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int, signed int);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern void v19 (void);
extern void (*v20) (void);
extern void v21 (signed short, unsigned int);
extern void (*v22) (signed short, unsigned int);
extern unsigned short v23 (unsigned char, unsigned int);
extern unsigned short (*v24) (unsigned char, unsigned int);
extern unsigned int v25 (unsigned int, signed char, signed int, signed int);
extern unsigned int (*v26) (unsigned int, signed char, signed int, signed int);
void v27 (signed int);
void (*v28) (signed int) = v27;
extern signed short v29 (signed char, unsigned short);
extern signed short (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v87 = 2;
signed char v86 = 3;
unsigned int v85 = 4U;

void v27 (signed int v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 1;
signed char v90 = 1;
unsigned short v89 = 5;
trace++;
switch (trace)
{
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}
