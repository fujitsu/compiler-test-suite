#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned char, signed short);
extern unsigned char (*v2) (signed int, unsigned char, signed short);
extern unsigned short v3 (unsigned int, signed char);
extern unsigned short (*v4) (unsigned int, signed char);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
extern unsigned int v15 (signed char, signed short);
extern unsigned int (*v16) (signed char, signed short);
extern unsigned char v17 (unsigned char, signed short, signed short, signed char);
extern unsigned char (*v18) (unsigned char, signed short, signed short, signed char);
extern unsigned short v19 (signed char, signed int, unsigned short);
extern unsigned short (*v20) (signed char, signed int, unsigned short);
extern signed short v21 (unsigned int);
extern signed short (*v22) (unsigned int);
signed char v23 (signed char, unsigned int, unsigned short);
signed char (*v24) (signed char, unsigned int, unsigned short) = v23;
signed char v25 (signed int, signed char);
signed char (*v26) (signed int, signed char) = v25;
extern void v27 (signed int);
extern void (*v28) (signed int);
extern void v29 (unsigned char, unsigned int, signed int, signed char);
extern void (*v30) (unsigned char, unsigned int, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v73 = 2;
unsigned char v72 = 3;
signed short v71 = -2;

signed char v25 (signed int v74, signed char v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 2U;
signed short v77 = -4;
unsigned int v76 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed char v79, unsigned int v80, unsigned short v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = -3;
unsigned char v83 = 0;
signed char v82 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
