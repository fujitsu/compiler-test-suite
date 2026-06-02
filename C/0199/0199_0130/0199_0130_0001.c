#include <stdlib.h>
extern unsigned int v1 (signed int, signed char);
extern unsigned int (*v2) (signed int, signed char);
extern signed short v3 (signed short, unsigned char);
extern signed short (*v4) (signed short, unsigned char);
extern unsigned char v5 (unsigned short, unsigned char);
extern unsigned char (*v6) (unsigned short, unsigned char);
extern void v7 (unsigned short, unsigned short, signed char, unsigned char);
extern void (*v8) (unsigned short, unsigned short, signed char, unsigned char);
extern void v9 (signed char, signed short, unsigned char);
extern void (*v10) (signed char, signed short, unsigned char);
extern void v11 (signed short, signed char);
extern void (*v12) (signed short, signed char);
unsigned char v13 (signed char, signed int);
unsigned char (*v14) (signed char, signed int) = v13;
extern signed int v15 (unsigned int, signed int, signed char, signed int);
extern signed int (*v16) (unsigned int, signed int, signed char, signed int);
extern unsigned short v17 (unsigned int, signed short, signed char, signed char);
extern unsigned short (*v18) (unsigned int, signed short, signed char, signed char);
extern signed short v19 (signed int, unsigned short, unsigned char, signed int);
extern signed short (*v20) (signed int, unsigned short, unsigned char, signed int);
signed int v21 (unsigned char);
signed int (*v22) (unsigned char) = v21;
extern unsigned char v23 (signed short, unsigned int, signed short, signed char);
extern unsigned char (*v24) (signed short, unsigned int, signed short, signed char);
extern unsigned int v25 (unsigned int, unsigned char, signed short, unsigned short);
extern unsigned int (*v26) (unsigned int, unsigned char, signed short, unsigned short);
extern unsigned int v29 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned int (*v30) (unsigned int, unsigned char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v60 = 1;
signed int v59 = -1;
signed short v58 = -2;

signed int v21 (unsigned char v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
signed char v64 = -2;
unsigned char v63 = 4;
signed char v62 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed char v65, signed int v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed char v69 = -1;
signed int v68 = 3;
signed int v67 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
