#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
signed char v3 (unsigned short, signed char, unsigned int);
signed char (*v4) (unsigned short, signed char, unsigned int) = v3;
extern unsigned int v5 (unsigned int, signed char);
extern unsigned int (*v6) (unsigned int, signed char);
extern unsigned short v7 (unsigned short, unsigned short, signed short);
extern unsigned short (*v8) (unsigned short, unsigned short, signed short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (signed int, unsigned short, unsigned int);
extern signed char (*v14) (signed int, unsigned short, unsigned int);
extern signed int v15 (unsigned int, signed short, signed int);
extern signed int (*v16) (unsigned int, signed short, signed int);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
unsigned int v21 (unsigned short, unsigned int);
unsigned int (*v22) (unsigned short, unsigned int) = v21;
extern void v23 (unsigned short, signed short);
extern void (*v24) (unsigned short, signed short);
extern unsigned short v25 (unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int);
extern unsigned char v27 (signed int, signed short, signed short, unsigned short);
extern unsigned char (*v28) (signed int, signed short, signed short, unsigned short);
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v134 = 2;
unsigned short v133 = 1;
signed char v132 = 1;

unsigned int v21 (unsigned short v135, unsigned int v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned int v139 = 1U;
unsigned short v138 = 7;
signed int v137 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
unsigned int v142 = 1U;
unsigned char v141 = 1;
signed char v140 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned short v143, signed char v144, unsigned int v145)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned int v148 = 2U;
signed char v147 = 3;
signed int v146 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
