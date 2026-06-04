#include <stdlib.h>
extern signed int v1 (unsigned short, signed short);
extern signed int (*v2) (unsigned short, signed short);
unsigned short v3 (unsigned char, signed char);
unsigned short (*v4) (unsigned char, signed char) = v3;
extern signed short v5 (unsigned int, signed int, signed int);
extern signed short (*v6) (unsigned int, signed int, signed int);
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern void v9 (unsigned short, signed char);
extern void (*v10) (unsigned short, signed char);
extern unsigned short v11 (signed short, unsigned short);
extern unsigned short (*v12) (signed short, unsigned short);
extern signed int v13 (unsigned int, unsigned int, unsigned int, signed char);
extern signed int (*v14) (unsigned int, unsigned int, unsigned int, signed char);
extern unsigned char v15 (signed int, signed short);
extern unsigned char (*v16) (signed int, signed short);
extern void v17 (signed short, signed int, unsigned char, unsigned short);
extern void (*v18) (signed short, signed int, unsigned char, unsigned short);
extern signed char v19 (unsigned char, unsigned short);
extern signed char (*v20) (unsigned char, unsigned short);
extern unsigned char v21 (signed short, signed short, signed short, unsigned int);
extern unsigned char (*v22) (signed short, signed short, signed short, unsigned int);
extern unsigned int v23 (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned int (*v24) (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v149 = -1;
signed short v148 = 1;
signed short v147 = 2;

unsigned int v7 (void)
{
{
for (;;) {
signed char v152 = -2;
unsigned short v151 = 0;
unsigned char v150 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v153, signed char v154)
{
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
{
for (;;) {
unsigned char v157 = 2;
unsigned char v156 = 1;
signed short v155 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
