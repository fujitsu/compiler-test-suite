#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, signed short);
extern signed short v3 (unsigned int, unsigned short, unsigned char);
extern signed short (*v4) (unsigned int, unsigned short, unsigned char);
unsigned char v5 (signed short, unsigned short, unsigned short);
unsigned char (*v6) (signed short, unsigned short, unsigned short) = v5;
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern unsigned short v9 (signed int, unsigned int, unsigned char);
extern unsigned short (*v10) (signed int, unsigned int, unsigned char);
extern unsigned int v11 (unsigned short, signed int);
extern unsigned int (*v12) (unsigned short, signed int);
extern signed int v13 (signed short, signed short);
extern signed int (*v14) (signed short, signed short);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern signed short v17 (unsigned int, signed short, unsigned char, signed int);
extern signed short (*v18) (unsigned int, signed short, unsigned char, signed int);
extern unsigned int v19 (signed short, signed short, signed char, signed char);
extern unsigned int (*v20) (signed short, signed short, signed char, signed char);
extern unsigned char v23 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned char);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (signed char);
extern unsigned int (*v28) (signed char);
extern unsigned char v29 (signed int, signed short, unsigned short);
extern unsigned char (*v30) (signed int, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v142 = 6;
unsigned short v141 = 7;
unsigned int v140 = 2U;

unsigned short v15 (void)
{
{
for (;;) {
signed int v145 = 3;
signed short v144 = -4;
unsigned int v143 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed short v146, unsigned short v147, unsigned short v148)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
unsigned char v151 = 3;
unsigned int v150 = 2U;
unsigned int v149 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
