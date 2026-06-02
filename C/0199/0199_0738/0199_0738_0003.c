#include <stdlib.h>
extern void v1 (unsigned int, signed int, signed short, unsigned char);
extern void (*v2) (unsigned int, signed int, signed short, unsigned char);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern unsigned short v5 (signed short, unsigned int, unsigned char, unsigned char);
extern unsigned short (*v6) (signed short, unsigned int, unsigned char, unsigned char);
extern signed char v7 (unsigned int, unsigned short, unsigned int, signed char);
extern signed char (*v8) (unsigned int, unsigned short, unsigned int, signed char);
extern unsigned int v9 (unsigned int, unsigned int);
extern unsigned int (*v10) (unsigned int, unsigned int);
extern unsigned short v11 (signed int);
extern unsigned short (*v12) (signed int);
extern signed short v13 (signed char);
extern signed short (*v14) (signed char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern unsigned char v19 (unsigned int, signed short, unsigned int);
extern unsigned char (*v20) (unsigned int, signed short, unsigned int);
extern unsigned short v21 (unsigned int, signed int);
extern unsigned short (*v22) (unsigned int, signed int);
unsigned char v23 (unsigned short, unsigned char, signed short, signed int);
unsigned char (*v24) (unsigned short, unsigned char, signed short, signed int) = v23;
void v25 (void);
void (*v26) (void) = v25;
extern unsigned int v27 (unsigned char);
extern unsigned int (*v28) (unsigned char);
extern signed short v29 (signed char, unsigned short);
extern signed short (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v133 = -4;
signed char v132 = 1;
unsigned char v131 = 4;

void v25 (void)
{
{
for (;;) {
signed char v136 = -3;
unsigned char v135 = 0;
unsigned short v134 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned short v137, unsigned char v138, signed short v139, signed int v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 2U;
unsigned short v142 = 5;
unsigned int v141 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
