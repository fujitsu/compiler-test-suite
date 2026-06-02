#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, signed char, unsigned short);
extern unsigned char (*v2) (unsigned short, signed char, signed char, unsigned short);
unsigned short v3 (unsigned int);
unsigned short (*v4) (unsigned int) = v3;
extern void v7 (signed int, signed int);
extern void (*v8) (signed int, signed int);
extern unsigned short v9 (signed short, unsigned char);
extern unsigned short (*v10) (signed short, unsigned char);
extern void v11 (unsigned char, unsigned short, signed short, signed short);
extern void (*v12) (unsigned char, unsigned short, signed short, signed short);
extern unsigned int v15 (unsigned short, unsigned int, signed short, signed char);
extern unsigned int (*v16) (unsigned short, unsigned int, signed short, signed char);
unsigned char v17 (signed char, unsigned int, signed short);
unsigned char (*v18) (signed char, unsigned int, signed short) = v17;
signed char v19 (signed short);
signed char (*v20) (signed short) = v19;
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
extern signed short v23 (signed char, signed short, unsigned char, signed char);
extern signed short (*v24) (signed char, signed short, unsigned char, signed char);
extern void v25 (unsigned int, signed int);
extern void (*v26) (unsigned int, signed int);
extern unsigned short v27 (unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, unsigned short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v85 = 1;
unsigned int v84 = 5U;
unsigned int v83 = 3U;

signed char v19 (signed short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = -2;
signed short v88 = 3;
unsigned int v87 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed char v90, unsigned int v91, signed short v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 0;
signed short v94 = -1;
signed int v93 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = 1;
signed char v98 = -1;
unsigned int v97 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
