#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned char, unsigned short);
extern unsigned short (*v2) (unsigned short, unsigned char, unsigned short);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (unsigned int, signed int, unsigned int, signed int);
extern signed int (*v6) (unsigned int, signed int, unsigned int, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned char v9 (unsigned char, signed char, signed int, signed char);
extern unsigned char (*v10) (unsigned char, signed char, signed int, signed char);
unsigned int v11 (unsigned char, unsigned short, signed char);
unsigned int (*v12) (unsigned char, unsigned short, signed char) = v11;
extern unsigned char v13 (unsigned short, signed char, signed short);
extern unsigned char (*v14) (unsigned short, signed char, signed short);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
signed short v17 (signed short, signed char, signed int, signed char);
signed short (*v18) (signed short, signed char, signed int, signed char) = v17;
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
signed short v21 (void);
signed short (*v22) (void) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed int v27 (signed short);
extern signed int (*v28) (signed short);
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v80 = -1;
unsigned int v79 = 6U;
signed short v78 = 0;

signed short v21 (void)
{
{
for (;;) {
unsigned short v83 = 0;
signed char v82 = -4;
unsigned short v81 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed short v84, signed char v85, signed int v86, signed char v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 4U;
signed char v89 = -1;
signed char v88 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v91, unsigned short v92, signed char v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -4;
unsigned char v95 = 0;
signed char v94 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
