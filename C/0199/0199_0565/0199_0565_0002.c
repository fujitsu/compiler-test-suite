#include <stdlib.h>
extern unsigned short v1 (signed char, signed char, unsigned char);
extern unsigned short (*v2) (signed char, signed char, unsigned char);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern unsigned char v5 (unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned char);
unsigned char v7 (unsigned char, signed int, signed int, signed int);
unsigned char (*v8) (unsigned char, signed int, signed int, signed int) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned char v11 (unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, signed char);
signed char v13 (signed short);
signed char (*v14) (signed short) = v13;
extern signed int v15 (signed short, signed char, unsigned int, signed char);
extern signed int (*v16) (signed short, signed char, unsigned int, signed char);
extern void v19 (signed int, signed int, unsigned char, signed char);
extern void (*v20) (signed int, signed int, unsigned char, signed char);
extern signed short v21 (signed short, unsigned int, unsigned int);
extern signed short (*v22) (signed short, unsigned int, unsigned int);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (unsigned short, unsigned int);
extern signed short (*v28) (unsigned short, unsigned int);
extern signed short v29 (unsigned short, unsigned int, signed int, unsigned char);
extern signed short (*v30) (unsigned short, unsigned int, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v65 = -1;
signed char v64 = 0;
unsigned char v63 = 4;

signed char v13 (signed short v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 0;
signed int v68 = 1;
unsigned short v67 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v70, signed int v71, signed int v72, signed int v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = 2;
unsigned char v75 = 4;
unsigned int v74 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
