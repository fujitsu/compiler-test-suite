#include <stdlib.h>
extern signed short v1 (signed int, signed char);
extern signed short (*v2) (signed int, signed char);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
unsigned char v5 (unsigned char, unsigned short, unsigned char, unsigned char);
unsigned char (*v6) (unsigned char, unsigned short, unsigned char, unsigned char) = v5;
extern signed short v7 (unsigned short, signed short, unsigned char, unsigned short);
extern signed short (*v8) (unsigned short, signed short, unsigned char, unsigned short);
extern unsigned char v9 (unsigned int, unsigned int, unsigned short);
extern unsigned char (*v10) (unsigned int, unsigned int, unsigned short);
extern unsigned char v11 (unsigned char, unsigned short, unsigned short, unsigned short);
extern unsigned char (*v12) (unsigned char, unsigned short, unsigned short, unsigned short);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern void v15 (signed short, unsigned char);
extern void (*v16) (signed short, unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned int v19 (signed short, signed char, signed char, unsigned char);
extern unsigned int (*v20) (signed short, signed char, signed char, unsigned char);
extern void v21 (signed char, signed int, signed char);
extern void (*v22) (signed char, signed int, signed char);
unsigned short v23 (signed short, signed int, unsigned int, signed short);
unsigned short (*v24) (signed short, signed int, unsigned int, signed short) = v23;
extern signed char v25 (signed int, unsigned short, unsigned char);
extern signed char (*v26) (signed int, unsigned short, unsigned char);
extern signed char v27 (signed int, signed char, signed int);
extern signed char (*v28) (signed int, signed char, signed int);
void v29 (signed char, signed char, unsigned char, signed int);
void (*v30) (signed char, signed char, unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v135 = 0;
signed char v134 = -3;
unsigned char v133 = 1;

void v29 (signed char v136, signed char v137, unsigned char v138, signed int v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned short v142 = 7;
unsigned char v141 = 2;
unsigned int v140 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (signed short v143, signed int v144, unsigned int v145, signed short v146)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned short v149 = 3;
unsigned int v148 = 6U;
signed char v147 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v150, unsigned short v151, unsigned char v152, unsigned char v153)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
unsigned char v156 = 0;
signed short v155 = -4;
unsigned char v154 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
