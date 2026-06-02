#include <stdlib.h>
extern signed char v1 (signed short, signed char, signed char);
extern signed char (*v2) (signed short, signed char, signed char);
extern unsigned int v3 (unsigned short, signed char, unsigned int);
extern unsigned int (*v4) (unsigned short, signed char, unsigned int);
unsigned short v5 (signed short, signed short);
unsigned short (*v6) (signed short, signed short) = v5;
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern unsigned char v9 (signed int, signed char, signed short, signed short);
extern unsigned char (*v10) (signed int, signed char, signed short, signed short);
signed short v11 (signed short, signed int);
signed short (*v12) (signed short, signed int) = v11;
extern signed short v13 (signed int, signed int, unsigned short, signed short);
extern signed short (*v14) (signed int, signed int, unsigned short, signed short);
extern signed char v15 (void);
extern signed char (*v16) (void);
unsigned char v17 (unsigned char, unsigned short, signed short);
unsigned char (*v18) (unsigned char, unsigned short, signed short) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned short v21 (signed char, unsigned char);
extern unsigned short (*v22) (signed char, unsigned char);
extern unsigned int v23 (signed int, signed int, signed int);
extern unsigned int (*v24) (signed int, signed int, signed int);
extern unsigned char v25 (unsigned short, unsigned int);
extern unsigned char (*v26) (unsigned short, unsigned int);
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v79 = 4U;
signed short v78 = 1;
unsigned char v77 = 1;

unsigned char v17 (unsigned char v80, unsigned short v81, signed short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 5;
signed int v84 = -3;
signed short v83 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed short v86, signed int v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = -1;
signed char v89 = -4;
unsigned short v88 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed short v91, signed short v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 3;
signed short v94 = 0;
unsigned char v93 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
