#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
void v3 (signed short, signed char, signed short, signed int);
void (*v4) (signed short, signed char, signed short, signed int) = v3;
extern unsigned char v5 (unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short);
extern signed char v7 (signed short, signed short);
extern signed char (*v8) (signed short, signed short);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern signed int v11 (signed short, signed short);
extern signed int (*v12) (signed short, signed short);
extern void v13 (unsigned int, signed int);
extern void (*v14) (unsigned int, signed int);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (signed int, unsigned int, unsigned int, signed int);
extern unsigned char (*v20) (signed int, unsigned int, unsigned int, signed int);
unsigned short v21 (unsigned short, signed int);
unsigned short (*v22) (unsigned short, signed int) = v21;
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern signed int v27 (unsigned char, unsigned char);
extern signed int (*v28) (unsigned char, unsigned char);
extern void v29 (unsigned char, unsigned short);
extern void (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v65 = 1;
signed short v64 = -3;
unsigned char v63 = 3;

unsigned short v21 (unsigned short v66, signed int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = 0;
signed char v69 = -3;
unsigned int v68 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v71, signed char v72, signed short v73, signed int v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned int v77 = 6U;
unsigned int v76 = 1U;
signed int v75 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
