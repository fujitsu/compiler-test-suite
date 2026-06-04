#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned char, signed short);
extern unsigned char (*v2) (signed char, unsigned char, signed short);
signed int v3 (signed char, signed short, unsigned char);
signed int (*v4) (signed char, signed short, unsigned char) = v3;
extern signed short v7 (unsigned int, signed char);
extern signed short (*v8) (unsigned int, signed char);
extern signed char v9 (unsigned short, unsigned char);
extern signed char (*v10) (unsigned short, unsigned char);
extern signed int v13 (signed int, unsigned int);
extern signed int (*v14) (signed int, unsigned int);
extern signed int v15 (signed int, signed short);
extern signed int (*v16) (signed int, signed short);
extern unsigned int v17 (signed int, signed int);
extern unsigned int (*v18) (signed int, signed int);
extern signed short v19 (unsigned char, unsigned int);
extern signed short (*v20) (unsigned char, unsigned int);
extern signed short v21 (signed short, unsigned char, signed int);
extern signed short (*v22) (signed short, unsigned char, signed int);
extern signed short v23 (unsigned int, signed short);
extern signed short (*v24) (unsigned int, signed short);
extern signed int v25 (signed int, unsigned short);
extern signed int (*v26) (signed int, unsigned short);
unsigned short v27 (unsigned short, unsigned short, unsigned char, signed short);
unsigned short (*v28) (unsigned short, unsigned short, unsigned char, signed short) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v119 = -1;
unsigned int v118 = 5U;
signed int v117 = -1;

unsigned short v27 (unsigned short v120, unsigned short v121, unsigned char v122, signed short v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 0;
unsigned short v125 = 4;
unsigned char v124 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v127, signed short v128, unsigned char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 0U;
unsigned int v131 = 2U;
signed int v130 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
