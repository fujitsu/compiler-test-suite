#include <stdlib.h>
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed int v5 (unsigned int, unsigned char, signed short);
extern signed int (*v6) (unsigned int, unsigned char, signed short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
unsigned short v9 (unsigned short, signed short);
unsigned short (*v10) (unsigned short, signed short) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v15 (unsigned short, unsigned int, signed short);
extern unsigned char (*v16) (unsigned short, unsigned int, signed short);
extern signed short v17 (signed int, unsigned short, signed char, unsigned int);
extern signed short (*v18) (signed int, unsigned short, signed char, unsigned int);
unsigned char v19 (unsigned char, signed int);
unsigned char (*v20) (unsigned char, signed int) = v19;
extern signed int v21 (signed int);
extern signed int (*v22) (signed int);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern unsigned int v25 (signed int, signed int);
extern unsigned int (*v26) (signed int, signed int);
extern unsigned short v27 (unsigned char, unsigned int, signed char);
extern unsigned short (*v28) (unsigned char, unsigned int, signed char);
extern signed short v29 (signed int, signed short, signed int);
extern signed short (*v30) (signed int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v84 = 0;
unsigned int v83 = 5U;
signed int v82 = 1;

unsigned char v19 (unsigned char v85, signed int v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 1;
unsigned int v88 = 7U;
unsigned int v87 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v90, signed short v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -2;
signed int v93 = -3;
unsigned int v92 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
