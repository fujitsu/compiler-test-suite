#include <stdlib.h>
extern unsigned int v1 (signed short, signed char, unsigned short, signed int);
extern unsigned int (*v2) (signed short, signed char, unsigned short, signed int);
extern signed char v3 (signed short, signed short, unsigned short);
extern signed char (*v4) (signed short, signed short, unsigned short);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned int v7 (signed char, signed char, signed char, signed short);
extern unsigned int (*v8) (signed char, signed char, signed char, signed short);
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
extern unsigned short v11 (signed int, signed int);
extern unsigned short (*v12) (signed int, signed int);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern unsigned char v15 (signed int, unsigned char, unsigned short, signed int);
extern unsigned char (*v16) (signed int, unsigned char, unsigned short, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed char v19 (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed char (*v20) (unsigned int, unsigned short, unsigned short, unsigned short);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern unsigned int v23 (signed char, signed int, signed int);
extern unsigned int (*v24) (signed char, signed int, signed int);
extern unsigned int v25 (unsigned short, unsigned short, signed char, unsigned int);
extern unsigned int (*v26) (unsigned short, unsigned short, signed char, unsigned int);
unsigned char v27 (unsigned char, unsigned char, unsigned int);
unsigned char (*v28) (unsigned char, unsigned char, unsigned int) = v27;
extern unsigned int v29 (signed char, signed int, unsigned int, unsigned char);
extern unsigned int (*v30) (signed char, signed int, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v81 = -2;
unsigned char v80 = 2;
signed short v79 = -4;

unsigned char v27 (unsigned char v82, unsigned char v83, unsigned int v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 0;
signed int v86 = 3;
unsigned short v85 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (void)
{
{
for (;;) {
signed char v90 = -1;
unsigned int v89 = 2U;
signed char v88 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned short v93 = 5;
signed short v92 = -2;
signed int v91 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
