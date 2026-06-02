#include <stdlib.h>
signed char v3 (signed int, signed char, signed char);
signed char (*v4) (signed int, signed char, signed char) = v3;
extern void v5 (signed int, signed int);
extern void (*v6) (signed int, signed int);
extern signed int v7 (unsigned short, signed char);
extern signed int (*v8) (unsigned short, signed char);
extern signed int v9 (unsigned char, unsigned short, signed int, signed int);
extern signed int (*v10) (unsigned char, unsigned short, signed int, signed int);
extern signed short v11 (signed int, unsigned char, unsigned int, signed short);
extern signed short (*v12) (signed int, unsigned char, unsigned int, signed short);
extern signed char v13 (unsigned short, unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, unsigned short, unsigned int);
extern signed short v15 (unsigned short, unsigned char);
extern signed short (*v16) (unsigned short, unsigned char);
extern void v17 (unsigned short, unsigned int, signed short, unsigned short);
extern void (*v18) (unsigned short, unsigned int, signed short, unsigned short);
signed short v19 (unsigned char, unsigned char, signed short);
signed short (*v20) (unsigned char, unsigned char, signed short) = v19;
signed int v21 (unsigned int, signed char);
signed int (*v22) (unsigned int, signed char) = v21;
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (unsigned int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned short);
extern signed char v29 (signed char, signed char);
extern signed char (*v30) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v79 = 2;
signed int v78 = 0;
unsigned short v77 = 4;

signed int v21 (unsigned int v80, signed char v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = 1;
unsigned int v83 = 4U;
unsigned char v82 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned char v85, unsigned char v86, signed short v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = -3;
signed char v89 = 0;
signed int v88 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed int v91, signed char v92, signed char v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed char v96 = -3;
signed int v95 = -4;
unsigned short v94 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
