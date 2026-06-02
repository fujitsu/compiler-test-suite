#include <stdlib.h>
extern signed char v1 (signed short, unsigned char, signed char);
extern signed char (*v2) (signed short, unsigned char, signed char);
extern unsigned char v3 (signed int, unsigned char);
extern unsigned char (*v4) (signed int, unsigned char);
extern unsigned char v5 (unsigned short, signed short, signed char);
extern unsigned char (*v6) (unsigned short, signed short, signed char);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern void v11 (signed int, signed short, unsigned short);
extern void (*v12) (signed int, signed short, unsigned short);
signed short v13 (void);
signed short (*v14) (void) = v13;
extern signed short v15 (signed char, signed short, unsigned char);
extern signed short (*v16) (signed char, signed short, unsigned char);
extern signed short v19 (unsigned short, signed char, signed char, unsigned int);
extern signed short (*v20) (unsigned short, signed char, signed char, unsigned int);
extern signed short v21 (signed char, signed int, unsigned char);
extern signed short (*v22) (signed char, signed int, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern void v25 (signed int);
extern void (*v26) (signed int);
extern signed short v27 (unsigned int);
extern signed short (*v28) (unsigned int);
signed char v29 (unsigned short, unsigned char, signed int);
signed char (*v30) (unsigned short, unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v118 = -3;
unsigned int v117 = 7U;
unsigned short v116 = 0;

signed char v29 (unsigned short v119, unsigned char v120, signed int v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 6;
unsigned int v123 = 1U;
unsigned short v122 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
unsigned char v127 = 6;
unsigned int v126 = 6U;
unsigned short v125 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
