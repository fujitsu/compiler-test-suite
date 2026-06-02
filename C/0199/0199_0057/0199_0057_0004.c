#include <stdlib.h>
signed char v3 (signed short);
signed char (*v4) (signed short) = v3;
extern signed char v5 (signed int, signed short, signed int, signed char);
extern signed char (*v6) (signed int, signed short, signed int, signed char);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern signed char v11 (unsigned int, signed short, unsigned short, unsigned int);
extern signed char (*v12) (unsigned int, signed short, unsigned short, unsigned int);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
extern unsigned int v15 (unsigned short, unsigned char, unsigned int);
extern unsigned int (*v16) (unsigned short, unsigned char, unsigned int);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern unsigned short v23 (unsigned int, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v24) (unsigned int, unsigned short, unsigned short, unsigned int);
extern void v25 (signed int, unsigned int);
extern void (*v26) (signed int, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
unsigned short v29 (signed int, unsigned char, signed short, signed int);
unsigned short (*v30) (signed int, unsigned char, signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v138 = 1;
signed short v137 = 3;
signed char v136 = 2;

unsigned short v29 (signed int v139, unsigned char v140, signed short v141, signed int v142)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 3U;
unsigned int v144 = 6U;
signed char v143 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed short v146)
{
history[history_index++] = (int)v146;
{
for (;;) {
unsigned char v149 = 5;
signed int v148 = 1;
unsigned short v147 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
