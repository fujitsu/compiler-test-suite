#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
unsigned int v5 (signed short, signed int);
unsigned int (*v6) (signed short, signed int) = v5;
signed int v7 (void);
signed int (*v8) (void) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (signed char, unsigned char, unsigned char);
extern signed int (*v12) (signed char, unsigned char, unsigned char);
unsigned int v13 (unsigned char, signed short, unsigned int);
unsigned int (*v14) (unsigned char, signed short, unsigned int) = v13;
signed int v15 (signed char);
signed int (*v16) (signed char) = v15;
extern signed int v17 (signed short, unsigned char, signed char);
extern signed int (*v18) (signed short, unsigned char, signed char);
extern signed short v19 (signed short, unsigned char);
extern signed short (*v20) (signed short, unsigned char);
extern signed char v23 (unsigned int, unsigned char);
extern signed char (*v24) (unsigned int, unsigned char);
extern signed char v25 (signed int, unsigned int);
extern signed char (*v26) (signed int, unsigned int);
signed char v27 (signed short, signed char, unsigned char);
signed char (*v28) (signed short, signed char, unsigned char) = v27;
extern signed short v29 (unsigned int, unsigned short);
extern signed short (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v113 = -3;
signed char v112 = 2;
unsigned int v111 = 3U;

signed char v27 (signed short v114, signed char v115, unsigned char v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 2;
unsigned short v118 = 4;
unsigned short v117 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed char v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = -2;
unsigned int v122 = 3U;
unsigned int v121 = 0U;
trace++;
switch (trace)
{
case 2: 
return -3;
case 4: 
return -2;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v124, signed short v125, unsigned int v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = 2;
signed char v128 = -2;
signed short v127 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
signed int v132 = -1;
signed char v131 = 0;
signed short v130 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed short v133, signed int v134)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = -1;
unsigned int v136 = 2U;
signed int v135 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
