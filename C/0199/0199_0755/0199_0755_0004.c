#include <stdlib.h>
extern signed int v1 (signed int);
extern signed int (*v2) (signed int);
extern unsigned int v3 (unsigned int, signed int, unsigned short, signed char);
extern unsigned int (*v4) (unsigned int, signed int, unsigned short, signed char);
extern unsigned short v5 (signed int, signed char);
extern unsigned short (*v6) (signed int, signed char);
extern unsigned short v7 (signed short, signed int, signed int, signed int);
extern unsigned short (*v8) (signed short, signed int, signed int, signed int);
extern void v9 (signed int);
extern void (*v10) (signed int);
signed int v11 (unsigned int, unsigned char);
signed int (*v12) (unsigned int, unsigned char) = v11;
signed int v13 (unsigned char, unsigned short, unsigned char);
signed int (*v14) (unsigned char, unsigned short, unsigned char) = v13;
extern void v15 (unsigned int, unsigned int, unsigned short);
extern void (*v16) (unsigned int, unsigned int, unsigned short);
extern unsigned int v19 (signed int, unsigned char, unsigned char);
extern unsigned int (*v20) (signed int, unsigned char, unsigned char);
extern unsigned char v21 (signed char, signed int, signed short);
extern unsigned char (*v22) (signed char, signed int, signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed int v25 (unsigned short, signed int, unsigned int);
extern signed int (*v26) (unsigned short, signed int, unsigned int);
extern unsigned char v27 (unsigned short, signed int, unsigned int, unsigned int);
extern unsigned char (*v28) (unsigned short, signed int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v150 = 3U;
unsigned short v149 = 0;
unsigned short v148 = 7;

signed int v13 (unsigned char v151, unsigned short v152, unsigned char v153)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
signed short v156 = 0;
unsigned int v155 = 3U;
unsigned int v154 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v157, unsigned char v158)
{
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
{
for (;;) {
unsigned short v161 = 4;
signed char v160 = 0;
unsigned short v159 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
