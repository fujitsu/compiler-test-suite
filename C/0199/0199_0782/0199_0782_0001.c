#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned int, unsigned char);
extern signed int (*v2) (unsigned char, unsigned int, unsigned char);
extern unsigned int v3 (unsigned char, signed int, unsigned int);
extern unsigned int (*v4) (unsigned char, signed int, unsigned int);
extern unsigned short v5 (unsigned char, unsigned char);
extern unsigned short (*v6) (unsigned char, unsigned char);
extern signed int v7 (signed int);
extern signed int (*v8) (signed int);
extern unsigned char v9 (unsigned char);
extern unsigned char (*v10) (unsigned char);
extern signed int v11 (signed char, signed char, signed int);
extern signed int (*v12) (signed char, signed char, signed int);
extern void v13 (signed char, unsigned short, signed char);
extern void (*v14) (signed char, unsigned short, signed char);
extern signed char v15 (unsigned short, signed char);
extern signed char (*v16) (unsigned short, signed char);
extern void v17 (unsigned int, signed short, signed int);
extern void (*v18) (unsigned int, signed short, signed int);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
void v21 (signed short, signed char, unsigned int, signed short);
void (*v22) (signed short, signed char, unsigned int, signed short) = v21;
extern signed int v23 (signed short, signed char, unsigned char);
extern signed int (*v24) (signed short, signed char, unsigned char);
extern signed short v27 (unsigned int, unsigned char);
extern signed short (*v28) (unsigned int, unsigned char);
signed int v29 (unsigned short, unsigned int);
signed int (*v30) (unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v65 = -3;
signed short v64 = -3;
unsigned short v63 = 4;

signed int v29 (unsigned short v66, unsigned int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 2;
unsigned short v69 = 3;
unsigned char v68 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed short v71, signed char v72, unsigned int v73, signed short v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = 2;
signed char v76 = 2;
unsigned short v75 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
