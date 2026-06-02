#include <stdlib.h>
extern signed short v1 (signed int, unsigned short);
extern signed short (*v2) (signed int, unsigned short);
unsigned char v3 (signed short, signed short);
unsigned char (*v4) (signed short, signed short) = v3;
extern unsigned char v5 (signed int, unsigned char, unsigned int, signed char);
extern unsigned char (*v6) (signed int, unsigned char, unsigned int, signed char);
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern unsigned char v11 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v12) (unsigned short, unsigned int, unsigned char);
extern void v13 (unsigned short, unsigned short, unsigned char, unsigned char);
extern void (*v14) (unsigned short, unsigned short, unsigned char, unsigned char);
extern void v15 (void);
extern void (*v16) (void);
extern signed char v17 (unsigned int, unsigned char, signed short, signed char);
extern signed char (*v18) (unsigned int, unsigned char, signed short, signed char);
extern signed short v19 (signed char, signed short);
extern signed short (*v20) (signed char, signed short);
signed short v21 (unsigned int, signed char, unsigned short, signed char);
signed short (*v22) (unsigned int, signed char, unsigned short, signed char) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern void v27 (void);
extern void (*v28) (void);
extern signed int v29 (unsigned int, unsigned int, unsigned short);
extern signed int (*v30) (unsigned int, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v135 = 1;
unsigned char v134 = 7;
unsigned int v133 = 0U;

signed short v21 (unsigned int v136, signed char v137, unsigned short v138, signed char v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed short v142 = -4;
unsigned short v141 = 4;
unsigned short v140 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v143, signed short v144)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed char v147 = 0;
unsigned char v146 = 1;
unsigned char v145 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
