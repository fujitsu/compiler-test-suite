#include <stdlib.h>
extern signed int v3 (unsigned int, signed int);
extern signed int (*v4) (unsigned int, signed int);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned short v7 (unsigned char);
extern unsigned short (*v8) (unsigned char);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern signed int v11 (void);
extern signed int (*v12) (void);
signed char v13 (signed int, unsigned int);
signed char (*v14) (signed int, unsigned int) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed short v19 (signed char, unsigned char);
extern signed short (*v20) (signed char, unsigned char);
extern unsigned char v21 (unsigned char, signed int, signed int);
extern unsigned char (*v22) (unsigned char, signed int, signed int);
void v23 (void);
void (*v24) (void) = v23;
extern void v25 (signed char, signed char, unsigned short);
extern void (*v26) (signed char, signed char, unsigned short);
extern unsigned char v27 (signed char, unsigned int);
extern unsigned char (*v28) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v83 = 5;
unsigned short v82 = 0;
signed short v81 = 1;

void v23 (void)
{
{
for (;;) {
signed char v86 = 2;
unsigned int v85 = 2U;
signed int v84 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed int v87, unsigned int v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = -3;
signed char v90 = 1;
signed int v89 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned int v94 = 1U;
signed char v93 = -1;
signed int v92 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
