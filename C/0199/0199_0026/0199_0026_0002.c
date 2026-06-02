#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern signed char v5 (unsigned short);
extern signed char (*v6) (unsigned short);
extern unsigned int v7 (signed int, unsigned short, unsigned short);
extern unsigned int (*v8) (signed int, unsigned short, unsigned short);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed short v13 (signed char, unsigned short);
extern signed short (*v14) (signed char, unsigned short);
extern void v15 (unsigned int, unsigned int);
extern void (*v16) (unsigned int, unsigned int);
extern unsigned int v17 (signed int, signed char, unsigned int, unsigned short);
extern unsigned int (*v18) (signed int, signed char, unsigned int, unsigned short);
void v19 (signed int, unsigned int, unsigned int);
void (*v20) (signed int, unsigned int, unsigned int) = v19;
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (signed int, signed short, signed int, signed int);
extern unsigned int (*v24) (signed int, signed short, signed int, signed int);
signed short v25 (void);
signed short (*v26) (void) = v25;
extern signed char v29 (signed int);
extern signed char (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v80 = 2;
signed char v79 = -1;
unsigned int v78 = 1U;

signed short v25 (void)
{
{
for (;;) {
signed char v83 = 0;
unsigned char v82 = 5;
signed short v81 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed int v84, unsigned int v85, unsigned int v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 0U;
unsigned short v88 = 0;
unsigned short v87 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
