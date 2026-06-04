#include <stdlib.h>
extern unsigned char v1 (signed short, signed short, unsigned char);
extern unsigned char (*v2) (signed short, signed short, unsigned char);
signed int v3 (signed char);
signed int (*v4) (signed char) = v3;
extern signed char v5 (unsigned int, signed char, unsigned int);
extern signed char (*v6) (unsigned int, signed char, unsigned int);
extern signed char v7 (signed short, unsigned int, unsigned short);
extern signed char (*v8) (signed short, unsigned int, unsigned short);
extern void v9 (unsigned short, signed short);
extern void (*v10) (unsigned short, signed short);
signed char v11 (unsigned short, signed short, signed int, unsigned short);
signed char (*v12) (unsigned short, signed short, signed int, unsigned short) = v11;
extern unsigned short v13 (unsigned int, signed int, unsigned short, signed short);
extern unsigned short (*v14) (unsigned int, signed int, unsigned short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern void v19 (unsigned char, unsigned int);
extern void (*v20) (unsigned char, unsigned int);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed short v23 (unsigned char, unsigned short, unsigned char);
extern signed short (*v24) (unsigned char, unsigned short, unsigned char);
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
extern signed char v27 (signed char, unsigned char, unsigned int, unsigned int);
extern signed char (*v28) (signed char, unsigned char, unsigned int, unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v136 = 0U;
unsigned int v135 = 7U;
unsigned int v134 = 3U;

signed char v11 (unsigned short v137, signed short v138, signed int v139, unsigned short v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = 2;
signed short v142 = 1;
unsigned short v141 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v144)
{
history[history_index++] = (int)v144;
{
for (;;) {
unsigned char v147 = 6;
unsigned int v146 = 3U;
unsigned short v145 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
