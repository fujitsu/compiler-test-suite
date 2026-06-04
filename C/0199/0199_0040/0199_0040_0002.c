#include <stdlib.h>
extern signed int v1 (signed char, unsigned int, unsigned short);
extern signed int (*v2) (signed char, unsigned int, unsigned short);
extern void v3 (signed short, unsigned short, signed short, unsigned int);
extern void (*v4) (signed short, unsigned short, signed short, unsigned int);
extern unsigned short v5 (signed int, signed char, signed int);
extern unsigned short (*v6) (signed int, signed char, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (unsigned short, signed int);
extern unsigned int (*v10) (unsigned short, signed int);
extern void v11 (unsigned char, unsigned char, signed short);
extern void (*v12) (unsigned char, unsigned char, signed short);
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
signed int v15 (void);
signed int (*v16) (void) = v15;
signed char v17 (void);
signed char (*v18) (void) = v17;
extern unsigned int v19 (signed char, signed short, unsigned char, unsigned short);
extern unsigned int (*v20) (signed char, signed short, unsigned char, unsigned short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed int, unsigned int);
extern void (*v24) (signed int, unsigned int);
signed char v25 (signed short, signed short, unsigned int, signed char);
signed char (*v26) (signed short, signed short, unsigned int, signed char) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern void v29 (unsigned int, signed char);
extern void (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v78 = 2;
signed short v77 = 1;
unsigned char v76 = 7;

signed char v25 (signed short v79, signed short v80, unsigned int v81, signed char v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = -3;
unsigned short v84 = 6;
signed short v83 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned short v88 = 5;
unsigned short v87 = 4;
unsigned char v86 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
signed short v91 = -2;
signed short v90 = -3;
signed int v89 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
