#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
extern unsigned char v5 (signed char, unsigned char);
extern unsigned char (*v6) (signed char, unsigned char);
extern unsigned int v7 (unsigned int, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v8) (unsigned int, unsigned char, unsigned short, unsigned short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
void v15 (signed int, unsigned int);
void (*v16) (signed int, unsigned int) = v15;
extern void v17 (signed int);
extern void (*v18) (signed int);
extern void v19 (signed short, signed int, signed char);
extern void (*v20) (signed short, signed int, signed char);
extern void v21 (unsigned char, unsigned short, unsigned char);
extern void (*v22) (unsigned char, unsigned short, unsigned char);
extern signed short v23 (unsigned char, signed char, signed char, signed short);
extern signed short (*v24) (unsigned char, signed char, signed char, signed short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern void v27 (unsigned int, signed short, unsigned char, signed char);
extern void (*v28) (unsigned int, signed short, unsigned char, signed char);
unsigned short v29 (unsigned short, unsigned int, signed char, unsigned int);
unsigned short (*v30) (unsigned short, unsigned int, signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v80 = 4U;
signed char v79 = -4;
signed int v78 = 3;

unsigned short v29 (unsigned short v81, unsigned int v82, signed char v83, unsigned int v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 2U;
unsigned short v86 = 3;
signed char v85 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed int v88, unsigned int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed char v92 = -1;
signed char v91 = 1;
signed int v90 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
