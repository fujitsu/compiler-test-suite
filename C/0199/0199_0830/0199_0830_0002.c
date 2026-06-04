#include <stdlib.h>
signed char v3 (unsigned short);
signed char (*v4) (unsigned short) = v3;
extern signed char v5 (signed int, unsigned int);
extern signed char (*v6) (signed int, unsigned int);
extern void v7 (unsigned short, signed short);
extern void (*v8) (unsigned short, signed short);
unsigned short v9 (unsigned short, signed int);
unsigned short (*v10) (unsigned short, signed int) = v9;
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern signed char v13 (signed int, signed short);
extern signed char (*v14) (signed int, signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v17 (unsigned char, unsigned int, unsigned int, signed char);
extern signed short (*v18) (unsigned char, unsigned int, unsigned int, signed char);
extern signed short v19 (signed int, signed char, unsigned short, signed char);
extern signed short (*v20) (signed int, signed char, unsigned short, signed char);
extern signed int v21 (unsigned int, unsigned short);
extern signed int (*v22) (unsigned int, unsigned short);
extern unsigned short v23 (unsigned int, unsigned int, signed char, unsigned int);
extern unsigned short (*v24) (unsigned int, unsigned int, signed char, unsigned int);
extern signed int v25 (unsigned char, signed char, signed short, signed char);
extern signed int (*v26) (unsigned char, signed char, signed short, signed char);
extern void v27 (unsigned int, unsigned int, signed char, unsigned int);
extern void (*v28) (unsigned int, unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v110 = 6;
signed int v109 = 2;
signed short v108 = 3;

unsigned short v9 (unsigned short v111, signed int v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 3U;
signed short v114 = -3;
unsigned short v113 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned short v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
unsigned char v119 = 7;
signed int v118 = 1;
unsigned int v117 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
