#include <stdlib.h>
extern void v3 (unsigned int, unsigned short, signed short);
extern void (*v4) (unsigned int, unsigned short, signed short);
extern signed int v5 (signed int, unsigned short);
extern signed int (*v6) (signed int, unsigned short);
extern signed int v7 (unsigned int, signed int);
extern signed int (*v8) (unsigned int, signed int);
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
extern void v11 (signed char, unsigned char);
extern void (*v12) (signed char, unsigned char);
signed char v13 (signed char, signed short, signed char, signed short);
signed char (*v14) (signed char, signed short, signed char, signed short) = v13;
extern signed short v15 (signed int, signed int, signed int);
extern signed short (*v16) (signed int, signed int, signed int);
void v17 (void);
void (*v18) (void) = v17;
extern unsigned char v19 (unsigned int, signed short, signed int);
extern unsigned char (*v20) (unsigned int, signed short, signed int);
extern unsigned short v21 (unsigned int, unsigned int, signed char, signed int);
extern unsigned short (*v22) (unsigned int, unsigned int, signed char, signed int);
extern void v23 (signed short, unsigned short, unsigned short);
extern void (*v24) (signed short, unsigned short, unsigned short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (signed short, signed char, signed int);
extern unsigned char (*v28) (signed short, signed char, signed int);
extern signed int v29 (unsigned short, unsigned short);
extern signed int (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v87 = 5U;
unsigned short v86 = 4;
signed char v85 = -2;

void v17 (void)
{
{
for (;;) {
signed short v90 = 3;
unsigned short v89 = 1;
unsigned short v88 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed char v91, signed short v92, signed char v93, signed short v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 1;
unsigned short v96 = 0;
signed short v95 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
