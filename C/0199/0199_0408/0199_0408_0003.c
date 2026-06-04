#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed char v3 (signed char, unsigned int, signed short, signed int);
extern signed char (*v4) (signed char, unsigned int, signed short, signed int);
extern signed char v5 (unsigned short, unsigned char, unsigned int, unsigned short);
extern signed char (*v6) (unsigned short, unsigned char, unsigned int, unsigned short);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern unsigned short v9 (unsigned int);
extern unsigned short (*v10) (unsigned int);
extern void v11 (unsigned short, signed short);
extern void (*v12) (unsigned short, signed short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v19 (unsigned int, unsigned short);
extern unsigned int (*v20) (unsigned int, unsigned short);
extern unsigned char v21 (signed int, unsigned int, signed int);
extern unsigned char (*v22) (signed int, unsigned int, signed int);
signed short v23 (signed int, unsigned int, signed short, unsigned char);
signed short (*v24) (signed int, unsigned int, signed short, unsigned char) = v23;
extern unsigned short v25 (signed int, unsigned char, signed short);
extern unsigned short (*v26) (signed int, unsigned char, signed short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v77 = 0U;
unsigned short v76 = 2;
signed char v75 = -2;

signed short v23 (signed int v78, unsigned int v79, signed short v80, unsigned char v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = -1;
unsigned int v83 = 5U;
unsigned short v82 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
signed int v87 = 0;
unsigned short v86 = 5;
signed char v85 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
