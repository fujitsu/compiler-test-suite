#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed short, unsigned int);
extern unsigned int (*v2) (unsigned int, signed short, unsigned int);
extern unsigned char v3 (unsigned char, unsigned short, unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, unsigned short, unsigned char, signed short);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed int v7 (unsigned short, unsigned int, unsigned int, unsigned char);
extern signed int (*v8) (unsigned short, unsigned int, unsigned int, unsigned char);
signed char v9 (unsigned char, unsigned int, signed char);
signed char (*v10) (unsigned char, unsigned int, signed char) = v9;
extern unsigned short v11 (unsigned int, unsigned int, signed short, unsigned int);
extern unsigned short (*v12) (unsigned int, unsigned int, signed short, unsigned int);
extern signed char v13 (unsigned int, unsigned short);
extern signed char (*v14) (unsigned int, unsigned short);
unsigned int v15 (signed short, signed short);
unsigned int (*v16) (signed short, signed short) = v15;
extern unsigned short v17 (unsigned int, unsigned short, unsigned char);
extern unsigned short (*v18) (unsigned int, unsigned short, unsigned char);
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
unsigned short v21 (signed char, signed int);
unsigned short (*v22) (signed char, signed int) = v21;
extern unsigned short v23 (unsigned short, unsigned char);
extern unsigned short (*v24) (unsigned short, unsigned char);
signed int v25 (void);
signed int (*v26) (void) = v25;
extern signed char v27 (unsigned char, unsigned int, signed char);
extern signed char (*v28) (unsigned char, unsigned int, signed char);
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v71 = -1;
unsigned short v70 = 3;
signed char v69 = 1;

signed int v25 (void)
{
{
for (;;) {
unsigned short v74 = 5;
signed char v73 = 3;
signed int v72 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (signed char v75, signed int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 0;
unsigned short v78 = 0;
unsigned short v77 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed short v80, signed short v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = 0;
signed int v83 = 1;
unsigned char v82 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned char v85, unsigned int v86, signed char v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned int v90 = 4U;
unsigned short v89 = 7;
unsigned int v88 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
