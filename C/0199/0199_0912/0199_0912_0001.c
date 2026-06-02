#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned int (*v2) (unsigned int, signed char, unsigned char, unsigned char);
extern signed short v3 (unsigned int, unsigned int, unsigned char);
extern signed short (*v4) (unsigned int, unsigned int, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed int v9 (signed short, unsigned short, signed int);
extern signed int (*v10) (signed short, unsigned short, signed int);
void v11 (unsigned int, signed char, signed char, signed int);
void (*v12) (unsigned int, signed char, signed char, signed int) = v11;
signed short v13 (unsigned short, signed int, unsigned char, signed int);
signed short (*v14) (unsigned short, signed int, unsigned char, signed int) = v13;
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern unsigned int v17 (signed char, signed char, unsigned short, signed int);
extern unsigned int (*v18) (signed char, signed char, unsigned short, signed int);
extern void v19 (signed int, unsigned char, unsigned int);
extern void (*v20) (signed int, unsigned char, unsigned int);
extern signed short v21 (unsigned char);
extern signed short (*v22) (unsigned char);
extern unsigned char v23 (unsigned int, signed short, signed char);
extern unsigned char (*v24) (unsigned int, signed short, signed char);
extern unsigned char v25 (unsigned char, unsigned short, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, unsigned short, signed short, unsigned short);
extern signed int v27 (unsigned int, unsigned short, unsigned int, unsigned char);
extern signed int (*v28) (unsigned int, unsigned short, unsigned int, unsigned char);
extern signed char v29 (signed short);
extern signed char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v70 = 2;
unsigned short v69 = 1;
unsigned short v68 = 3;

unsigned short v15 (void)
{
{
for (;;) {
signed short v73 = -2;
unsigned int v72 = 2U;
signed char v71 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (unsigned short v74, signed int v75, unsigned char v76, signed int v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 3;
unsigned char v79 = 5;
unsigned int v78 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned int v81, signed char v82, signed char v83, signed int v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = 0;
signed int v86 = -2;
signed int v85 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
