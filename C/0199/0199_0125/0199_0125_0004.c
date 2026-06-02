#include <stdlib.h>
void v3 (signed int, signed short);
void (*v4) (signed int, signed short) = v3;
extern unsigned int v5 (signed char, unsigned short, unsigned short);
extern unsigned int (*v6) (signed char, unsigned short, unsigned short);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed short v11 (signed char, unsigned int);
extern signed short (*v12) (signed char, unsigned int);
extern unsigned int v13 (unsigned char, signed char, unsigned short);
extern unsigned int (*v14) (unsigned char, signed char, unsigned short);
extern unsigned char v15 (signed int, signed char, signed int, unsigned int);
extern unsigned char (*v16) (signed int, signed char, signed int, unsigned int);
extern unsigned int v17 (unsigned char, unsigned char);
extern unsigned int (*v18) (unsigned char, unsigned char);
extern signed char v19 (signed int, unsigned int);
extern signed char (*v20) (signed int, unsigned int);
extern unsigned char v21 (unsigned short);
extern unsigned char (*v22) (unsigned short);
extern void v23 (unsigned int, signed char, unsigned int);
extern void (*v24) (unsigned int, signed char, unsigned int);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern unsigned char v29 (unsigned int, signed char);
extern unsigned char (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v137 = 2;
signed int v136 = -2;
unsigned char v135 = 6;

void v3 (signed int v138, signed short v139)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed int v142 = 0;
signed int v141 = -3;
unsigned short v140 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
