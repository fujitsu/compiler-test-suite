#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned char v7 (unsigned int, signed char, signed short);
extern unsigned char (*v8) (unsigned int, signed char, signed short);
signed int v9 (signed short);
signed int (*v10) (signed short) = v9;
extern unsigned char v11 (signed char, signed int, signed int);
extern unsigned char (*v12) (signed char, signed int, signed int);
signed short v15 (signed int, signed int, unsigned char);
signed short (*v16) (signed int, signed int, unsigned char) = v15;
extern signed char v17 (signed int, signed char, signed char, signed int);
extern signed char (*v18) (signed int, signed char, signed char, signed int);
extern unsigned short v21 (signed char, signed char);
extern unsigned short (*v22) (signed char, signed char);
void v23 (void);
void (*v24) (void) = v23;
extern signed int v25 (signed int, unsigned short, signed int);
extern signed int (*v26) (signed int, unsigned short, signed int);
extern signed short v27 (unsigned char, signed char);
extern signed short (*v28) (unsigned char, signed char);
extern signed int v29 (unsigned char, unsigned char);
extern signed int (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v76 = -1;
signed char v75 = 2;
signed char v74 = -1;

void v23 (void)
{
{
for (;;) {
unsigned int v79 = 5U;
signed int v78 = 2;
signed int v77 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed int v80, signed int v81, unsigned char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 4U;
signed char v84 = 3;
unsigned int v83 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = -2;
unsigned short v88 = 0;
signed short v87 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
