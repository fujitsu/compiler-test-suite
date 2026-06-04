#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern void v5 (void);
extern void (*v6) (void);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed short v15 (unsigned int, signed int, signed int, unsigned short);
extern signed short (*v16) (unsigned int, signed int, signed int, unsigned short);
unsigned short v17 (signed char, signed short, signed char, unsigned short);
unsigned short (*v18) (signed char, signed short, signed char, unsigned short) = v17;
unsigned int v19 (unsigned int, signed int);
unsigned int (*v20) (unsigned int, signed int) = v19;
signed char v21 (unsigned short);
signed char (*v22) (unsigned short) = v21;
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
signed char v27 (signed short);
signed char (*v28) (signed short) = v27;
extern signed char v29 (unsigned int, unsigned int);
extern signed char (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v81 = 1U;
signed int v80 = 1;
unsigned char v79 = 3;

signed char v27 (signed short v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
signed short v85 = 1;
unsigned short v84 = 2;
unsigned int v83 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = 3;
unsigned int v88 = 6U;
signed int v87 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v90, signed int v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -1;
unsigned char v93 = 2;
signed short v92 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed char v95, signed short v96, signed char v97, unsigned short v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = -3;
signed char v100 = -2;
unsigned short v99 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
