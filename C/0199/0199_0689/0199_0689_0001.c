#include <stdlib.h>
extern unsigned short v3 (unsigned char, unsigned char, unsigned char);
extern unsigned short (*v4) (unsigned char, unsigned char, unsigned char);
extern unsigned int v5 (unsigned short, signed char);
extern unsigned int (*v6) (unsigned short, signed char);
signed int v7 (signed char, signed short);
signed int (*v8) (signed char, signed short) = v7;
extern unsigned int v9 (unsigned char, unsigned char);
extern unsigned int (*v10) (unsigned char, unsigned char);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
unsigned char v13 (signed int, unsigned int);
unsigned char (*v14) (signed int, unsigned int) = v13;
extern signed int v15 (signed short, signed int);
extern signed int (*v16) (signed short, signed int);
extern signed short v19 (signed int);
extern signed short (*v20) (signed int);
extern unsigned char v21 (signed char, unsigned short, signed int, signed char);
extern unsigned char (*v22) (signed char, unsigned short, signed int, signed char);
extern signed char v23 (unsigned int);
extern signed char (*v24) (unsigned int);
extern void v25 (unsigned char, signed int);
extern void (*v26) (unsigned char, signed int);
extern unsigned short v27 (unsigned char, signed int, unsigned char, signed short);
extern unsigned short (*v28) (unsigned char, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v55 = -4;
unsigned char v54 = 0;
signed short v53 = 3;

unsigned char v13 (signed int v56, unsigned int v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned int v60 = 1U;
unsigned int v59 = 1U;
unsigned char v58 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed char v61, signed short v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 5;
unsigned short v64 = 3;
signed short v63 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
