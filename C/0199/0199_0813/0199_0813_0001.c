#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned short, signed char);
extern unsigned int (*v2) (unsigned char, unsigned short, signed char);
extern unsigned char v3 (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned char (*v4) (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned short v5 (signed int, signed char, signed int, signed int);
extern unsigned short (*v6) (signed int, signed char, signed int, signed int);
void v7 (void);
void (*v8) (void) = v7;
extern unsigned short v11 (signed short);
extern unsigned short (*v12) (signed short);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
unsigned short v15 (signed char, unsigned int, signed int);
unsigned short (*v16) (signed char, unsigned int, signed int) = v15;
extern unsigned short v19 (unsigned short, signed int, unsigned short);
extern unsigned short (*v20) (unsigned short, signed int, unsigned short);
extern unsigned char v21 (signed short, signed int);
extern unsigned char (*v22) (signed short, signed int);
void v25 (unsigned short, unsigned short, signed short, unsigned short);
void (*v26) (unsigned short, unsigned short, signed short, unsigned short) = v25;
extern unsigned int v27 (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned int (*v28) (unsigned short, signed short, unsigned int, unsigned short);
extern unsigned int v29 (unsigned char, signed int, signed short, unsigned short);
extern unsigned int (*v30) (unsigned char, signed int, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v74 = 3;
signed char v73 = 2;
unsigned int v72 = 2U;

void v25 (unsigned short v75, unsigned short v76, signed short v77, unsigned short v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 0;
unsigned short v80 = 6;
unsigned int v79 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed char v82, unsigned int v83, signed int v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed short v87 = 1;
signed int v86 = -1;
signed short v85 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
signed char v90 = 2;
unsigned short v89 = 7;
signed char v88 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
