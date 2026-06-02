#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
extern unsigned int v5 (unsigned char, unsigned int);
extern unsigned int (*v6) (unsigned char, unsigned int);
extern signed int v7 (signed short, unsigned int, unsigned int);
extern signed int (*v8) (signed short, unsigned int, unsigned int);
extern signed int v9 (unsigned int, unsigned int, signed char, unsigned char);
extern signed int (*v10) (unsigned int, unsigned int, signed char, unsigned char);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern unsigned char v13 (signed short, signed int);
extern unsigned char (*v14) (signed short, signed int);
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
extern void v19 (unsigned short, unsigned short);
extern void (*v20) (unsigned short, unsigned short);
signed short v21 (signed short);
signed short (*v22) (signed short) = v21;
signed int v23 (signed char, signed short);
signed int (*v24) (signed char, signed short) = v23;
extern signed short v25 (unsigned short, signed short);
extern signed short (*v26) (unsigned short, signed short);
extern unsigned int v27 (signed short, unsigned short, signed char, unsigned short);
extern unsigned int (*v28) (signed short, unsigned short, signed char, unsigned short);
signed short v29 (signed short, unsigned short, signed short, signed int);
signed short (*v30) (signed short, unsigned short, signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v140 = -3;
signed short v139 = -3;
unsigned short v138 = 2;

signed short v29 (signed short v141, unsigned short v142, signed short v143, signed int v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned int v147 = 2U;
unsigned short v146 = 5;
unsigned char v145 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed char v148, signed short v149)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
signed char v152 = -2;
unsigned char v151 = 5;
unsigned char v150 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed short v153)
{
history[history_index++] = (int)v153;
{
for (;;) {
unsigned short v156 = 7;
signed int v155 = -3;
unsigned int v154 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
