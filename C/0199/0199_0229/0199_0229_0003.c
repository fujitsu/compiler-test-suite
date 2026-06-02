#include <stdlib.h>
extern void v1 (unsigned short, signed short);
extern void (*v2) (unsigned short, signed short);
extern signed short v3 (unsigned short, unsigned int, unsigned short, unsigned short);
extern signed short (*v4) (unsigned short, unsigned int, unsigned short, unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
signed short v7 (unsigned short, unsigned int, unsigned char);
signed short (*v8) (unsigned short, unsigned int, unsigned char) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
signed int v11 (signed int, signed char);
signed int (*v12) (signed int, signed char) = v11;
extern signed char v13 (unsigned int, signed int, unsigned char, signed int);
extern signed char (*v14) (unsigned int, signed int, unsigned char, signed int);
extern void v15 (void);
extern void (*v16) (void);
unsigned short v17 (signed int, signed short);
unsigned short (*v18) (signed int, signed short) = v17;
extern signed char v19 (signed int, signed int, unsigned short, unsigned short);
extern signed char (*v20) (signed int, signed int, unsigned short, unsigned short);
signed char v21 (signed int, unsigned short);
signed char (*v22) (signed int, unsigned short) = v21;
extern signed char v23 (unsigned char, unsigned int);
extern signed char (*v24) (unsigned char, unsigned int);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern signed int v29 (unsigned char);
extern signed int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v103 = 3;
signed char v102 = -3;
signed char v101 = -3;

signed char v25 (void)
{
{
for (;;) {
unsigned short v106 = 4;
unsigned int v105 = 1U;
unsigned char v104 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (signed int v107, unsigned short v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed int v111 = -3;
signed short v110 = 1;
unsigned short v109 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed int v112, signed short v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = -1;
unsigned char v115 = 2;
signed char v114 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed int v117, signed char v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = 3;
unsigned short v120 = 2;
signed short v119 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v122, unsigned int v123, unsigned char v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 3;
unsigned short v126 = 6;
signed int v125 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
