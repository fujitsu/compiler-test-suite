#include <stdlib.h>
extern unsigned int v1 (signed int, signed short);
extern unsigned int (*v2) (signed int, signed short);
signed char v3 (unsigned int, unsigned char, unsigned int);
signed char (*v4) (unsigned int, unsigned char, unsigned int) = v3;
extern unsigned int v5 (signed char, unsigned int, signed int);
extern unsigned int (*v6) (signed char, unsigned int, signed int);
extern unsigned int v7 (unsigned char, unsigned int, unsigned short, unsigned char);
extern unsigned int (*v8) (unsigned char, unsigned int, unsigned short, unsigned char);
extern signed short v9 (unsigned char, unsigned int, unsigned char);
extern signed short (*v10) (unsigned char, unsigned int, unsigned char);
extern signed char v11 (signed short, signed char, signed short);
extern signed char (*v12) (signed short, signed char, signed short);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern signed int v17 (unsigned int, signed short, unsigned int);
extern signed int (*v18) (unsigned int, signed short, unsigned int);
extern signed int v19 (signed short, unsigned char, signed short);
extern signed int (*v20) (signed short, unsigned char, signed short);
extern signed short v21 (unsigned int, signed char);
extern signed short (*v22) (unsigned int, signed char);
extern unsigned int v23 (signed char, signed char);
extern unsigned int (*v24) (signed char, signed char);
extern void v25 (void);
extern void (*v26) (void);
extern signed int v27 (signed short, signed int);
extern signed int (*v28) (signed short, signed int);
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v77 = 5U;
unsigned char v76 = 4;
signed int v75 = -4;

unsigned int v15 (void)
{
{
for (;;) {
unsigned char v80 = 2;
signed short v79 = 1;
unsigned int v78 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v81, unsigned char v82, unsigned int v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = 0;
signed int v85 = -2;
signed char v84 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
