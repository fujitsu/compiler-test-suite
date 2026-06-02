#include <stdlib.h>
extern unsigned int v1 (signed int, signed short);
extern unsigned int (*v2) (signed int, signed short);
extern signed char v3 (unsigned int, unsigned char, unsigned int);
extern signed char (*v4) (unsigned int, unsigned char, unsigned int);
extern unsigned int v5 (signed char, unsigned int, signed int);
extern unsigned int (*v6) (signed char, unsigned int, signed int);
extern unsigned int v7 (unsigned char, unsigned int, unsigned short, unsigned char);
extern unsigned int (*v8) (unsigned char, unsigned int, unsigned short, unsigned char);
signed short v9 (unsigned char, unsigned int, unsigned char);
signed short (*v10) (unsigned char, unsigned int, unsigned char) = v9;
extern signed char v11 (signed short, signed char, signed short);
extern signed char (*v12) (signed short, signed char, signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
signed int v17 (unsigned int, signed short, unsigned int);
signed int (*v18) (unsigned int, signed short, unsigned int) = v17;
extern signed int v19 (signed short, unsigned char, signed short);
extern signed int (*v20) (signed short, unsigned char, signed short);
signed short v21 (unsigned int, signed char);
signed short (*v22) (unsigned int, signed char) = v21;
extern unsigned int v23 (signed char, signed char);
extern unsigned int (*v24) (signed char, signed char);
extern void v25 (void);
extern void (*v26) (void);
extern signed int v27 (signed short, signed int);
extern signed int (*v28) (signed short, signed int);
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v136 = -4;
unsigned int v135 = 0U;
signed int v134 = -2;

signed short v21 (unsigned int v137, signed char v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned short v141 = 0;
unsigned char v140 = 0;
signed int v139 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned int v142, signed short v143, unsigned int v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed short v147 = 0;
signed int v146 = 1;
unsigned short v145 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned char v148, unsigned int v149, unsigned char v150)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned short v153 = 2;
unsigned int v152 = 3U;
unsigned short v151 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
