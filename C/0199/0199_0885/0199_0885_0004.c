#include <stdlib.h>
extern void v1 (unsigned int, signed int, signed char);
extern void (*v2) (unsigned int, signed int, signed char);
extern signed short v3 (signed short, unsigned char, signed char, unsigned short);
extern signed short (*v4) (signed short, unsigned char, signed char, unsigned short);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern signed short v7 (signed int, signed int);
extern signed short (*v8) (signed int, signed int);
extern signed char v9 (unsigned char, signed short, unsigned short);
extern signed char (*v10) (unsigned char, signed short, unsigned short);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
unsigned short v13 (unsigned short, signed char, signed char, signed int);
unsigned short (*v14) (unsigned short, signed char, signed char, signed int) = v13;
extern unsigned char v15 (signed char, unsigned char, signed char);
extern unsigned char (*v16) (signed char, unsigned char, signed char);
extern unsigned char v17 (unsigned int, signed int);
extern unsigned char (*v18) (unsigned int, signed int);
extern void v19 (signed int, signed int, signed short);
extern void (*v20) (signed int, signed int, signed short);
extern unsigned int v21 (signed short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short);
extern signed char v23 (unsigned short, signed short);
extern signed char (*v24) (unsigned short, signed short);
signed short v25 (void);
signed short (*v26) (void) = v25;
extern signed int v29 (unsigned short, unsigned int, unsigned char, unsigned short);
extern signed int (*v30) (unsigned short, unsigned int, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v131 = 1;
signed short v130 = -3;
unsigned short v129 = 4;

signed short v25 (void)
{
{
for (;;) {
signed char v134 = 2;
unsigned char v133 = 0;
signed int v132 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned short v135, signed char v136, signed char v137, signed int v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
unsigned short v141 = 6;
signed int v140 = 3;
unsigned int v139 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned short v144 = 1;
unsigned char v143 = 6;
unsigned short v142 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
