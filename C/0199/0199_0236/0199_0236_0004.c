#include <stdlib.h>
extern void v1 (unsigned int, unsigned short, signed char);
extern void (*v2) (unsigned int, unsigned short, signed char);
extern unsigned int v3 (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned int v5 (signed int, unsigned short, signed int);
extern unsigned int (*v6) (signed int, unsigned short, signed int);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern signed char v15 (signed char, unsigned int);
extern signed char (*v16) (signed char, unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern void v23 (signed int, unsigned int, unsigned int);
extern void (*v24) (signed int, unsigned int, unsigned int);
signed char v25 (void);
signed char (*v26) (void) = v25;
unsigned short v27 (signed short, signed short);
unsigned short (*v28) (signed short, signed short) = v27;
extern signed short v29 (unsigned char, unsigned int, unsigned int, signed short);
extern signed short (*v30) (unsigned char, unsigned int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v129 = 6U;
unsigned int v128 = 7U;
unsigned short v127 = 3;

unsigned short v27 (signed short v130, signed short v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 5U;
unsigned int v133 = 3U;
signed short v132 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (void)
{
{
for (;;) {
signed int v137 = -2;
unsigned char v136 = 0;
unsigned char v135 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
