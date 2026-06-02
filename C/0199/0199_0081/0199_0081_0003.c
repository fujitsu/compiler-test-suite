#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern signed char v3 (unsigned char, signed int, unsigned int, unsigned char);
extern signed char (*v4) (unsigned char, signed int, unsigned int, unsigned char);
extern void v5 (signed short, signed int, signed char);
extern void (*v6) (signed short, signed int, signed char);
signed int v7 (signed int, unsigned char, signed int, signed char);
signed int (*v8) (signed int, unsigned char, signed int, signed char) = v7;
extern signed short v9 (unsigned short, signed short, unsigned short, unsigned short);
extern signed short (*v10) (unsigned short, signed short, unsigned short, unsigned short);
extern void v11 (unsigned short, signed char);
extern void (*v12) (unsigned short, signed char);
extern signed short v13 (signed int, signed int, signed short);
extern signed short (*v14) (signed int, signed int, signed short);
extern void v15 (signed short, signed short);
extern void (*v16) (signed short, signed short);
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern signed int v21 (unsigned int, signed char, signed int, signed short);
extern signed int (*v22) (unsigned int, signed char, signed int, signed short);
unsigned char v23 (signed int);
unsigned char (*v24) (signed int) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v27 (signed char, unsigned char, unsigned short);
extern void (*v28) (signed char, unsigned char, unsigned short);
extern signed short v29 (signed int, unsigned short, unsigned short);
extern signed short (*v30) (signed int, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v85 = -3;
signed short v84 = -1;
unsigned int v83 = 6U;

unsigned char v23 (signed int v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 6U;
signed int v88 = 0;
unsigned char v87 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
signed int v92 = -4;
signed char v91 = 1;
unsigned int v90 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed int v93, unsigned char v94, signed int v95, signed char v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = 3;
unsigned int v98 = 2U;
unsigned int v97 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
