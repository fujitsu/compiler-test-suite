#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char);
extern unsigned char (*v2) (signed short, unsigned char);
extern signed char v3 (signed int, unsigned char);
extern signed char (*v4) (signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (signed short, unsigned short, signed int);
extern signed int (*v12) (signed short, unsigned short, signed int);
extern signed char v13 (unsigned short, signed short);
extern signed char (*v14) (unsigned short, signed short);
extern unsigned char v15 (signed int);
extern unsigned char (*v16) (signed int);
extern unsigned char v19 (signed short, signed char, unsigned int, unsigned char);
extern unsigned char (*v20) (signed short, signed char, unsigned int, unsigned char);
extern unsigned char v21 (unsigned short, signed short);
extern unsigned char (*v22) (unsigned short, signed short);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
unsigned short v25 (unsigned short, signed char, unsigned short, signed short);
unsigned short (*v26) (unsigned short, signed char, unsigned short, signed short) = v25;
extern void v27 (signed int, unsigned int);
extern void (*v28) (signed int, unsigned int);
signed short v29 (unsigned char, signed int, unsigned int);
signed short (*v30) (unsigned char, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v136 = 0U;
unsigned short v135 = 5;
signed short v134 = 2;

signed short v29 (unsigned char v137, signed int v138, unsigned int v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 2;
signed int v141 = -2;
unsigned int v140 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (unsigned short v143, signed char v144, unsigned short v145, signed short v146)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed short v149 = -1;
unsigned char v148 = 1;
signed int v147 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
