#include <stdlib.h>
extern signed char v1 (unsigned char, signed int, unsigned short, signed int);
extern signed char (*v2) (unsigned char, signed int, unsigned short, signed int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (unsigned int);
extern signed short (*v6) (unsigned int);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
signed int v13 (signed char, unsigned short, unsigned char);
signed int (*v14) (signed char, unsigned short, unsigned char) = v13;
extern signed char v15 (unsigned int, signed int, unsigned char);
extern signed char (*v16) (unsigned int, signed int, unsigned char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
signed short v21 (signed int, signed char);
signed short (*v22) (signed int, signed char) = v21;
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed char v138 = -1;
unsigned char v137 = 3;
unsigned char v136 = 4;

unsigned short v27 (void)
{
{
for (;;) {
unsigned short v141 = 3;
unsigned short v140 = 0;
unsigned short v139 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed int v142, signed char v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned char v146 = 1;
signed short v145 = -1;
signed int v144 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed char v147, unsigned short v148, unsigned char v149)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
unsigned char v152 = 6;
signed short v151 = 1;
signed char v150 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
