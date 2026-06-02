#include <stdlib.h>
extern unsigned char v1 (signed char, signed short, signed short, signed int);
extern unsigned char (*v2) (signed char, signed short, signed short, signed int);
extern signed int v3 (signed char, signed int, unsigned short, unsigned short);
extern signed int (*v4) (signed char, signed int, unsigned short, unsigned short);
extern signed char v5 (signed short, signed short, unsigned int);
extern signed char (*v6) (signed short, signed short, unsigned int);
signed char v7 (unsigned int, unsigned int, unsigned int);
signed char (*v8) (unsigned int, unsigned int, unsigned int) = v7;
void v9 (signed int);
void (*v10) (signed int) = v9;
extern signed short v11 (signed short, unsigned int, unsigned int, signed int);
extern signed short (*v12) (signed short, unsigned int, unsigned int, signed int);
extern signed char v13 (unsigned short, signed int);
extern signed char (*v14) (unsigned short, signed int);
signed int v15 (signed int, unsigned short, unsigned short);
signed int (*v16) (signed int, unsigned short, unsigned short) = v15;
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern unsigned short v25 (signed char, signed char, unsigned short);
extern unsigned short (*v26) (signed char, signed char, unsigned short);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
unsigned char v29 (signed char);
unsigned char (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v68 = 1;
signed char v67 = -1;
signed short v66 = 0;

unsigned char v29 (signed char v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = -3;
unsigned short v71 = 6;
signed short v70 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed int v73, unsigned short v74, unsigned short v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned char v78 = 3;
unsigned int v77 = 4U;
signed char v76 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = 0;
unsigned int v81 = 4U;
signed int v80 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned int v83, unsigned int v84, unsigned int v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = -4;
unsigned int v87 = 4U;
unsigned short v86 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
