#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
signed char v5 (signed char, unsigned int);
signed char (*v6) (signed char, unsigned int) = v5;
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern unsigned int v9 (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned int (*v10) (signed short, unsigned char, unsigned char, unsigned char);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern signed char v13 (signed short, signed int);
extern signed char (*v14) (signed short, signed int);
extern void v15 (unsigned char, signed int, signed int, signed char);
extern void (*v16) (unsigned char, signed int, signed int, signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern unsigned char v21 (signed int, signed char);
extern unsigned char (*v22) (signed int, signed char);
extern void v23 (signed short);
extern void (*v24) (signed short);
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
extern unsigned int v29 (signed int, unsigned int, signed short, unsigned char);
extern unsigned int (*v30) (signed int, unsigned int, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v135 = 1;
unsigned int v134 = 4U;
signed int v133 = -4;

signed int v11 (void)
{
{
for (;;) {
signed short v138 = 3;
signed short v137 = -3;
signed char v136 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v139, unsigned int v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 5U;
unsigned char v142 = 7;
unsigned char v141 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
