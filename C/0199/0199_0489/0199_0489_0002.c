#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern signed int v3 (unsigned char, signed int, unsigned short, signed short);
extern signed int (*v4) (unsigned char, signed int, unsigned short, signed short);
extern signed int v5 (unsigned char, unsigned short);
extern signed int (*v6) (unsigned char, unsigned short);
extern unsigned char v7 (signed char);
extern unsigned char (*v8) (signed char);
extern unsigned int v9 (signed short, unsigned short, signed char);
extern unsigned int (*v10) (signed short, unsigned short, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (unsigned char, signed int, unsigned int, unsigned char);
extern unsigned short (*v14) (unsigned char, signed int, unsigned int, unsigned char);
void v15 (signed int, signed char, signed int);
void (*v16) (signed int, signed char, signed int) = v15;
extern unsigned char v19 (signed short, signed char, signed char, unsigned short);
extern unsigned char (*v20) (signed short, signed char, signed char, unsigned short);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern signed int v23 (unsigned int, unsigned int, signed short);
extern signed int (*v24) (unsigned int, unsigned int, signed short);
extern signed short v25 (unsigned int, signed int, signed short);
extern signed short (*v26) (unsigned int, signed int, signed short);
extern signed char v27 (unsigned char, unsigned short);
extern signed char (*v28) (unsigned char, unsigned short);
unsigned char v29 (signed char, unsigned char, unsigned short, signed short);
unsigned char (*v30) (signed char, unsigned char, unsigned short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v88 = 3;
unsigned int v87 = 5U;
unsigned int v86 = 3U;

unsigned char v29 (signed char v89, unsigned char v90, unsigned short v91, signed short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 6;
unsigned char v94 = 7;
unsigned short v93 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed int v96, signed char v97, signed int v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 4;
signed short v100 = 0;
signed short v99 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
