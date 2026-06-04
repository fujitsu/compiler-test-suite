#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned short, signed char, signed int);
extern unsigned char (*v2) (signed char, unsigned short, signed char, signed int);
extern unsigned short v5 (signed short, signed char, signed char);
extern unsigned short (*v6) (signed short, signed char, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (signed short, unsigned char);
extern void (*v10) (signed short, unsigned char);
extern unsigned char v11 (unsigned short, unsigned int);
extern unsigned char (*v12) (unsigned short, unsigned int);
extern signed char v13 (signed short, unsigned int);
extern signed char (*v14) (signed short, unsigned int);
extern unsigned int v15 (signed char, unsigned char, signed short);
extern unsigned int (*v16) (signed char, unsigned char, signed short);
void v17 (unsigned int);
void (*v18) (unsigned int) = v17;
signed int v19 (unsigned char, signed short);
signed int (*v20) (unsigned char, signed short) = v19;
extern void v21 (unsigned char, signed short, unsigned char, unsigned short);
extern void (*v22) (unsigned char, signed short, unsigned char, unsigned short);
unsigned int v23 (unsigned int, signed int, signed int);
unsigned int (*v24) (unsigned int, signed int, signed int) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned short v27 (unsigned int, signed int, signed char);
extern unsigned short (*v28) (unsigned int, signed int, signed char);
extern void v29 (signed int, unsigned short);
extern void (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v69 = 4;
signed int v68 = -4;
unsigned short v67 = 7;

unsigned int v23 (unsigned int v70, signed int v71, signed int v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 5;
unsigned short v74 = 6;
unsigned char v73 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (unsigned char v76, signed short v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = 0;
signed short v79 = -3;
unsigned int v78 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 1;
signed short v83 = 2;
signed int v82 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
