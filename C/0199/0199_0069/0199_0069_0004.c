#include <stdlib.h>
extern signed short v1 (signed char, unsigned int);
extern signed short (*v2) (signed char, unsigned int);
extern unsigned short v3 (unsigned int, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned int, unsigned char, unsigned short, unsigned short);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
signed int v7 (signed int, signed short);
signed int (*v8) (signed int, signed short) = v7;
extern signed int v11 (unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned char);
extern signed short v13 (signed short, signed char);
extern signed short (*v14) (signed short, signed char);
extern unsigned short v17 (unsigned short, signed short, unsigned char, signed short);
extern unsigned short (*v18) (unsigned short, signed short, unsigned char, signed short);
unsigned short v19 (signed short, signed short, unsigned short);
unsigned short (*v20) (signed short, signed short, unsigned short) = v19;
extern signed char v21 (signed char, unsigned char, signed char);
extern signed char (*v22) (signed char, unsigned char, signed char);
extern signed char v23 (unsigned char, unsigned short);
extern signed char (*v24) (unsigned char, unsigned short);
signed short v25 (void);
signed short (*v26) (void) = v25;
void v27 (void);
void (*v28) (void) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v123 = 5;
signed int v122 = -1;
unsigned short v121 = 2;

void v27 (void)
{
{
for (;;) {
unsigned char v126 = 2;
signed int v125 = -3;
unsigned int v124 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (void)
{
{
for (;;) {
signed short v129 = 2;
unsigned int v128 = 5U;
signed int v127 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed short v130, signed short v131, unsigned short v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed short v135 = 3;
unsigned int v134 = 4U;
unsigned int v133 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed int v136, signed short v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned short v140 = 4;
signed char v139 = -4;
unsigned char v138 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
