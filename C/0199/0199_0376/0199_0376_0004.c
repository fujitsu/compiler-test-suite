#include <stdlib.h>
extern signed int v1 (unsigned int, signed char, unsigned int, signed short);
extern signed int (*v2) (unsigned int, signed char, unsigned int, signed short);
extern signed int v3 (void);
extern signed int (*v4) (void);
signed char v5 (signed char);
signed char (*v6) (signed char) = v5;
extern signed short v7 (unsigned char, signed char, unsigned short);
extern signed short (*v8) (unsigned char, signed char, unsigned short);
extern unsigned int v9 (signed int, signed short, signed int, signed int);
extern unsigned int (*v10) (signed int, signed short, signed int, signed int);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern signed int v13 (unsigned short, signed char, signed short, signed int);
extern signed int (*v14) (unsigned short, signed char, signed short, signed int);
extern signed short v17 (unsigned char, signed short);
extern signed short (*v18) (unsigned char, signed short);
extern signed int v19 (unsigned char, signed char, signed short);
extern signed int (*v20) (unsigned char, signed char, signed short);
unsigned short v21 (unsigned char, unsigned short);
unsigned short (*v22) (unsigned char, unsigned short) = v21;
extern unsigned char v25 (unsigned int, signed int, unsigned char, unsigned short);
extern unsigned char (*v26) (unsigned int, signed int, unsigned char, unsigned short);
extern void v27 (unsigned char, signed int, signed short, unsigned int);
extern void (*v28) (unsigned char, signed int, signed short, unsigned int);
extern signed short v29 (unsigned char, signed int, signed int);
extern signed short (*v30) (unsigned char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v141 = -1;
unsigned char v140 = 6;
unsigned char v139 = 1;

unsigned short v21 (unsigned char v142, unsigned short v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned short v146 = 4;
signed char v145 = -2;
unsigned short v144 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v147)
{
history[history_index++] = (int)v147;
{
for (;;) {
signed int v150 = 1;
unsigned char v149 = 3;
signed short v148 = -3;
trace++;
switch (trace)
{
case 11: 
return v147;
default: abort ();
}
}
}
}
