#include <stdlib.h>
extern signed char v1 (signed char, unsigned int, unsigned int, signed short);
extern signed char (*v2) (signed char, unsigned int, unsigned int, signed short);
extern void v3 (void);
extern void (*v4) (void);
extern signed short v5 (signed char, unsigned short);
extern signed short (*v6) (signed char, unsigned short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed char v9 (unsigned char, unsigned char, signed short);
extern signed char (*v10) (unsigned char, unsigned char, signed short);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
void v13 (signed int, signed short, signed char, unsigned int);
void (*v14) (signed int, signed short, signed char, unsigned int) = v13;
extern unsigned short v15 (signed short, signed int);
extern unsigned short (*v16) (signed short, signed int);
extern void v17 (void);
extern void (*v18) (void);
extern signed char v19 (unsigned int, signed char, unsigned int, signed short);
extern signed char (*v20) (unsigned int, signed char, unsigned int, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
unsigned short v23 (unsigned char);
unsigned short (*v24) (unsigned char) = v23;
extern signed char v25 (unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int);
extern signed short v27 (unsigned char, unsigned char, unsigned short);
extern signed short (*v28) (unsigned char, unsigned char, unsigned short);
extern signed short v29 (unsigned int, signed char, unsigned char);
extern signed short (*v30) (unsigned int, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v115 = -4;
signed char v114 = 1;
signed int v113 = 1;

unsigned short v23 (unsigned char v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = 3;
signed char v118 = 0;
signed int v117 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed int v120, signed short v121, signed char v122, unsigned int v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = -1;
unsigned char v125 = 0;
signed short v124 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
