#include <stdlib.h>
extern signed int v1 (signed int, signed int, unsigned char);
extern signed int (*v2) (signed int, signed int, unsigned char);
extern unsigned char v3 (unsigned short, unsigned int);
extern unsigned char (*v4) (unsigned short, unsigned int);
extern void v5 (unsigned short, unsigned char, signed int);
extern void (*v6) (unsigned short, unsigned char, signed int);
extern unsigned char v7 (unsigned char, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned char, unsigned int, unsigned int);
unsigned char v9 (unsigned char);
unsigned char (*v10) (unsigned char) = v9;
extern unsigned char v11 (signed short, signed short);
extern unsigned char (*v12) (signed short, signed short);
signed int v13 (signed int, signed char, unsigned short);
signed int (*v14) (signed int, signed char, unsigned short) = v13;
extern signed char v15 (unsigned int, unsigned short, signed char);
extern signed char (*v16) (unsigned int, unsigned short, signed char);
extern unsigned short v17 (unsigned short, unsigned int, signed short);
extern unsigned short (*v18) (unsigned short, unsigned int, signed short);
extern unsigned char v19 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v20) (unsigned short, unsigned int, unsigned char);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (signed char, signed short);
extern signed short (*v26) (signed char, signed short);
extern void v27 (signed char, unsigned char, unsigned short, unsigned char);
extern void (*v28) (signed char, unsigned char, unsigned short, unsigned char);
extern signed int v29 (signed int, signed short, unsigned char);
extern signed int (*v30) (signed int, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v78 = -2;
unsigned char v77 = 1;
unsigned char v76 = 1;

unsigned char v21 (void)
{
{
for (;;) {
signed int v81 = 2;
unsigned char v80 = 7;
unsigned char v79 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed int v82, signed char v83, unsigned short v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 1U;
signed short v86 = -2;
signed int v85 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = 1;
signed int v90 = -4;
signed char v89 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
