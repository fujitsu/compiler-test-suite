#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern unsigned int v5 (signed short, unsigned int);
extern unsigned int (*v6) (signed short, unsigned int);
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
extern unsigned char v9 (signed int, signed char);
extern unsigned char (*v10) (signed int, signed char);
extern signed int v11 (unsigned char, unsigned char, unsigned char);
extern signed int (*v12) (unsigned char, unsigned char, unsigned char);
signed int v13 (unsigned int);
signed int (*v14) (unsigned int) = v13;
unsigned int v15 (signed short, signed char);
unsigned int (*v16) (signed short, signed char) = v15;
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned int v19 (signed char, unsigned int, signed short);
extern unsigned int (*v20) (signed char, unsigned int, signed short);
extern void v21 (signed int);
extern void (*v22) (signed int);
unsigned char v23 (signed char, unsigned short, signed int, signed short);
unsigned char (*v24) (signed char, unsigned short, signed int, signed short) = v23;
extern unsigned short v25 (signed int, unsigned short, signed short, unsigned int);
extern unsigned short (*v26) (signed int, unsigned short, signed short, unsigned int);
extern unsigned char v27 (signed char, signed int, signed int);
extern unsigned char (*v28) (signed char, signed int, signed int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v79 = 6;
unsigned short v78 = 0;
signed int v77 = 2;

unsigned char v23 (signed char v80, unsigned short v81, signed int v82, signed short v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 4;
unsigned char v85 = 4;
unsigned short v84 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed short v87, signed char v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = -4;
unsigned char v90 = 0;
signed int v89 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned int v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = 0;
signed char v94 = -2;
unsigned short v93 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
