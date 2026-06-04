#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern unsigned int v3 (signed short, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int);
extern signed short v5 (signed int, signed short);
extern signed short (*v6) (signed int, signed short);
extern unsigned char v7 (signed char, signed char);
extern unsigned char (*v8) (signed char, signed char);
extern unsigned int v9 (signed short, unsigned char, signed char, signed char);
extern unsigned int (*v10) (signed short, unsigned char, signed char, signed char);
signed int v11 (signed char, signed short, unsigned char, unsigned int);
signed int (*v12) (signed char, signed short, unsigned char, unsigned int) = v11;
extern unsigned int v13 (unsigned short, signed int);
extern unsigned int (*v14) (unsigned short, signed int);
unsigned char v15 (signed char, unsigned char, signed short);
unsigned char (*v16) (signed char, unsigned char, signed short) = v15;
void v17 (unsigned char);
void (*v18) (unsigned char) = v17;
extern signed char v19 (signed int);
extern signed char (*v20) (signed int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned char v23 (unsigned int);
extern unsigned char (*v24) (unsigned int);
extern unsigned char v25 (signed short, unsigned char);
extern unsigned char (*v26) (signed short, unsigned char);
unsigned char v27 (unsigned char, signed char, signed int, unsigned int);
unsigned char (*v28) (unsigned char, signed char, signed int, unsigned int) = v27;
extern unsigned char v29 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v109 = 3;
unsigned int v108 = 2U;
signed int v107 = -1;

unsigned char v27 (unsigned char v110, signed char v111, signed int v112, unsigned int v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 0;
unsigned char v115 = 3;
unsigned int v114 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned char v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 3;
unsigned short v119 = 1;
unsigned char v118 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed char v121, unsigned char v122, signed short v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 7;
signed char v125 = -2;
signed int v124 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed char v127, signed short v128, unsigned char v129, unsigned int v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = -1;
signed char v132 = -4;
unsigned short v131 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
