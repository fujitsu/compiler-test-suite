#include <stdlib.h>
extern unsigned short v3 (signed int, signed char);
extern unsigned short (*v4) (signed int, signed char);
extern void v5 (unsigned int, signed char, signed int);
extern void (*v6) (unsigned int, signed char, signed int);
extern signed short v7 (signed char, unsigned int);
extern signed short (*v8) (signed char, unsigned int);
signed short v9 (signed short, signed short, signed char);
signed short (*v10) (signed short, signed short, signed char) = v9;
extern unsigned char v11 (signed short, signed int, unsigned char);
extern unsigned char (*v12) (signed short, signed int, unsigned char);
extern unsigned char v13 (unsigned char, signed int);
extern unsigned char (*v14) (unsigned char, signed int);
extern unsigned int v15 (unsigned char, signed short, unsigned int);
extern unsigned int (*v16) (unsigned char, signed short, unsigned int);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern signed char v19 (unsigned short, signed char);
extern signed char (*v20) (unsigned short, signed char);
extern unsigned short v23 (unsigned short, signed short, unsigned char);
extern unsigned short (*v24) (unsigned short, signed short, unsigned char);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v29 (unsigned short, signed short, signed int, unsigned char);
extern void (*v30) (unsigned short, signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v134 = 5;
unsigned short v133 = 2;
unsigned char v132 = 3;

signed short v9 (signed short v135, signed short v136, signed char v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 5;
unsigned short v139 = 2;
unsigned int v138 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
