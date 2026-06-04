#include <stdlib.h>
signed short v3 (signed short);
signed short (*v4) (signed short) = v3;
extern signed char v5 (signed short, signed short);
extern signed char (*v6) (signed short, signed short);
extern void v7 (signed int, signed char, signed short);
extern void (*v8) (signed int, signed char, signed short);
extern signed int v9 (unsigned short, unsigned int, unsigned char);
extern signed int (*v10) (unsigned short, unsigned int, unsigned char);
extern signed char v11 (signed short, unsigned char);
extern signed char (*v12) (signed short, unsigned char);
extern unsigned char v13 (signed short, signed int, unsigned char);
extern unsigned char (*v14) (signed short, signed int, unsigned char);
extern unsigned int v15 (signed int, signed char, unsigned int, unsigned char);
extern unsigned int (*v16) (signed int, signed char, unsigned int, unsigned char);
extern signed int v19 (signed int, unsigned char, signed int);
extern signed int (*v20) (signed int, unsigned char, signed int);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern signed int v23 (signed int, signed int, signed int);
extern signed int (*v24) (signed int, signed int, signed int);
extern unsigned char v25 (signed short, unsigned short);
extern unsigned char (*v26) (signed short, unsigned short);
extern void v27 (void);
extern void (*v28) (void);
signed short v29 (unsigned int, signed short, unsigned char, signed int);
signed short (*v30) (unsigned int, signed short, unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v85 = -1;
signed char v84 = -2;
unsigned char v83 = 4;

signed short v29 (unsigned int v86, signed short v87, unsigned char v88, signed int v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 5;
signed short v91 = 1;
signed char v90 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
unsigned int v95 = 5U;
unsigned short v94 = 7;
unsigned char v93 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed short v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 5;
unsigned short v98 = 6;
unsigned char v97 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
