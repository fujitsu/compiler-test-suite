#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern unsigned char v3 (unsigned short, signed int, unsigned short);
extern unsigned char (*v4) (unsigned short, signed int, unsigned short);
signed char v5 (signed short, signed short, signed char);
signed char (*v6) (signed short, signed short, signed char) = v5;
extern unsigned short v7 (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned short (*v8) (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned short v9 (unsigned int, signed short, signed short, signed int);
extern unsigned short (*v10) (unsigned int, signed short, signed short, signed int);
extern void v13 (signed short);
extern void (*v14) (signed short);
extern unsigned short v15 (signed char, unsigned short);
extern unsigned short (*v16) (signed char, unsigned short);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
signed char v19 (signed int);
signed char (*v20) (signed int) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (signed char, signed int, unsigned short, unsigned char);
extern unsigned char (*v24) (signed char, signed int, unsigned short, unsigned char);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
signed int v27 (unsigned int);
signed int (*v28) (unsigned int) = v27;
extern unsigned char v29 (signed int, unsigned short);
extern unsigned char (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v72 = 4U;
unsigned char v71 = 5;
unsigned int v70 = 7U;

signed int v27 (unsigned int v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = 2;
unsigned char v75 = 5;
signed short v74 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed int v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 4;
signed int v79 = -1;
signed char v78 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed short v81, signed short v82, signed char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -3;
signed int v85 = -3;
unsigned char v84 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
