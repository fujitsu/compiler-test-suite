#include <stdlib.h>
extern void v3 (unsigned int, signed char, signed short);
extern void (*v4) (unsigned int, signed char, signed short);
extern signed char v5 (signed char, unsigned short, signed short);
extern signed char (*v6) (signed char, unsigned short, signed short);
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
signed int v9 (unsigned int, signed short, signed int);
signed int (*v10) (unsigned int, signed short, signed int) = v9;
extern signed short v11 (signed char, unsigned char, signed short, signed char);
extern signed short (*v12) (signed char, unsigned char, signed short, signed char);
extern signed char v13 (unsigned int);
extern signed char (*v14) (unsigned int);
extern unsigned char v15 (unsigned short, signed char, unsigned short);
extern unsigned char (*v16) (unsigned short, signed char, unsigned short);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (unsigned short, signed int, unsigned char, unsigned char);
extern signed char (*v20) (unsigned short, signed int, unsigned char, unsigned char);
extern void v21 (unsigned int, signed int);
extern void (*v22) (unsigned int, signed int);
unsigned char v23 (unsigned char, signed char, unsigned char, signed int);
unsigned char (*v24) (unsigned char, signed char, unsigned char, signed int) = v23;
extern unsigned short v25 (signed int, signed short);
extern unsigned short (*v26) (signed int, signed short);
unsigned int v27 (signed int, unsigned int);
unsigned int (*v28) (signed int, unsigned int) = v27;
extern signed char v29 (signed int, signed int, signed int, unsigned int);
extern signed char (*v30) (signed int, signed int, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v138 = 5;
unsigned char v137 = 2;
signed char v136 = 2;

unsigned int v27 (signed int v139, unsigned int v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = 3;
signed short v142 = -4;
unsigned short v141 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned char v144, signed char v145, unsigned char v146, signed int v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed short v150 = -3;
signed int v149 = -2;
signed short v148 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned int v151, signed short v152, signed int v153)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
unsigned short v156 = 6;
unsigned short v155 = 6;
signed int v154 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
