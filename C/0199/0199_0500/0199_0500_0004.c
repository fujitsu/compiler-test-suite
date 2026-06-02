#include <stdlib.h>
signed int v3 (signed char, signed int, signed short);
signed int (*v4) (signed char, signed int, signed short) = v3;
void v5 (void);
void (*v6) (void) = v5;
extern unsigned char v7 (signed char, signed short, signed char);
extern unsigned char (*v8) (signed char, signed short, signed char);
extern unsigned short v9 (unsigned int, signed int, unsigned short);
extern unsigned short (*v10) (unsigned int, signed int, unsigned short);
extern signed char v11 (unsigned char, unsigned short, signed char, signed short);
extern signed char (*v12) (unsigned char, unsigned short, signed char, signed short);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern void v17 (unsigned char, unsigned int);
extern void (*v18) (unsigned char, unsigned int);
extern signed int v19 (signed int);
extern signed int (*v20) (signed int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v25 (signed short, signed short, unsigned char, unsigned char);
extern void (*v26) (signed short, signed short, unsigned char, unsigned char);
extern void v27 (unsigned short, unsigned int, unsigned int, unsigned char);
extern void (*v28) (unsigned short, unsigned int, unsigned int, unsigned char);
unsigned int v29 (signed int, signed char);
unsigned int (*v30) (signed int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v142 = 2;
unsigned short v141 = 7;
signed short v140 = -2;

unsigned int v29 (signed int v143, signed char v144)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned int v147 = 7U;
unsigned int v146 = 4U;
unsigned short v145 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
unsigned int v150 = 0U;
signed int v149 = -2;
signed char v148 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v151, signed int v152, signed short v153)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
signed short v156 = -3;
signed short v155 = 0;
unsigned short v154 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
