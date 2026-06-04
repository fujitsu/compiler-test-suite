#include <stdlib.h>
extern signed short v1 (unsigned char, signed int);
extern signed short (*v2) (unsigned char, signed int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned int v5 (signed short, signed short, unsigned int, unsigned int);
extern unsigned int (*v6) (signed short, signed short, unsigned int, unsigned int);
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
unsigned int v9 (signed int);
unsigned int (*v10) (signed int) = v9;
extern signed int v11 (signed short, signed int);
extern signed int (*v12) (signed short, signed int);
extern signed int v13 (unsigned short, unsigned short);
extern signed int (*v14) (unsigned short, unsigned short);
extern unsigned short v15 (unsigned int, unsigned char, unsigned int, unsigned int);
extern unsigned short (*v16) (unsigned int, unsigned char, unsigned int, unsigned int);
extern unsigned char v17 (unsigned char, signed short);
extern unsigned char (*v18) (unsigned char, signed short);
extern void v19 (unsigned short, signed int, unsigned short, unsigned int);
extern void (*v20) (unsigned short, signed int, unsigned short, unsigned int);
unsigned int v21 (signed char, unsigned short, signed short);
unsigned int (*v22) (signed char, unsigned short, signed short) = v21;
unsigned short v23 (signed int, unsigned int);
unsigned short (*v24) (signed int, unsigned int) = v23;
extern unsigned short v25 (signed short, signed char, signed short, unsigned int);
extern unsigned short (*v26) (signed short, signed char, signed short, unsigned int);
extern unsigned char v27 (signed int, unsigned char);
extern unsigned char (*v28) (signed int, unsigned char);
extern signed int v29 (signed short);
extern signed int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v83 = -1;
unsigned int v82 = 2U;
unsigned char v81 = 0;

unsigned short v23 (signed int v84, unsigned int v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = 3;
unsigned int v87 = 7U;
unsigned short v86 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed char v89, unsigned short v90, signed short v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 2U;
signed char v93 = -2;
signed char v92 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed int v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 4;
unsigned char v97 = 0;
signed short v96 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
