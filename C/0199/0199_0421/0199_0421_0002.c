#include <stdlib.h>
extern unsigned short v1 (signed char, signed short, unsigned short);
extern unsigned short (*v2) (signed char, signed short, unsigned short);
extern signed int v3 (unsigned char, unsigned short, unsigned int);
extern signed int (*v4) (unsigned char, unsigned short, unsigned int);
extern signed int v5 (void);
extern signed int (*v6) (void);
unsigned short v9 (signed char, signed char, signed short, unsigned short);
unsigned short (*v10) (signed char, signed char, signed short, unsigned short) = v9;
extern unsigned int v11 (unsigned short, signed char);
extern unsigned int (*v12) (unsigned short, signed char);
extern unsigned char v13 (signed char, signed short, signed int, signed short);
extern unsigned char (*v14) (signed char, signed short, signed int, signed short);
extern void v15 (signed short, unsigned char);
extern void (*v16) (signed short, unsigned char);
extern signed char v17 (unsigned short, unsigned char, signed int, unsigned short);
extern signed char (*v18) (unsigned short, unsigned char, signed int, unsigned short);
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
unsigned char v21 (signed char, unsigned short, unsigned char, signed char);
unsigned char (*v22) (signed char, unsigned short, unsigned char, signed char) = v21;
extern void v23 (unsigned char, unsigned short);
extern void (*v24) (unsigned char, unsigned short);
extern unsigned int v25 (unsigned char, signed short, signed short, unsigned char);
extern unsigned int (*v26) (unsigned char, signed short, signed short, unsigned char);
signed short v29 (unsigned char, signed short, signed int, unsigned char);
signed short (*v30) (unsigned char, signed short, signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v80 = 4;
signed short v79 = 1;
signed short v78 = -2;

signed short v29 (unsigned char v81, signed short v82, signed int v83, unsigned char v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 0U;
unsigned char v86 = 4;
unsigned int v85 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed char v88, unsigned short v89, unsigned char v90, signed char v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = 0;
unsigned char v93 = 0;
unsigned short v92 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed char v95, signed char v96, signed short v97, unsigned short v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 2;
unsigned int v100 = 7U;
unsigned int v99 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
