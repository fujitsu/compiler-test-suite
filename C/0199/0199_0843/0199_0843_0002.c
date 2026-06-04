#include <stdlib.h>
signed char v3 (unsigned int);
signed char (*v4) (unsigned int) = v3;
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
unsigned int v9 (unsigned char, unsigned char, signed char);
unsigned int (*v10) (unsigned char, unsigned char, signed char) = v9;
extern unsigned char v11 (signed short, unsigned char);
extern unsigned char (*v12) (signed short, unsigned char);
extern signed short v13 (unsigned short, signed int);
extern signed short (*v14) (unsigned short, signed int);
extern signed short v15 (signed short, signed char);
extern signed short (*v16) (signed short, signed char);
extern unsigned int v17 (unsigned int, unsigned short);
extern unsigned int (*v18) (unsigned int, unsigned short);
extern void v19 (unsigned short, signed char, unsigned short);
extern void (*v20) (unsigned short, signed char, unsigned short);
extern signed int v21 (void);
extern signed int (*v22) (void);
void v23 (signed short);
void (*v24) (signed short) = v23;
extern unsigned short v25 (unsigned short, unsigned short, signed int, signed char);
extern unsigned short (*v26) (unsigned short, unsigned short, signed int, signed char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned char v29 (signed char, signed int, unsigned char);
extern unsigned char (*v30) (signed char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v79 = 3;
signed int v78 = -3;
signed short v77 = -2;

void v23 (signed short v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = 0;
signed int v82 = -3;
signed int v81 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned char v84, unsigned char v85, signed char v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 0;
signed short v88 = 3;
signed char v87 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = -3;
unsigned int v92 = 6U;
unsigned char v91 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
