#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short, unsigned int);
extern unsigned short (*v2) (unsigned short, unsigned short, unsigned int);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
unsigned char v5 (unsigned int);
unsigned char (*v6) (unsigned int) = v5;
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
void v9 (void);
void (*v10) (void) = v9;
extern void v11 (unsigned int, signed char);
extern void (*v12) (unsigned int, signed char);
signed char v13 (signed short, unsigned short, signed int);
signed char (*v14) (signed short, unsigned short, signed int) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (signed char);
extern signed short (*v18) (signed char);
extern signed int v19 (signed int, signed int, signed int, signed int);
extern signed int (*v20) (signed int, signed int, signed int, signed int);
extern signed char v21 (unsigned short, unsigned char, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char, unsigned char);
extern void v23 (signed short, unsigned char);
extern void (*v24) (signed short, unsigned char);
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
extern signed short v29 (signed int);
extern signed short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v81 = 3U;
signed int v80 = 2;
unsigned char v79 = 7;

signed char v13 (signed short v82, unsigned short v83, signed int v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 5U;
unsigned short v86 = 2;
unsigned char v85 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned char v90 = 3;
unsigned char v89 = 7;
signed char v88 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = 1;
unsigned int v93 = 2U;
unsigned int v92 = 2U;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}
