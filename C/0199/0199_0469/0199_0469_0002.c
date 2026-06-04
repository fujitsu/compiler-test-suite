#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (unsigned char, unsigned char, signed int);
extern signed int (*v4) (unsigned char, unsigned char, signed int);
extern signed int v5 (unsigned int);
extern signed int (*v6) (unsigned int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (signed int);
extern signed short (*v10) (signed int);
extern signed int v11 (signed int, unsigned int);
extern signed int (*v12) (signed int, unsigned int);
extern unsigned int v13 (unsigned short, unsigned int, signed int);
extern unsigned int (*v14) (unsigned short, unsigned int, signed int);
extern signed int v15 (unsigned char, signed char, signed int, signed int);
extern signed int (*v16) (unsigned char, signed char, signed int, signed int);
unsigned char v17 (signed char, signed int, unsigned int);
unsigned char (*v18) (signed char, signed int, unsigned int) = v17;
extern signed short v19 (unsigned int, unsigned short, signed short);
extern signed short (*v20) (unsigned int, unsigned short, signed short);
extern unsigned short v21 (signed short, unsigned int, signed short);
extern unsigned short (*v22) (signed short, unsigned int, signed short);
unsigned char v23 (signed short, unsigned char, signed char);
unsigned char (*v24) (signed short, unsigned char, signed char) = v23;
unsigned int v25 (signed int, unsigned short, unsigned short);
unsigned int (*v26) (signed int, unsigned short, unsigned short) = v25;
extern unsigned char v27 (unsigned char);
extern unsigned char (*v28) (unsigned char);
extern void v29 (unsigned short, unsigned short);
extern void (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v84 = 4U;
unsigned short v83 = 3;
signed char v82 = -4;

unsigned int v25 (signed int v85, unsigned short v86, unsigned short v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 1U;
unsigned short v89 = 6;
unsigned char v88 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed short v91, unsigned char v92, signed char v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = 1;
unsigned int v95 = 6U;
unsigned short v94 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed char v97, signed int v98, unsigned int v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 6U;
signed char v101 = 3;
unsigned int v100 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
