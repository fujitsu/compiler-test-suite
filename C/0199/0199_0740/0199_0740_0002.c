#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, unsigned char);
extern unsigned char (*v2) (unsigned short, signed char, unsigned char);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
extern void v5 (unsigned char, signed int, unsigned short, signed int);
extern void (*v6) (unsigned char, signed int, unsigned short, signed int);
extern void v7 (signed int, unsigned char, signed char);
extern void (*v8) (signed int, unsigned char, signed char);
void v11 (signed char);
void (*v12) (signed char) = v11;
extern signed int v13 (unsigned int, signed int, unsigned int);
extern signed int (*v14) (unsigned int, signed int, unsigned int);
extern unsigned char v15 (unsigned int);
extern unsigned char (*v16) (unsigned int);
unsigned char v17 (signed char, unsigned short, signed char);
unsigned char (*v18) (signed char, unsigned short, signed char) = v17;
signed int v19 (unsigned int, unsigned char, unsigned char);
signed int (*v20) (unsigned int, unsigned char, unsigned char) = v19;
void v21 (signed char, signed int);
void (*v22) (signed char, signed int) = v21;
extern signed short v23 (unsigned int, unsigned short, unsigned int);
extern signed short (*v24) (unsigned int, unsigned short, unsigned int);
extern signed short v27 (unsigned short, unsigned short, unsigned char, signed char);
extern signed short (*v28) (unsigned short, unsigned short, unsigned char, signed char);
extern signed char v29 (unsigned int, signed short, signed int);
extern signed char (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v104 = -1;
unsigned short v103 = 6;
signed int v102 = -1;

void v21 (signed char v105, signed int v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 0U;
signed short v108 = 1;
signed short v107 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned int v110, unsigned char v111, unsigned char v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed short v115 = 0;
signed int v114 = 0;
unsigned int v113 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed char v116, unsigned short v117, signed char v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned short v121 = 6;
signed short v120 = -1;
signed char v119 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 7;
signed int v124 = -2;
unsigned short v123 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
