#include <stdlib.h>
extern signed short v1 (signed int, signed int, signed short, signed int);
extern signed short (*v2) (signed int, signed int, signed short, signed int);
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern unsigned char v5 (unsigned char, signed short, unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short, unsigned char, signed short);
unsigned int v7 (unsigned char);
unsigned int (*v8) (unsigned char) = v7;
extern signed char v9 (unsigned short, signed short, signed char, unsigned int);
extern signed char (*v10) (unsigned short, signed short, signed char, unsigned int);
extern void v11 (unsigned short, signed short);
extern void (*v12) (unsigned short, signed short);
extern signed short v13 (unsigned int, signed int, signed char);
extern signed short (*v14) (unsigned int, signed int, signed char);
extern unsigned int v15 (signed int, signed short);
extern unsigned int (*v16) (signed int, signed short);
extern unsigned int v19 (unsigned int, unsigned short, unsigned int);
extern unsigned int (*v20) (unsigned int, unsigned short, unsigned int);
extern unsigned int v21 (signed char);
extern unsigned int (*v22) (signed char);
unsigned short v23 (signed short, unsigned short, signed char, unsigned char);
unsigned short (*v24) (signed short, unsigned short, signed char, unsigned char) = v23;
extern signed int v25 (unsigned char, signed char, unsigned int, unsigned short);
extern signed int (*v26) (unsigned char, signed char, unsigned int, unsigned short);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v109 = 0;
unsigned char v108 = 7;
unsigned int v107 = 2U;

unsigned short v23 (signed short v110, unsigned short v111, signed char v112, unsigned char v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -3;
signed char v115 = 2;
signed int v114 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 1;
unsigned int v119 = 6U;
signed char v118 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
