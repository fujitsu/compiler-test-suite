#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
signed int v5 (unsigned short, signed short, signed int, unsigned short);
signed int (*v6) (unsigned short, signed short, signed int, unsigned short) = v5;
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern void v9 (void);
extern void (*v10) (void);
signed char v11 (signed short, unsigned short, unsigned char);
signed char (*v12) (signed short, unsigned short, unsigned char) = v11;
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
extern unsigned int v17 (signed int, unsigned char, unsigned int, signed char);
extern unsigned int (*v18) (signed int, unsigned char, unsigned int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed char v21 (void);
signed char (*v22) (void) = v21;
extern void v23 (unsigned short, signed char, unsigned short, signed short);
extern void (*v24) (unsigned short, signed char, unsigned short, signed short);
extern signed short v25 (unsigned char, signed char, signed char, signed char);
extern signed short (*v26) (unsigned char, signed char, signed char, signed char);
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v85 = 5;
unsigned char v84 = 1;
unsigned int v83 = 1U;

signed char v21 (void)
{
{
for (;;) {
signed int v88 = -3;
unsigned short v87 = 1;
unsigned int v86 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed short v89, unsigned short v90, unsigned char v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = -2;
unsigned short v93 = 0;
signed short v92 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned short v95, signed short v96, signed int v97, unsigned short v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 5;
unsigned short v100 = 4;
signed short v99 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
