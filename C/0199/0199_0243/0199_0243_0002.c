#include <stdlib.h>
unsigned short v5 (signed int, unsigned char, unsigned int, unsigned short);
unsigned short (*v6) (signed int, unsigned char, unsigned int, unsigned short) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern signed short v11 (signed char, unsigned short);
extern signed short (*v12) (signed char, unsigned short);
extern signed int v15 (unsigned char);
extern signed int (*v16) (unsigned char);
extern unsigned short v17 (signed int, unsigned short);
extern unsigned short (*v18) (signed int, unsigned short);
extern signed int v19 (signed int, unsigned short, signed int);
extern signed int (*v20) (signed int, unsigned short, signed int);
extern unsigned short v21 (unsigned short, unsigned int, unsigned int);
extern unsigned short (*v22) (unsigned short, unsigned int, unsigned int);
extern unsigned int v23 (unsigned int, signed char, unsigned char);
extern unsigned int (*v24) (unsigned int, signed char, unsigned char);
extern signed int v25 (signed short, signed short, signed short, signed char);
extern signed int (*v26) (signed short, signed short, signed short, signed char);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v81 = 3;
unsigned short v80 = 3;
unsigned char v79 = 3;

unsigned int v9 (void)
{
{
for (;;) {
signed char v84 = -4;
unsigned short v83 = 0;
unsigned int v82 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed int v85, unsigned char v86, unsigned int v87, unsigned short v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 5;
signed short v90 = -2;
unsigned char v89 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
