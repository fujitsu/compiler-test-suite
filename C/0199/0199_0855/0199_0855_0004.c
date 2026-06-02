#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
extern unsigned int v3 (unsigned short, signed int, unsigned short, signed short);
extern unsigned int (*v4) (unsigned short, signed int, unsigned short, signed short);
signed short v5 (signed int, unsigned short, unsigned int);
signed short (*v6) (signed int, unsigned short, unsigned int) = v5;
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern signed char v9 (signed int, unsigned char);
extern signed char (*v10) (signed int, unsigned char);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern unsigned char v19 (unsigned short, unsigned int);
extern unsigned char (*v20) (unsigned short, unsigned int);
extern unsigned char v21 (signed short, signed short);
extern unsigned char (*v22) (signed short, signed short);
extern signed int v25 (signed int, unsigned short);
extern signed int (*v26) (signed int, unsigned short);
extern unsigned short v27 (unsigned short, unsigned short);
extern unsigned short (*v28) (unsigned short, unsigned short);
extern void v29 (unsigned char, signed int, unsigned char, unsigned int);
extern void (*v30) (unsigned char, signed int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v131 = 0;
signed char v130 = -1;
unsigned int v129 = 4U;

unsigned char v13 (void)
{
{
for (;;) {
signed short v134 = -3;
unsigned short v133 = 5;
signed short v132 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed int v135, unsigned short v136, unsigned int v137)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = -1;
signed int v139 = 3;
signed int v138 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
