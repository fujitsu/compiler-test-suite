#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
signed char v5 (signed char);
signed char (*v6) (signed char) = v5;
extern signed char v7 (unsigned char, unsigned char, unsigned char, signed short);
extern signed char (*v8) (unsigned char, unsigned char, unsigned char, signed short);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned char v13 (unsigned int, unsigned int, unsigned int);
extern unsigned char (*v14) (unsigned int, unsigned int, unsigned int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern unsigned char v19 (signed char, unsigned short, signed short);
extern unsigned char (*v20) (signed char, unsigned short, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned short v23 (unsigned int, unsigned char, unsigned short);
extern unsigned short (*v24) (unsigned int, unsigned char, unsigned short);
unsigned char v25 (unsigned short, signed short);
unsigned char (*v26) (unsigned short, signed short) = v25;
extern signed char v27 (unsigned int, unsigned int, signed int, unsigned int);
extern signed char (*v28) (unsigned int, unsigned int, signed int, unsigned int);
extern void v29 (signed short, unsigned short, signed short, unsigned char);
extern void (*v30) (signed short, unsigned short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v79 = 1U;
signed char v78 = -1;
unsigned short v77 = 6;

unsigned char v25 (unsigned short v80, signed short v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = -2;
unsigned char v83 = 5;
signed int v82 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = -1;
signed short v87 = -2;
signed int v86 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
