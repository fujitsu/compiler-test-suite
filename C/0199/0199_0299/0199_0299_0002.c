#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int);
extern unsigned short (*v2) (unsigned int, signed int);
extern unsigned char v3 (signed char, unsigned int);
extern unsigned char (*v4) (signed char, unsigned int);
extern void v5 (signed short, signed char);
extern void (*v6) (signed short, signed char);
extern signed short v9 (signed char, unsigned char);
extern signed short (*v10) (signed char, unsigned char);
signed short v11 (signed char, unsigned char);
signed short (*v12) (signed char, unsigned char) = v11;
extern signed short v15 (unsigned int, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern unsigned char v19 (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned char (*v20) (unsigned int, signed char, unsigned short, unsigned short);
extern void v21 (signed int, unsigned int, signed int, unsigned int);
extern void (*v22) (signed int, unsigned int, signed int, unsigned int);
extern unsigned short v23 (signed int, unsigned short, unsigned short);
extern unsigned short (*v24) (signed int, unsigned short, unsigned short);
unsigned char v25 (unsigned char, signed char, unsigned short, signed char);
unsigned char (*v26) (unsigned char, signed char, unsigned short, signed char) = v25;
extern signed short v27 (unsigned short, unsigned char);
extern signed short (*v28) (unsigned short, unsigned char);
extern unsigned char v29 (signed char, signed int, unsigned short);
extern unsigned char (*v30) (signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v79 = 1;
signed int v78 = 0;
signed short v77 = 2;

unsigned char v25 (unsigned char v80, signed char v81, unsigned short v82, signed char v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = 2;
unsigned short v85 = 0;
unsigned short v84 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v87, unsigned char v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 6;
signed int v90 = -1;
unsigned char v89 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
