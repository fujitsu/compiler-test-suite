#include <stdlib.h>
extern signed short v1 (signed int, unsigned char);
extern signed short (*v2) (signed int, unsigned char);
extern signed int v3 (signed short, signed char, signed short);
extern signed int (*v4) (signed short, signed char, signed short);
extern unsigned int v5 (signed int, signed char);
extern unsigned int (*v6) (signed int, signed char);
unsigned char v7 (unsigned short, unsigned char);
unsigned char (*v8) (unsigned short, unsigned char) = v7;
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern unsigned char v11 (unsigned int, signed short, signed int, signed int);
extern unsigned char (*v12) (unsigned int, signed short, signed int, signed int);
extern void v13 (unsigned short, signed char);
extern void (*v14) (unsigned short, signed char);
extern unsigned char v15 (unsigned int, unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, unsigned int, signed short);
extern void v17 (unsigned char, signed int, signed short);
extern void (*v18) (unsigned char, signed int, signed short);
extern unsigned short v19 (unsigned short);
extern unsigned short (*v20) (unsigned short);
extern unsigned int v21 (unsigned char, unsigned short);
extern unsigned int (*v22) (unsigned char, unsigned short);
extern unsigned short v23 (signed int, unsigned char, signed int, unsigned int);
extern unsigned short (*v24) (signed int, unsigned char, signed int, unsigned int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned char v27 (signed short, signed char, signed int, signed int);
unsigned char (*v28) (signed short, signed char, signed int, signed int) = v27;
extern signed char v29 (signed char, unsigned short, unsigned short);
extern signed char (*v30) (signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v136 = 1;
unsigned int v135 = 3U;
signed char v134 = 1;

unsigned char v27 (signed short v137, signed char v138, signed int v139, signed int v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = 3;
signed int v142 = 3;
unsigned int v141 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v144, unsigned char v145)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned short v148 = 7;
signed short v147 = 1;
unsigned short v146 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
