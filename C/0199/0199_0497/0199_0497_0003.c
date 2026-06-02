#include <stdlib.h>
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
signed char v7 (signed char, unsigned short);
signed char (*v8) (signed char, unsigned short) = v7;
extern signed int v9 (unsigned int, unsigned short, signed char, unsigned short);
extern signed int (*v10) (unsigned int, unsigned short, signed char, unsigned short);
extern signed char v11 (signed char, unsigned char);
extern signed char (*v12) (signed char, unsigned char);
extern signed int v13 (unsigned short, signed char, unsigned char, unsigned char);
extern signed int (*v14) (unsigned short, signed char, unsigned char, unsigned char);
extern unsigned short v15 (signed short, unsigned char, unsigned int);
extern unsigned short (*v16) (signed short, unsigned char, unsigned int);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (signed int, signed short, unsigned short, unsigned int);
extern void (*v26) (signed int, signed short, unsigned short, unsigned int);
extern void v29 (signed int, unsigned char, unsigned char);
extern void (*v30) (signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v130 = 2;
unsigned short v129 = 0;
unsigned short v128 = 5;

signed char v7 (signed char v131, unsigned short v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = 0;
unsigned char v134 = 5;
unsigned int v133 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
