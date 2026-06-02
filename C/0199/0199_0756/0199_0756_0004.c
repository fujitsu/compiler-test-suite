#include <stdlib.h>
signed int v3 (signed int, signed char, unsigned int, signed char);
signed int (*v4) (signed int, signed char, unsigned int, signed char) = v3;
extern signed short v5 (unsigned short, signed short, signed char, unsigned int);
extern signed short (*v6) (unsigned short, signed short, signed char, unsigned int);
extern signed int v7 (unsigned char, unsigned short, unsigned int);
extern signed int (*v8) (unsigned char, unsigned short, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (signed int, signed short, signed char, unsigned char);
extern signed char (*v12) (signed int, signed short, signed char, unsigned char);
signed short v13 (signed char, signed int, signed char);
signed short (*v14) (signed char, signed int, signed char) = v13;
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
unsigned char v17 (unsigned int);
unsigned char (*v18) (unsigned int) = v17;
extern unsigned short v19 (unsigned short, unsigned char, signed int, signed char);
extern unsigned short (*v20) (unsigned short, unsigned char, signed int, signed char);
extern signed int v21 (signed short, unsigned char, unsigned char, unsigned short);
extern signed int (*v22) (signed short, unsigned char, unsigned char, unsigned short);
extern signed char v23 (signed int, unsigned int, unsigned char);
extern signed char (*v24) (signed int, unsigned int, unsigned char);
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (signed short, unsigned int, unsigned short);
extern void (*v30) (signed short, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v135 = -2;
signed char v134 = 2;
signed short v133 = -2;

unsigned char v17 (unsigned int v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
unsigned char v139 = 4;
signed int v138 = 0;
unsigned int v137 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed char v140, signed int v141, signed char v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned char v145 = 4;
signed char v144 = -3;
signed short v143 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v146, signed char v147, unsigned int v148, signed char v149)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
signed short v152 = 2;
signed int v151 = 0;
unsigned short v150 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
