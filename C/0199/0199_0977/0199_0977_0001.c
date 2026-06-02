#include <stdlib.h>
extern unsigned char v3 (signed char, unsigned int, signed char);
extern unsigned char (*v4) (signed char, unsigned int, signed char);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
unsigned int v13 (unsigned char, unsigned short, signed int, signed int);
unsigned int (*v14) (unsigned char, unsigned short, signed int, signed int) = v13;
extern unsigned short v15 (signed short, signed char);
extern unsigned short (*v16) (signed short, signed char);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (signed short);
extern void (*v22) (signed short);
extern unsigned short v25 (unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, unsigned int);
extern signed int v27 (unsigned int, unsigned int, unsigned char);
extern signed int (*v28) (unsigned int, unsigned int, unsigned char);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v80 = -3;
signed int v79 = 0;
unsigned short v78 = 0;

unsigned int v13 (unsigned char v81, unsigned short v82, signed int v83, signed int v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed short v87 = 1;
unsigned char v86 = 0;
signed char v85 = 2;
trace++;
switch (trace)
{
case 5: 
return 6U;
default: abort ();
}
}
}
}
