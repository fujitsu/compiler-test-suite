#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern signed int v3 (unsigned char, signed char, signed short);
extern signed int (*v4) (unsigned char, signed char, signed short);
unsigned short v5 (unsigned char, signed short, signed char, signed char);
unsigned short (*v6) (unsigned char, signed short, signed char, signed char) = v5;
extern unsigned short v7 (signed int);
extern unsigned short (*v8) (signed int);
extern unsigned int v9 (unsigned char, signed int, unsigned char);
extern unsigned int (*v10) (unsigned char, signed int, unsigned char);
extern unsigned int v11 (signed int, unsigned int, signed int);
extern unsigned int (*v12) (signed int, unsigned int, signed int);
extern unsigned short v13 (signed int, unsigned char, unsigned short, unsigned int);
extern unsigned short (*v14) (signed int, unsigned char, unsigned short, unsigned int);
extern signed int v15 (unsigned int, unsigned short, signed short);
extern signed int (*v16) (unsigned int, unsigned short, signed short);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern unsigned int v19 (signed short, signed char);
extern unsigned int (*v20) (signed short, signed char);
extern unsigned int v21 (signed short, unsigned char, unsigned int);
extern unsigned int (*v22) (signed short, unsigned char, unsigned int);
extern signed char v25 (signed short, signed short, unsigned short, signed short);
extern signed char (*v26) (signed short, signed short, unsigned short, signed short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (signed char);
extern signed int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v130 = 1;
signed int v129 = -3;
signed char v128 = -3;

unsigned short v5 (unsigned char v131, signed short v132, signed char v133, signed char v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned char v137 = 1;
signed int v136 = 2;
signed short v135 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
