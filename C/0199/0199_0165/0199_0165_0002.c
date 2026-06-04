#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (signed short, unsigned int, signed char, unsigned int);
extern unsigned char (*v4) (signed short, unsigned int, signed char, unsigned int);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (unsigned short, signed char);
extern signed int (*v8) (unsigned short, signed char);
unsigned short v9 (signed short, signed short, unsigned int, signed short);
unsigned short (*v10) (signed short, signed short, unsigned int, signed short) = v9;
unsigned int v11 (unsigned int, signed int);
unsigned int (*v12) (unsigned int, signed int) = v11;
extern signed int v13 (signed short, signed short, unsigned int);
extern signed int (*v14) (signed short, signed short, unsigned int);
extern signed short v15 (unsigned int, signed char);
extern signed short (*v16) (unsigned int, signed char);
extern signed int v17 (unsigned char, unsigned short);
extern signed int (*v18) (unsigned char, unsigned short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern void v21 (unsigned char, signed int, signed short, signed char);
extern void (*v22) (unsigned char, signed int, signed short, signed char);
void v23 (unsigned int, unsigned short, signed char, signed int);
void (*v24) (unsigned int, unsigned short, signed char, signed int) = v23;
extern signed short v25 (signed short, unsigned short, signed int, signed int);
extern signed short (*v26) (signed short, unsigned short, signed int, signed int);
void v27 (unsigned int, unsigned int, signed char);
void (*v28) (unsigned int, unsigned int, signed char) = v27;
extern unsigned short v29 (signed short, signed int, unsigned int);
extern unsigned short (*v30) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v112 = 1;
signed int v111 = -4;
unsigned char v110 = 1;

void v27 (unsigned int v113, unsigned int v114, signed char v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 1;
unsigned char v117 = 2;
unsigned int v116 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned int v119, unsigned short v120, signed char v121, signed int v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = -1;
unsigned int v124 = 6U;
signed short v123 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v126, signed int v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned short v130 = 7;
unsigned int v129 = 4U;
signed int v128 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed short v131, signed short v132, unsigned int v133, signed short v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned short v137 = 5;
unsigned short v136 = 4;
unsigned char v135 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
