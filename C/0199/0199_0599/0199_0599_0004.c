#include <stdlib.h>
extern void v1 (signed char, unsigned short, unsigned short, signed short);
extern void (*v2) (signed char, unsigned short, unsigned short, signed short);
void v3 (unsigned char);
void (*v4) (unsigned char) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned char v9 (unsigned short, signed int, unsigned char, signed char);
extern unsigned char (*v10) (unsigned short, signed int, unsigned char, signed char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (signed short, unsigned short, unsigned short);
extern unsigned char (*v16) (signed short, unsigned short, unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned char v25 (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned char (*v26) (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned char v27 (unsigned int, signed char, signed int);
extern unsigned char (*v28) (unsigned int, signed char, signed int);
extern unsigned char v29 (signed char, unsigned int, unsigned char);
extern unsigned char (*v30) (signed char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v129 = 2U;
signed short v128 = -4;
unsigned char v127 = 0;

void v3 (unsigned char v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = -1;
signed char v132 = -3;
signed char v131 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
