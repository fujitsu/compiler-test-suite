#include <stdlib.h>
extern void v3 (signed short, signed int, signed short, signed int);
extern void (*v4) (signed short, signed int, signed short, signed int);
extern void v5 (signed int, signed int, unsigned short);
extern void (*v6) (signed int, signed int, unsigned short);
extern signed short v7 (unsigned int, unsigned char, unsigned short);
extern signed short (*v8) (unsigned int, unsigned char, unsigned short);
unsigned short v9 (unsigned int, signed char);
unsigned short (*v10) (unsigned int, signed char) = v9;
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned char v15 (signed short, unsigned char, unsigned int);
extern unsigned char (*v16) (signed short, unsigned char, unsigned int);
extern signed short v17 (signed int, signed char, unsigned char, signed short);
extern signed short (*v18) (signed int, signed char, unsigned char, signed short);
extern unsigned char v21 (signed char);
extern unsigned char (*v22) (signed char);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
unsigned char v27 (unsigned char, unsigned char, signed char);
unsigned char (*v28) (unsigned char, unsigned char, signed char) = v27;
extern signed int v29 (unsigned char, unsigned int, unsigned int);
extern signed int (*v30) (unsigned char, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v140 = 4U;
signed short v139 = 0;
signed char v138 = 2;

unsigned char v27 (unsigned char v141, unsigned char v142, signed char v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned char v146 = 1;
unsigned char v145 = 7;
signed char v144 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v147, signed char v148)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed short v151 = -1;
unsigned int v150 = 6U;
signed int v149 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
