#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern void v3 (void);
extern void (*v4) (void);
unsigned int v5 (unsigned short, unsigned short, unsigned char);
unsigned int (*v6) (unsigned short, unsigned short, unsigned char) = v5;
extern void v9 (unsigned int, unsigned int, unsigned short);
extern void (*v10) (unsigned int, unsigned int, unsigned short);
signed short v11 (unsigned int, unsigned int, unsigned short);
signed short (*v12) (unsigned int, unsigned int, unsigned short) = v11;
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern signed int v17 (unsigned short, unsigned char);
extern signed int (*v18) (unsigned short, unsigned char);
extern unsigned int v19 (unsigned short, unsigned char, unsigned int, signed short);
extern unsigned int (*v20) (unsigned short, unsigned char, unsigned int, signed short);
extern signed short v21 (unsigned int, unsigned int, unsigned short, unsigned int);
extern signed short (*v22) (unsigned int, unsigned int, unsigned short, unsigned int);
extern signed char v23 (signed int, signed char, signed char, signed char);
extern signed char (*v24) (signed int, signed char, signed char, signed char);
extern signed short v25 (signed char, unsigned int, signed int);
extern signed short (*v26) (signed char, unsigned int, signed int);
extern unsigned short v27 (unsigned char, signed short, unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, signed short, unsigned char, unsigned short);
extern unsigned short v29 (unsigned char, signed int, unsigned char);
extern unsigned short (*v30) (unsigned char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v79 = 6;
unsigned char v78 = 7;
signed short v77 = -1;

signed short v11 (unsigned int v80, unsigned int v81, unsigned short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 2;
unsigned short v84 = 2;
unsigned char v83 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v86, unsigned short v87, unsigned char v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = 2;
unsigned short v90 = 2;
signed char v89 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
