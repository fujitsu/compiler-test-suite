#include <stdlib.h>
extern signed int v1 (signed short, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned short, unsigned int);
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
signed char v11 (unsigned short, signed short, unsigned short, signed char);
signed char (*v12) (unsigned short, signed short, unsigned short, signed char) = v11;
signed int v13 (unsigned short, unsigned char);
signed int (*v14) (unsigned short, unsigned char) = v13;
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned char v17 (signed short, unsigned int, signed char, signed int);
extern unsigned char (*v18) (signed short, unsigned int, signed char, signed int);
extern unsigned int v23 (unsigned int, unsigned char, signed int, signed int);
extern unsigned int (*v24) (unsigned int, unsigned char, signed int, signed int);
extern signed char v25 (unsigned int, signed int, signed int, unsigned int);
extern signed char (*v26) (unsigned int, signed int, signed int, unsigned int);
unsigned int v27 (signed char, unsigned char);
unsigned int (*v28) (signed char, unsigned char) = v27;
extern void v29 (unsigned int, unsigned char, signed short, unsigned int);
extern void (*v30) (unsigned int, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v80 = 1;
signed char v79 = 1;
unsigned short v78 = 4;

unsigned int v27 (signed char v81, unsigned char v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 4U;
signed int v84 = 1;
unsigned int v83 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned short v86, unsigned char v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = 3;
signed int v89 = -2;
unsigned short v88 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned short v91, signed short v92, unsigned short v93, signed char v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = 3;
signed short v96 = 2;
unsigned char v95 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
