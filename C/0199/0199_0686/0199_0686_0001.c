#include <stdlib.h>
extern signed char v1 (signed char, unsigned short, unsigned char);
extern signed char (*v2) (signed char, unsigned short, unsigned char);
extern signed char v3 (unsigned short, signed short);
extern signed char (*v4) (unsigned short, signed short);
signed int v5 (void);
signed int (*v6) (void) = v5;
unsigned int v7 (signed int, signed char, unsigned int);
unsigned int (*v8) (signed int, signed char, unsigned int) = v7;
extern signed short v9 (signed char, unsigned short);
extern signed short (*v10) (signed char, unsigned short);
extern signed int v11 (unsigned short, signed short, unsigned char, signed char);
extern signed int (*v12) (unsigned short, signed short, unsigned char, signed char);
extern unsigned char v13 (signed short, unsigned short, unsigned short, signed int);
extern unsigned char (*v14) (signed short, unsigned short, unsigned short, signed int);
extern signed int v17 (signed int, signed char, unsigned short);
extern signed int (*v18) (signed int, signed char, unsigned short);
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (signed int, unsigned short, unsigned short);
extern unsigned int (*v24) (signed int, unsigned short, unsigned short);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern unsigned char v27 (signed int, unsigned int, signed int, signed short);
extern unsigned char (*v28) (signed int, unsigned int, signed int, signed short);
signed char v29 (signed int, unsigned char, unsigned short);
signed char (*v30) (signed int, unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v76 = 5U;
signed char v75 = -3;
unsigned int v74 = 0U;

signed char v29 (signed int v77, unsigned char v78, unsigned short v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = 2;
unsigned short v81 = 3;
unsigned int v80 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed int v83, signed char v84, unsigned int v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = 1;
signed char v87 = 1;
unsigned char v86 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
signed short v91 = -3;
signed char v90 = 2;
unsigned short v89 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
