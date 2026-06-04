#include <stdlib.h>
unsigned int v3 (unsigned char, unsigned int, signed short);
unsigned int (*v4) (unsigned char, unsigned int, signed short) = v3;
extern void v7 (signed int, unsigned short);
extern void (*v8) (signed int, unsigned short);
extern unsigned int v9 (unsigned int);
extern unsigned int (*v10) (unsigned int);
extern unsigned short v11 (unsigned short, unsigned int, unsigned short);
extern unsigned short (*v12) (unsigned short, unsigned int, unsigned short);
signed int v13 (signed int, signed int, signed short, unsigned short);
signed int (*v14) (signed int, signed int, signed short, unsigned short) = v13;
extern signed int v15 (unsigned int, unsigned char, signed short, unsigned char);
extern signed int (*v16) (unsigned int, unsigned char, signed short, unsigned char);
extern void v17 (signed short, unsigned int, unsigned int, signed char);
extern void (*v18) (signed short, unsigned int, unsigned int, signed char);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern signed short v21 (signed char, unsigned int, signed int, unsigned char);
extern signed short (*v22) (signed char, unsigned int, signed int, unsigned char);
signed int v23 (signed char, signed int, unsigned int);
signed int (*v24) (signed char, signed int, unsigned int) = v23;
extern void v25 (unsigned short, unsigned char);
extern void (*v26) (unsigned short, unsigned char);
extern signed int v27 (signed short, signed short, unsigned int, signed char);
extern signed int (*v28) (signed short, signed short, unsigned int, signed char);
extern unsigned short v29 (unsigned int, unsigned int, signed char);
extern unsigned short (*v30) (unsigned int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v81 = 2;
unsigned short v80 = 2;
unsigned int v79 = 7U;

signed int v23 (signed char v82, signed int v83, unsigned int v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned char v87 = 0;
unsigned int v86 = 3U;
signed int v85 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed int v88, signed int v89, signed short v90, unsigned short v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned char v94 = 2;
unsigned int v93 = 0U;
unsigned int v92 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v95, unsigned int v96, signed short v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = 1;
unsigned int v99 = 5U;
signed int v98 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
