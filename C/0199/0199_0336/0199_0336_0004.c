#include <stdlib.h>
extern unsigned char v3 (unsigned char, unsigned short, signed int, unsigned short);
extern unsigned char (*v4) (unsigned char, unsigned short, signed int, unsigned short);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned int v7 (unsigned short, signed char, signed char);
extern unsigned int (*v8) (unsigned short, signed char, signed char);
void v9 (signed short, unsigned short);
void (*v10) (signed short, unsigned short) = v9;
extern signed int v11 (unsigned short, unsigned short);
extern signed int (*v12) (unsigned short, unsigned short);
extern unsigned short v13 (signed int, unsigned char, signed short);
extern unsigned short (*v14) (signed int, unsigned char, signed short);
extern void v15 (signed short, unsigned short, signed int);
extern void (*v16) (signed short, unsigned short, signed int);
extern signed int v17 (signed short, unsigned short, unsigned int);
extern signed int (*v18) (signed short, unsigned short, unsigned int);
extern signed short v19 (unsigned int, unsigned short, unsigned int);
extern signed short (*v20) (unsigned int, unsigned short, unsigned int);
extern unsigned int v21 (unsigned int, signed short);
extern unsigned int (*v22) (unsigned int, signed short);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
unsigned char v25 (unsigned int, signed short, signed char);
unsigned char (*v26) (unsigned int, signed short, signed char) = v25;
extern unsigned short v27 (unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, unsigned short);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v148 = 3;
unsigned int v147 = 4U;
unsigned char v146 = 0;

unsigned char v25 (unsigned int v149, signed short v150, signed char v151)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned char v154 = 1;
signed char v153 = -4;
signed int v152 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed short v155, unsigned short v156)
{
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
{
for (;;) {
unsigned char v159 = 6;
unsigned int v158 = 2U;
signed short v157 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
