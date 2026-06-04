#include <stdlib.h>
extern void v1 (signed char, unsigned char);
extern void (*v2) (signed char, unsigned char);
extern unsigned char v3 (unsigned short);
extern unsigned char (*v4) (unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned short v9 (unsigned char, unsigned int, signed short);
extern unsigned short (*v10) (unsigned char, unsigned int, signed short);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
unsigned int v13 (signed char, unsigned short);
unsigned int (*v14) (signed char, unsigned short) = v13;
extern signed char v15 (signed char, unsigned short, signed int);
extern signed char (*v16) (signed char, unsigned short, signed int);
extern unsigned int v17 (signed char, signed int);
extern unsigned int (*v18) (signed char, signed int);
unsigned short v19 (signed char, unsigned int, unsigned short, unsigned short);
unsigned short (*v20) (signed char, unsigned int, unsigned short, unsigned short) = v19;
extern signed short v21 (signed char, unsigned int, unsigned short);
extern signed short (*v22) (signed char, unsigned int, unsigned short);
unsigned char v23 (signed int, unsigned char);
unsigned char (*v24) (signed int, unsigned char) = v23;
void v25 (unsigned short);
void (*v26) (unsigned short) = v25;
extern void v29 (signed char, unsigned char);
extern void (*v30) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v113 = -3;
signed short v112 = -1;
signed int v111 = -2;

void v25 (unsigned short v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = 3;
signed short v116 = -1;
signed int v115 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed int v118, unsigned char v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 3;
signed char v121 = -2;
unsigned char v120 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed char v123, unsigned int v124, unsigned short v125, unsigned short v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 1U;
signed char v128 = -1;
unsigned int v127 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed char v130, unsigned short v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = -4;
signed char v133 = -3;
unsigned short v132 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
