#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (unsigned int, signed short, signed short);
extern unsigned int (*v4) (unsigned int, signed short, signed short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
extern unsigned short v9 (signed short, signed int, unsigned char);
extern unsigned short (*v10) (signed short, signed int, unsigned char);
extern unsigned short v11 (signed int, unsigned char);
extern unsigned short (*v12) (signed int, unsigned char);
extern signed int v13 (signed char);
extern signed int (*v14) (signed char);
extern unsigned int v15 (signed short, unsigned int);
extern unsigned int (*v16) (signed short, unsigned int);
void v17 (signed char, unsigned int, unsigned short);
void (*v18) (signed char, unsigned int, unsigned short) = v17;
unsigned int v19 (unsigned int, unsigned short, signed short, signed char);
unsigned int (*v20) (unsigned int, unsigned short, signed short, signed char) = v19;
signed int v21 (unsigned char, signed short);
signed int (*v22) (unsigned char, signed short) = v21;
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
unsigned int v25 (unsigned short);
unsigned int (*v26) (unsigned short) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed short, signed int, signed int, signed char);
extern unsigned short (*v30) (signed short, signed int, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v69 = 6U;
signed short v68 = 2;
unsigned short v67 = 0;

unsigned int v25 (unsigned short v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 5;
unsigned short v72 = 5;
signed short v71 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned char v74, signed short v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 5U;
unsigned char v77 = 2;
signed char v76 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v79, unsigned short v80, signed short v81, signed char v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 4;
unsigned short v84 = 0;
unsigned char v83 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (signed char v86, unsigned int v87, unsigned short v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = 3;
unsigned int v90 = 7U;
signed short v89 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
