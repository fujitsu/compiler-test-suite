#include <stdlib.h>
extern void v3 (unsigned int, signed int, unsigned int);
extern void (*v4) (unsigned int, signed int, unsigned int);
unsigned int v5 (unsigned char, signed short, signed int, signed char);
unsigned int (*v6) (unsigned char, signed short, signed int, signed char) = v5;
signed short v7 (unsigned int, signed int, signed short, signed int);
signed short (*v8) (unsigned int, signed int, signed short, signed int) = v7;
extern unsigned char v9 (signed int, signed char, unsigned char);
extern unsigned char (*v10) (signed int, signed char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
void v13 (signed int);
void (*v14) (signed int) = v13;
signed char v15 (void);
signed char (*v16) (void) = v15;
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (unsigned short, signed short, unsigned char);
extern signed short (*v20) (unsigned short, signed short, unsigned char);
extern signed char v21 (signed char, unsigned int, unsigned short, signed short);
extern signed char (*v22) (signed char, unsigned int, unsigned short, signed short);
extern signed int v23 (signed int, unsigned int, signed char, signed int);
extern signed int (*v24) (signed int, unsigned int, signed char, signed int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned short v27 (signed int, signed char, signed int);
extern unsigned short (*v28) (signed int, signed char, signed int);
extern signed char v29 (signed char, unsigned int, unsigned int, signed short);
extern signed char (*v30) (signed char, unsigned int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v128 = 1;
signed int v127 = -3;
unsigned char v126 = 6;

signed char v15 (void)
{
{
for (;;) {
unsigned short v131 = 4;
signed short v130 = -1;
signed int v129 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed int v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = 3;
signed short v134 = -4;
unsigned char v133 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned int v136, signed int v137, signed short v138, signed int v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned int v142 = 0U;
unsigned short v141 = 3;
signed int v140 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v143, signed short v144, signed int v145, signed char v146)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed int v149 = 2;
unsigned short v148 = 5;
unsigned char v147 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
