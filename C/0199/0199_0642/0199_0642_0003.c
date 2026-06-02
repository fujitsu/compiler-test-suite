#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v2) (unsigned short, unsigned int, unsigned char);
unsigned char v3 (signed short, unsigned char, signed char);
unsigned char (*v4) (signed short, unsigned char, signed char) = v3;
extern unsigned short v5 (signed short);
extern unsigned short (*v6) (signed short);
extern signed int v7 (unsigned short, unsigned char, unsigned char);
extern signed int (*v8) (unsigned short, unsigned char, unsigned char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (signed int, signed int, unsigned char, signed short);
extern unsigned char (*v12) (signed int, signed int, unsigned char, signed short);
extern void v13 (unsigned int, signed short, signed short, signed char);
extern void (*v14) (unsigned int, signed short, signed short, signed char);
extern signed char v15 (signed short, signed short);
extern signed char (*v16) (signed short, signed short);
extern signed char v17 (unsigned short, signed int, unsigned int);
extern signed char (*v18) (unsigned short, signed int, unsigned int);
extern signed char v19 (unsigned char, unsigned int, signed int, unsigned int);
extern signed char (*v20) (unsigned char, unsigned int, signed int, unsigned int);
extern signed int v21 (signed char, unsigned int, signed int);
extern signed int (*v22) (signed char, unsigned int, signed int);
signed short v23 (unsigned short, signed char, signed short);
signed short (*v24) (unsigned short, signed char, signed short) = v23;
unsigned char v25 (unsigned char, unsigned char);
unsigned char (*v26) (unsigned char, unsigned char) = v25;
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v115 = 1U;
signed char v114 = -4;
unsigned short v113 = 5;

unsigned char v25 (unsigned char v116, unsigned char v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 4U;
signed int v119 = 2;
unsigned int v118 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (unsigned short v121, signed char v122, signed short v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = -4;
signed short v125 = -1;
signed char v124 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v127, unsigned char v128, signed char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 4;
signed int v131 = -2;
signed int v130 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
