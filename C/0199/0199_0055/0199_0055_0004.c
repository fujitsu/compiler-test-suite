#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (signed int, unsigned char);
extern signed int (*v4) (signed int, unsigned char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (unsigned int, signed char, signed short);
extern unsigned char (*v8) (unsigned int, signed char, signed short);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned short v11 (signed short, signed short);
extern unsigned short (*v12) (signed short, signed short);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
void v19 (signed char, signed short, signed int, signed char);
void (*v20) (signed char, signed short, signed int, signed char) = v19;
extern signed short v21 (signed int, unsigned char, unsigned short);
extern signed short (*v22) (signed int, unsigned char, unsigned short);
extern signed short v25 (unsigned char, signed char, unsigned int);
extern signed short (*v26) (unsigned char, signed char, unsigned int);
extern signed int v27 (unsigned short, signed int, signed short, signed short);
extern signed int (*v28) (unsigned short, signed int, signed short, signed short);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v128 = 2;
signed char v127 = -2;
unsigned short v126 = 0;

void v19 (signed char v129, signed short v130, signed int v131, signed char v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 5U;
signed char v134 = -1;
signed char v133 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
signed int v138 = 0;
unsigned int v137 = 4U;
unsigned short v136 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
