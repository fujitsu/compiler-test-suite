#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned int);
extern unsigned char (*v2) (signed short, unsigned int);
signed char v3 (unsigned int, signed char, signed int);
signed char (*v4) (unsigned int, signed char, signed int) = v3;
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned short v15 (signed char, unsigned short, unsigned int, unsigned short);
extern unsigned short (*v16) (signed char, unsigned short, unsigned int, unsigned short);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern unsigned short v19 (unsigned int, unsigned char, unsigned short, unsigned char);
extern unsigned short (*v20) (unsigned int, unsigned char, unsigned short, unsigned char);
unsigned char v21 (void);
unsigned char (*v22) (void) = v21;
extern unsigned int v23 (unsigned short, signed char, signed char);
extern unsigned int (*v24) (unsigned short, signed char, signed char);
extern signed short v25 (signed char, signed short);
extern signed short (*v26) (signed char, signed short);
extern unsigned int v27 (signed char, signed char);
extern unsigned int (*v28) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v71 = 6;
unsigned short v70 = 1;
unsigned short v69 = 0;

unsigned char v21 (void)
{
{
for (;;) {
unsigned char v74 = 7;
unsigned char v73 = 0;
unsigned char v72 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v75, signed char v76, signed int v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = 3;
signed short v79 = -4;
unsigned int v78 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
