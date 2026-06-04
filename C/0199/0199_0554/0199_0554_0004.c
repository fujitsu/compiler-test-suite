#include <stdlib.h>
extern signed int v1 (unsigned int, signed char);
extern signed int (*v2) (unsigned int, signed char);
extern signed char v3 (unsigned int, signed short, unsigned char, signed char);
extern signed char (*v4) (unsigned int, signed short, unsigned char, signed char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
signed char v9 (unsigned short, unsigned int, signed char);
signed char (*v10) (unsigned short, unsigned int, signed char) = v9;
extern signed int v11 (unsigned int);
extern signed int (*v12) (unsigned int);
signed char v13 (unsigned short, signed char);
signed char (*v14) (unsigned short, signed char) = v13;
extern unsigned char v15 (signed int, unsigned short);
extern unsigned char (*v16) (signed int, unsigned short);
signed int v17 (void);
signed int (*v18) (void) = v17;
extern unsigned char v19 (signed short, signed int, signed short);
extern unsigned char (*v20) (signed short, signed int, signed short);
unsigned int v21 (signed int);
unsigned int (*v22) (signed int) = v21;
extern signed short v23 (unsigned int, signed int);
extern signed short (*v24) (unsigned int, signed int);
unsigned int v25 (unsigned int, unsigned int);
unsigned int (*v26) (unsigned int, unsigned int) = v25;
signed int v27 (unsigned char, unsigned char, signed short);
signed int (*v28) (unsigned char, unsigned char, signed short) = v27;
extern unsigned char v29 (unsigned int, signed char);
extern unsigned char (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v106 = -2;
signed int v105 = 1;
signed char v104 = -2;

signed int v27 (unsigned char v107, unsigned char v108, signed short v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = 2;
unsigned short v111 = 3;
unsigned short v110 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v25 (unsigned int v113, unsigned int v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 7;
signed char v116 = 1;
signed int v115 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed int v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
unsigned short v121 = 7;
unsigned char v120 = 1;
signed char v119 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
unsigned char v124 = 6;
signed char v123 = 2;
signed char v122 = 3;
trace++;
switch (trace)
{
case 11: 
return 2;
default: abort ();
}
}
}
}

signed char v13 (unsigned short v125, signed char v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 0U;
signed int v128 = 2;
unsigned char v127 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned short v130, unsigned int v131, signed char v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 7U;
signed int v134 = -1;
unsigned char v133 = 1;
trace++;
switch (trace)
{
case 3: 
return v132;
default: abort ();
}
}
}
}
