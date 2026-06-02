#include <stdlib.h>
extern signed short v1 (unsigned int, unsigned int);
extern signed short (*v2) (unsigned int, unsigned int);
extern signed char v3 (signed int, unsigned char, unsigned short);
extern signed char (*v4) (signed int, unsigned char, unsigned short);
extern signed char v5 (unsigned short, signed short);
extern signed char (*v6) (unsigned short, signed short);
void v7 (void);
void (*v8) (void) = v7;
signed int v9 (unsigned short, signed int);
signed int (*v10) (unsigned short, signed int) = v9;
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern unsigned char v13 (unsigned short, signed int, unsigned char, unsigned short);
extern unsigned char (*v14) (unsigned short, signed int, unsigned char, unsigned short);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern void v19 (unsigned char, unsigned short, unsigned char);
extern void (*v20) (unsigned char, unsigned short, unsigned char);
extern unsigned int v21 (unsigned short);
extern unsigned int (*v22) (unsigned short);
extern void v23 (signed char, signed short, unsigned int, unsigned short);
extern void (*v24) (signed char, signed short, unsigned int, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed int v27 (signed int, signed short);
extern signed int (*v28) (signed int, signed short);
extern void v29 (signed int, unsigned short);
extern void (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v65 = -3;
unsigned char v64 = 3;
signed int v63 = 1;

signed int v9 (unsigned short v66, signed int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = -4;
signed short v69 = 3;
unsigned int v68 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
unsigned int v73 = 2U;
signed char v72 = 2;
unsigned char v71 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
