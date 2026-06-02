#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int);
extern unsigned short (*v2) (unsigned int, signed int);
extern unsigned char v3 (signed char, unsigned int);
extern unsigned char (*v4) (signed char, unsigned int);
void v5 (signed short, signed char);
void (*v6) (signed short, signed char) = v5;
signed short v9 (signed char, unsigned char);
signed short (*v10) (signed char, unsigned char) = v9;
extern signed short v11 (signed char, unsigned char);
extern signed short (*v12) (signed char, unsigned char);
extern signed short v15 (unsigned int, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern unsigned char v19 (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned char (*v20) (unsigned int, signed char, unsigned short, unsigned short);
extern void v21 (signed int, unsigned int, signed int, unsigned int);
extern void (*v22) (signed int, unsigned int, signed int, unsigned int);
extern unsigned short v23 (signed int, unsigned short, unsigned short);
extern unsigned short (*v24) (signed int, unsigned short, unsigned short);
extern unsigned char v25 (unsigned char, signed char, unsigned short, signed char);
extern unsigned char (*v26) (unsigned char, signed char, unsigned short, signed char);
extern signed short v27 (unsigned short, unsigned char);
extern signed short (*v28) (unsigned short, unsigned char);
extern unsigned char v29 (signed char, signed int, unsigned short);
extern unsigned char (*v30) (signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v140 = -2;
unsigned short v139 = 2;
unsigned int v138 = 1U;

signed short v9 (signed char v141, unsigned char v142)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed short v145 = 3;
signed short v144 = 2;
unsigned short v143 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed short v146, signed char v147)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
unsigned int v150 = 6U;
unsigned int v149 = 0U;
unsigned int v148 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
