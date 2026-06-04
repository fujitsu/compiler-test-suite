#include <stdlib.h>
extern signed short v3 (signed int, signed short, unsigned char, signed short);
extern signed short (*v4) (signed int, signed short, unsigned char, signed short);
extern signed int v5 (unsigned int, signed int, signed int);
extern signed int (*v6) (unsigned int, signed int, signed int);
extern void v7 (signed char, signed int);
extern void (*v8) (signed char, signed int);
extern unsigned short v9 (signed char, signed char, unsigned char);
extern unsigned short (*v10) (signed char, signed char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
signed int v15 (unsigned short, signed short);
signed int (*v16) (unsigned short, signed short) = v15;
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
extern void v19 (void);
extern void (*v20) (void);
extern signed short v21 (unsigned char, unsigned int);
extern signed short (*v22) (unsigned char, unsigned int);
extern signed char v23 (unsigned int, unsigned int);
extern signed char (*v24) (unsigned int, unsigned int);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
extern unsigned short v27 (signed int, unsigned int, unsigned int);
extern unsigned short (*v28) (signed int, unsigned int, unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v131 = -3;
signed char v130 = -3;
signed char v129 = -3;

signed int v15 (unsigned short v132, signed short v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 1;
unsigned int v135 = 4U;
unsigned char v134 = 0;
trace++;
switch (trace)
{
case 10: 
return -2;
default: abort ();
}
}
}
}
