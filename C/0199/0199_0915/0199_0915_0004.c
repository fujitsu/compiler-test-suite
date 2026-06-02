#include <stdlib.h>
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
extern signed char v5 (signed short, signed short);
extern signed char (*v6) (signed short, signed short);
void v7 (signed int, signed char, signed short);
void (*v8) (signed int, signed char, signed short) = v7;
extern signed int v9 (unsigned short, unsigned int, unsigned char);
extern signed int (*v10) (unsigned short, unsigned int, unsigned char);
extern signed char v11 (signed short, unsigned char);
extern signed char (*v12) (signed short, unsigned char);
unsigned char v13 (signed short, signed int, unsigned char);
unsigned char (*v14) (signed short, signed int, unsigned char) = v13;
unsigned int v15 (signed int, signed char, unsigned int, unsigned char);
unsigned int (*v16) (signed int, signed char, unsigned int, unsigned char) = v15;
signed int v19 (signed int, unsigned char, signed int);
signed int (*v20) (signed int, unsigned char, signed int) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed int v23 (signed int, signed int, signed int);
extern signed int (*v24) (signed int, signed int, signed int);
extern unsigned char v25 (signed short, unsigned short);
extern unsigned char (*v26) (signed short, unsigned short);
extern void v27 (void);
extern void (*v28) (void);
extern signed short v29 (unsigned int, signed short, unsigned char, signed int);
extern signed short (*v30) (unsigned int, signed short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v102 = 0;
unsigned char v101 = 2;
unsigned int v100 = 3U;

signed int v19 (signed int v103, unsigned char v104, signed int v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed int v108 = -1;
signed char v107 = 2;
signed int v106 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed int v109, signed char v110, unsigned int v111, unsigned char v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = -2;
unsigned short v114 = 7;
unsigned char v113 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed short v116, signed int v117, unsigned char v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = 3;
unsigned char v120 = 6;
signed char v119 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed int v122, signed char v123, signed short v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 5U;
signed int v126 = -1;
signed char v125 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
