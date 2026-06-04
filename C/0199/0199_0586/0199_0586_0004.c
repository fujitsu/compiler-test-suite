#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned short, unsigned char, unsigned char);
extern unsigned char (*v2) (signed char, unsigned short, unsigned char, unsigned char);
extern void v3 (signed char, unsigned char, unsigned short);
extern void (*v4) (signed char, unsigned char, unsigned short);
extern signed int v5 (unsigned short, unsigned short);
extern signed int (*v6) (unsigned short, unsigned short);
extern void v9 (unsigned short, signed char, unsigned int);
extern void (*v10) (unsigned short, signed char, unsigned int);
extern signed short v11 (signed char, signed int);
extern signed short (*v12) (signed char, signed int);
signed short v13 (unsigned short, signed char, unsigned short, signed short);
signed short (*v14) (unsigned short, signed char, unsigned short, signed short) = v13;
extern unsigned char v15 (signed int, unsigned int, signed char, signed int);
extern unsigned char (*v16) (signed int, unsigned int, signed char, signed int);
extern signed char v17 (unsigned int, signed char, unsigned char, unsigned char);
extern signed char (*v18) (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
extern signed short v21 (unsigned int, unsigned short);
extern signed short (*v22) (unsigned int, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned char, signed int);
extern unsigned char (*v26) (unsigned char, signed int);
extern void v27 (signed short, unsigned short, signed int, unsigned int);
extern void (*v28) (signed short, unsigned short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v156 = 3;
unsigned char v155 = 6;
signed int v154 = -1;

signed short v13 (unsigned short v157, signed char v158, unsigned short v159, signed short v160)
{
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
history[history_index++] = (int)v160;
{
for (;;) {
unsigned short v163 = 5;
unsigned short v162 = 4;
unsigned short v161 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
