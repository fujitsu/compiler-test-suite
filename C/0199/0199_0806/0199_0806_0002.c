#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned char, signed short);
extern unsigned char (*v2) (signed int, unsigned char, signed short);
extern unsigned short v3 (unsigned int, signed char);
extern unsigned short (*v4) (unsigned int, signed char);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
extern unsigned int v15 (signed char, signed short);
extern unsigned int (*v16) (signed char, signed short);
extern unsigned char v17 (unsigned char, signed short, signed short, signed char);
extern unsigned char (*v18) (unsigned char, signed short, signed short, signed char);
unsigned short v19 (signed char, signed int, unsigned short);
unsigned short (*v20) (signed char, signed int, unsigned short) = v19;
extern signed short v21 (unsigned int);
extern signed short (*v22) (unsigned int);
extern signed char v23 (signed char, unsigned int, unsigned short);
extern signed char (*v24) (signed char, unsigned int, unsigned short);
extern signed char v25 (signed int, signed char);
extern signed char (*v26) (signed int, signed char);
void v27 (signed int);
void (*v28) (signed int) = v27;
extern void v29 (unsigned char, unsigned int, signed int, signed char);
extern void (*v30) (unsigned char, unsigned int, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v87 = 1;
unsigned int v86 = 7U;
unsigned short v85 = 5;

void v27 (signed int v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
signed char v91 = -3;
signed char v90 = 0;
unsigned short v89 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed char v92, signed int v93, unsigned short v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = 2;
unsigned char v96 = 6;
unsigned int v95 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
