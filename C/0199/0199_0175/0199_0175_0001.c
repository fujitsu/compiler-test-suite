#include <stdlib.h>
signed short v3 (void);
signed short (*v4) (void) = v3;
extern signed char v5 (signed int, signed short);
extern signed char (*v6) (signed int, signed short);
extern signed int v7 (signed char);
extern signed int (*v8) (signed char);
extern void v9 (void);
extern void (*v10) (void);
signed short v11 (unsigned int, signed int);
signed short (*v12) (unsigned int, signed int) = v11;
extern signed short v13 (signed int, signed short, signed int);
extern signed short (*v14) (signed int, signed short, signed int);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
extern signed short v19 (unsigned short, signed short);
extern signed short (*v20) (unsigned short, signed short);
extern unsigned char v23 (unsigned char);
extern unsigned char (*v24) (unsigned char);
extern void v25 (signed int);
extern void (*v26) (signed int);
extern signed short v27 (signed char, signed char, unsigned int);
extern signed short (*v28) (signed char, signed char, unsigned int);
signed char v29 (signed short);
signed char (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v78 = 5U;
signed int v77 = -4;
unsigned int v76 = 2U;

signed char v29 (signed short v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 4;
signed int v81 = -1;
unsigned short v80 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned int v83, signed int v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 2;
unsigned char v86 = 6;
unsigned char v85 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
signed char v90 = -4;
signed short v89 = 2;
unsigned char v88 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
