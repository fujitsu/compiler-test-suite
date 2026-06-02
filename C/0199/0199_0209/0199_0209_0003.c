#include <stdlib.h>
extern unsigned int v1 (signed int, signed char, signed short, unsigned int);
extern unsigned int (*v2) (signed int, signed char, signed short, unsigned int);
extern unsigned short v3 (signed short, signed char);
extern unsigned short (*v4) (signed short, signed char);
unsigned int v5 (signed short, signed int);
unsigned int (*v6) (signed short, signed int) = v5;
void v7 (unsigned char, signed short, signed char, unsigned short);
void (*v8) (unsigned char, signed short, signed char, unsigned short) = v7;
unsigned int v9 (unsigned short, unsigned int);
unsigned int (*v10) (unsigned short, unsigned int) = v9;
extern void v11 (void);
extern void (*v12) (void);
unsigned char v13 (signed int);
unsigned char (*v14) (signed int) = v13;
extern signed char v15 (signed char, unsigned int, signed char, signed char);
extern signed char (*v16) (signed char, unsigned int, signed char, signed char);
extern void v17 (unsigned int, signed int);
extern void (*v18) (unsigned int, signed int);
unsigned int v19 (unsigned short, signed int, unsigned short, unsigned short);
unsigned int (*v20) (unsigned short, signed int, unsigned short, unsigned short) = v19;
signed short v21 (void);
signed short (*v22) (void) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned short v27 (signed short, unsigned int, unsigned char);
extern unsigned short (*v28) (signed short, unsigned int, unsigned char);
extern signed int v29 (signed short, signed short);
extern signed int (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v114 = -4;
signed short v113 = 3;
unsigned char v112 = 7;

signed short v21 (void)
{
{
for (;;) {
unsigned short v117 = 7;
unsigned int v116 = 7U;
signed char v115 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v118, signed int v119, unsigned short v120, unsigned short v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = 2;
signed short v123 = -3;
unsigned char v122 = 2;
trace++;
switch (trace)
{
case 3: 
return 0U;
case 5: 
return 0U;
case 7: 
return 7U;
default: abort ();
}
}
}
}

unsigned char v13 (signed int v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = -4;
unsigned char v127 = 4;
unsigned char v126 = 5;
trace++;
switch (trace)
{
case 9: 
return 5;
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v129, unsigned int v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned short v133 = 0;
unsigned short v132 = 2;
signed char v131 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned char v134, signed short v135, signed char v136, unsigned short v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned short v140 = 4;
signed int v139 = -4;
unsigned int v138 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed short v141, signed int v142)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed int v145 = -1;
unsigned short v144 = 7;
signed char v143 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
