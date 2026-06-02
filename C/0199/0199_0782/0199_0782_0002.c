#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned int, unsigned char);
extern signed int (*v2) (unsigned char, unsigned int, unsigned char);
unsigned int v3 (unsigned char, signed int, unsigned int);
unsigned int (*v4) (unsigned char, signed int, unsigned int) = v3;
extern unsigned short v5 (unsigned char, unsigned char);
extern unsigned short (*v6) (unsigned char, unsigned char);
extern signed int v7 (signed int);
extern signed int (*v8) (signed int);
extern unsigned char v9 (unsigned char);
extern unsigned char (*v10) (unsigned char);
extern signed int v11 (signed char, signed char, signed int);
extern signed int (*v12) (signed char, signed char, signed int);
extern void v13 (signed char, unsigned short, signed char);
extern void (*v14) (signed char, unsigned short, signed char);
signed char v15 (unsigned short, signed char);
signed char (*v16) (unsigned short, signed char) = v15;
void v17 (unsigned int, signed short, signed int);
void (*v18) (unsigned int, signed short, signed int) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern void v21 (signed short, signed char, unsigned int, signed short);
extern void (*v22) (signed short, signed char, unsigned int, signed short);
extern signed int v23 (signed short, signed char, unsigned char);
extern signed int (*v24) (signed short, signed char, unsigned char);
extern signed short v27 (unsigned int, unsigned char);
extern signed short (*v28) (unsigned int, unsigned char);
extern signed int v29 (unsigned short, unsigned int);
extern signed int (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v80 = 0;
unsigned short v79 = 6;
signed int v78 = -1;

void v17 (unsigned int v81, signed short v82, signed int v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 1;
signed char v85 = 1;
signed short v84 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned short v87, signed char v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 6;
unsigned int v90 = 4U;
unsigned short v89 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v92, signed int v93, unsigned int v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 6;
unsigned short v96 = 5;
signed char v95 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
