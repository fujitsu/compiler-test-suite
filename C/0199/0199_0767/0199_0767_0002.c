#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (signed short, signed char);
extern void (*v10) (signed short, signed char);
extern signed int v11 (signed short, signed char, signed char);
extern signed int (*v12) (signed short, signed char, signed char);
unsigned char v13 (signed int, unsigned short, signed short, unsigned int);
unsigned char (*v14) (signed int, unsigned short, signed short, unsigned int) = v13;
extern signed short v15 (signed short, signed short);
extern signed short (*v16) (signed short, signed short);
extern signed int v19 (signed short, unsigned short, signed short);
extern signed int (*v20) (signed short, unsigned short, signed short);
extern unsigned int v21 (unsigned char, unsigned short);
extern unsigned int (*v22) (unsigned char, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
signed short v25 (void);
signed short (*v26) (void) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned short v29 (unsigned char, unsigned short);
extern unsigned short (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v75 = 7;
unsigned int v74 = 2U;
signed int v73 = 2;

signed short v25 (void)
{
{
for (;;) {
signed char v78 = -2;
signed short v77 = 3;
unsigned char v76 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed int v79, unsigned short v80, signed short v81, unsigned int v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 1U;
signed char v84 = -3;
signed int v83 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
