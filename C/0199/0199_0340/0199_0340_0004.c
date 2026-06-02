#include <stdlib.h>
extern signed int v1 (unsigned char, signed int, signed short, unsigned short);
extern signed int (*v2) (unsigned char, signed int, signed short, unsigned short);
extern unsigned int v3 (signed short, unsigned char);
extern unsigned int (*v4) (signed short, unsigned char);
extern signed int v5 (unsigned char, unsigned short, unsigned int);
extern signed int (*v6) (unsigned char, unsigned short, unsigned int);
void v7 (void);
void (*v8) (void) = v7;
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned char v11 (signed short, unsigned short, unsigned short, signed int);
extern unsigned char (*v12) (signed short, unsigned short, unsigned short, signed int);
extern unsigned int v13 (signed char, unsigned short, signed short, unsigned int);
extern unsigned int (*v14) (signed char, unsigned short, signed short, unsigned int);
extern signed short v15 (signed char, unsigned int, signed short);
extern signed short (*v16) (signed char, unsigned int, signed short);
extern signed char v17 (unsigned short, signed short);
extern signed char (*v18) (unsigned short, signed short);
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
void v23 (signed char, unsigned short, signed short);
void (*v24) (signed char, unsigned short, signed short) = v23;
extern unsigned char v25 (signed int, unsigned int, unsigned short);
extern unsigned char (*v26) (signed int, unsigned int, unsigned short);
extern void v27 (unsigned char, unsigned short, unsigned int, unsigned int);
extern void (*v28) (unsigned char, unsigned short, unsigned int, unsigned int);
extern void v29 (signed int, signed char, unsigned short);
extern void (*v30) (signed int, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v151 = 2U;
unsigned short v150 = 0;
signed short v149 = -4;

void v23 (signed char v152, unsigned short v153, signed short v154)
{
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
{
for (;;) {
signed char v157 = 0;
unsigned char v156 = 5;
signed short v155 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
unsigned char v160 = 7;
signed short v159 = -3;
unsigned char v158 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
