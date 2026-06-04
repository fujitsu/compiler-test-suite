#include <stdlib.h>
extern void v1 (signed char, unsigned short);
extern void (*v2) (signed char, unsigned short);
extern signed short v3 (signed char, signed char, unsigned int);
extern signed short (*v4) (signed char, signed char, unsigned int);
void v7 (signed int, unsigned int, unsigned short, signed short);
void (*v8) (signed int, unsigned int, unsigned short, signed short) = v7;
unsigned char v9 (unsigned char, unsigned short);
unsigned char (*v10) (unsigned char, unsigned short) = v9;
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern signed char v15 (unsigned char, unsigned char);
extern signed char (*v16) (unsigned char, unsigned char);
unsigned short v17 (signed int);
unsigned short (*v18) (signed int) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern void v27 (signed short);
extern void (*v28) (signed short);
extern unsigned short v29 (signed char);
extern unsigned short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v74 = 1;
unsigned char v73 = 7;
unsigned char v72 = 2;

unsigned short v17 (signed int v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 1U;
signed int v77 = -2;
signed short v76 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v79, unsigned short v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned short v83 = 3;
signed short v82 = -3;
unsigned int v81 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed int v84, unsigned int v85, unsigned short v86, signed short v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = 3;
unsigned int v89 = 3U;
signed int v88 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
