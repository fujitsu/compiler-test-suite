#include <stdlib.h>
extern signed short v1 (signed int, unsigned int, signed char, signed short);
extern signed short (*v2) (signed int, unsigned int, signed char, signed short);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern signed int v5 (signed char, unsigned int, signed int);
extern signed int (*v6) (signed char, unsigned int, signed int);
extern unsigned short v9 (unsigned char, signed char, unsigned short);
extern unsigned short (*v10) (unsigned char, signed char, unsigned short);
extern unsigned short v11 (unsigned char, signed short, unsigned int, unsigned int);
extern unsigned short (*v12) (unsigned char, signed short, unsigned int, unsigned int);
unsigned short v15 (unsigned char);
unsigned short (*v16) (unsigned char) = v15;
extern void v17 (unsigned short, unsigned short, unsigned int);
extern void (*v18) (unsigned short, unsigned short, unsigned int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern unsigned char v21 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v22) (unsigned char, unsigned short, unsigned short);
signed char v23 (signed char, signed int, unsigned int, unsigned int);
signed char (*v24) (signed char, signed int, unsigned int, unsigned int) = v23;
extern void v25 (unsigned char, signed char, signed int, unsigned short);
extern void (*v26) (unsigned char, signed char, signed int, unsigned short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (signed char, unsigned short, unsigned int, signed int);
extern signed char (*v30) (signed char, unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v83 = 0;
signed short v82 = -2;
unsigned char v81 = 4;

signed char v23 (signed char v84, signed int v85, unsigned int v86, unsigned int v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 6;
unsigned int v89 = 5U;
unsigned int v88 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = -3;
signed char v93 = -4;
unsigned int v92 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
