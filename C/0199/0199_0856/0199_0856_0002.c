#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned int, signed short, unsigned int);
extern unsigned short (*v2) (signed int, unsigned int, signed short, unsigned int);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed int v5 (void);
extern signed int (*v6) (void);
unsigned char v7 (unsigned short, unsigned char);
unsigned char (*v8) (unsigned short, unsigned char) = v7;
extern unsigned short v9 (unsigned short, signed char, unsigned short, unsigned char);
extern unsigned short (*v10) (unsigned short, signed char, unsigned short, unsigned char);
extern unsigned int v11 (signed int, signed int, unsigned short);
extern unsigned int (*v12) (signed int, signed int, unsigned short);
extern signed short v13 (signed short, unsigned short, signed char);
extern signed short (*v14) (signed short, unsigned short, signed char);
extern signed short v15 (unsigned int, signed short, signed char, signed char);
extern signed short (*v16) (unsigned int, signed short, signed char, signed char);
extern void v17 (signed int, signed char, signed short, signed int);
extern void (*v18) (signed int, signed char, signed short, signed int);
extern signed char v19 (signed char);
extern signed char (*v20) (signed char);
extern void v21 (unsigned char, unsigned char, unsigned char);
extern void (*v22) (unsigned char, unsigned char, unsigned char);
signed char v23 (unsigned char, unsigned char, signed char, signed int);
signed char (*v24) (unsigned char, unsigned char, signed char, signed int) = v23;
extern signed short v25 (unsigned short, unsigned int, unsigned int, signed char);
extern signed short (*v26) (unsigned short, unsigned int, unsigned int, signed char);
extern void v27 (unsigned int, unsigned short);
extern void (*v28) (unsigned int, unsigned short);
extern unsigned int v29 (signed int, unsigned int, unsigned int, signed int);
extern unsigned int (*v30) (signed int, unsigned int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v83 = 0;
unsigned int v82 = 4U;
unsigned int v81 = 1U;

signed char v23 (unsigned char v84, unsigned char v85, signed char v86, signed int v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = 2;
signed char v89 = 1;
signed short v88 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v91, unsigned char v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = 1;
unsigned int v94 = 5U;
unsigned char v93 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
