#include <stdlib.h>
void v3 (unsigned int, signed char, signed short);
void (*v4) (unsigned int, signed char, signed short) = v3;
extern signed char v5 (signed char, unsigned short, signed short);
extern signed char (*v6) (signed char, unsigned short, signed short);
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern signed int v9 (unsigned int, signed short, signed int);
extern signed int (*v10) (unsigned int, signed short, signed int);
extern signed short v11 (signed char, unsigned char, signed short, signed char);
extern signed short (*v12) (signed char, unsigned char, signed short, signed char);
extern signed char v13 (unsigned int);
extern signed char (*v14) (unsigned int);
extern unsigned char v15 (unsigned short, signed char, unsigned short);
extern unsigned char (*v16) (unsigned short, signed char, unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (unsigned short, signed int, unsigned char, unsigned char);
extern signed char (*v20) (unsigned short, signed int, unsigned char, unsigned char);
extern void v21 (unsigned int, signed int);
extern void (*v22) (unsigned int, signed int);
extern unsigned char v23 (unsigned char, signed char, unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, signed char, unsigned char, signed int);
extern unsigned short v25 (signed int, signed short);
extern unsigned short (*v26) (signed int, signed short);
extern unsigned int v27 (signed int, unsigned int);
extern unsigned int (*v28) (signed int, unsigned int);
extern signed char v29 (signed int, signed int, signed int, unsigned int);
extern signed char (*v30) (signed int, signed int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v129 = 5U;
unsigned int v128 = 6U;
signed short v127 = -3;

void v3 (unsigned int v130, signed char v131, signed short v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 5;
unsigned int v134 = 1U;
signed int v133 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
