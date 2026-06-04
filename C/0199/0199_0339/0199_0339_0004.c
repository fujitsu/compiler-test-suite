#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
void v3 (void);
void (*v4) (void) = v3;
extern unsigned short v5 (signed short, signed char, unsigned char);
extern unsigned short (*v6) (signed short, signed char, unsigned char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned char v9 (signed int, unsigned short, unsigned int, signed short);
extern unsigned char (*v10) (signed int, unsigned short, unsigned int, signed short);
signed char v11 (void);
signed char (*v12) (void) = v11;
extern unsigned char v13 (signed char, unsigned int, unsigned short, signed short);
extern unsigned char (*v14) (signed char, unsigned int, unsigned short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern signed int v17 (signed char, unsigned char);
extern signed int (*v18) (signed char, unsigned char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned char v21 (signed short, signed int, unsigned char, unsigned int);
extern unsigned char (*v22) (signed short, signed int, unsigned char, unsigned int);
extern unsigned short v23 (unsigned char, signed short);
extern unsigned short (*v24) (unsigned char, signed short);
unsigned int v25 (unsigned char, signed short, unsigned char, signed int);
unsigned int (*v26) (unsigned char, signed short, unsigned char, signed int) = v25;
extern signed char v27 (unsigned short, unsigned int, unsigned short, signed short);
extern signed char (*v28) (unsigned short, unsigned int, unsigned short, signed short);
extern unsigned char v29 (unsigned int, unsigned char, signed char);
extern unsigned char (*v30) (unsigned int, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v133 = 3;
unsigned int v132 = 6U;
signed short v131 = -1;

unsigned int v25 (unsigned char v134, signed short v135, unsigned char v136, signed int v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 4;
signed short v139 = -1;
unsigned int v138 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
unsigned char v143 = 6;
unsigned short v142 = 0;
signed short v141 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
unsigned int v146 = 6U;
unsigned int v145 = 5U;
signed char v144 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
