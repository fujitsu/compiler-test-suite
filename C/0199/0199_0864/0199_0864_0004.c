#include <stdlib.h>
extern void v3 (signed int);
extern void (*v4) (signed int);
void v5 (signed int, unsigned int, signed char, unsigned char);
void (*v6) (signed int, unsigned int, signed char, unsigned char) = v5;
signed int v7 (signed char, signed short, signed int, signed char);
signed int (*v8) (signed char, signed short, signed int, signed char) = v7;
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern signed char v13 (unsigned short, signed short);
extern signed char (*v14) (unsigned short, signed short);
extern unsigned short v15 (signed int, signed char);
extern unsigned short (*v16) (signed int, signed char);
signed int v17 (unsigned int, signed short);
signed int (*v18) (unsigned int, signed short) = v17;
extern signed int v19 (unsigned char, signed int, unsigned int, unsigned int);
extern signed int (*v20) (unsigned char, signed int, unsigned int, unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (unsigned short, signed short);
extern unsigned int (*v24) (unsigned short, signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern void v29 (unsigned short, signed short, signed short, unsigned char);
extern void (*v30) (unsigned short, signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v138 = 5;
signed short v137 = -3;
unsigned int v136 = 2U;

signed int v17 (unsigned int v139, signed short v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed int v143 = 0;
unsigned short v142 = 2;
unsigned int v141 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed char v144, signed short v145, signed int v146, signed char v147)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed char v150 = -4;
unsigned short v149 = 5;
unsigned int v148 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed int v151, unsigned int v152, signed char v153, unsigned char v154)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
{
for (;;) {
signed char v157 = -3;
unsigned short v156 = 6;
unsigned short v155 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
