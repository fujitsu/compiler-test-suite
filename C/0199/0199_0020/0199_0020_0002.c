#include <stdlib.h>
extern signed char v1 (unsigned short, unsigned int, signed short);
extern signed char (*v2) (unsigned short, unsigned int, signed short);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern unsigned int v5 (unsigned short, signed int);
extern unsigned int (*v6) (unsigned short, signed int);
unsigned char v7 (unsigned int);
unsigned char (*v8) (unsigned int) = v7;
extern unsigned char v9 (signed char, unsigned short, unsigned char);
extern unsigned char (*v10) (signed char, unsigned short, unsigned char);
unsigned int v13 (unsigned int, signed char, signed int);
unsigned int (*v14) (unsigned int, signed char, signed int) = v13;
extern signed int v15 (signed int);
extern signed int (*v16) (signed int);
extern unsigned short v17 (signed short);
extern unsigned short (*v18) (signed short);
extern unsigned short v19 (signed char, signed short);
extern unsigned short (*v20) (signed char, signed short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed short v23 (signed int, signed char, signed char, signed short);
extern signed short (*v24) (signed int, signed char, signed char, signed short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v83 = 3;
signed short v82 = -4;
signed char v81 = -1;

unsigned int v13 (unsigned int v84, signed char v85, signed int v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 0;
signed int v88 = -4;
signed int v87 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = 1;
signed short v92 = -2;
unsigned int v91 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
