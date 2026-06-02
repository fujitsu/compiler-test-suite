#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
signed char v3 (signed char, signed short);
signed char (*v4) (signed char, signed short) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
void v7 (unsigned short);
void (*v8) (unsigned short) = v7;
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern signed short v11 (signed int, signed int, signed char, signed char);
extern signed short (*v12) (signed int, signed int, signed char, signed char);
void v15 (unsigned char);
void (*v16) (unsigned char) = v15;
extern signed int v17 (signed int, signed char);
extern signed int (*v18) (signed int, signed char);
signed short v19 (signed char, signed short, unsigned int);
signed short (*v20) (signed char, signed short, unsigned int) = v19;
extern signed char v21 (unsigned char, unsigned short, signed int);
extern signed char (*v22) (unsigned char, unsigned short, signed int);
unsigned short v23 (unsigned short, signed short);
unsigned short (*v24) (unsigned short, signed short) = v23;
extern unsigned int v25 (signed int, signed short, signed short, signed short);
extern unsigned int (*v26) (signed int, signed short, signed short, signed short);
extern unsigned char v27 (signed int, unsigned short, unsigned short, unsigned short);
extern unsigned char (*v28) (signed int, unsigned short, unsigned short, unsigned short);
extern signed char v29 (signed char, signed char, unsigned char, signed char);
extern signed char (*v30) (signed char, signed char, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v131 = 0U;
unsigned int v130 = 3U;
signed int v129 = -2;

unsigned short v23 (unsigned short v132, signed short v133)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 2;
signed short v135 = 3;
signed short v134 = -2;
trace++;
switch (trace)
{
case 1: 
return v132;
default: abort ();
}
}
}
}

signed short v19 (signed char v137, signed short v138, unsigned int v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 0;
unsigned char v141 = 3;
unsigned short v140 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned char v143)
{
history[history_index++] = (int)v143;
{
for (;;) {
unsigned char v146 = 6;
unsigned short v145 = 4;
unsigned char v144 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned short v147)
{
history[history_index++] = (int)v147;
{
for (;;) {
signed short v150 = 3;
signed int v149 = 3;
signed short v148 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed char v151, signed short v152)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
signed int v155 = -2;
unsigned char v154 = 6;
unsigned int v153 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
