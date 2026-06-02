#include <stdlib.h>
unsigned char v3 (unsigned int);
unsigned char (*v4) (unsigned int) = v3;
extern void v5 (unsigned char, unsigned int);
extern void (*v6) (unsigned char, unsigned int);
void v7 (signed short, unsigned char, signed int);
void (*v8) (signed short, unsigned char, signed int) = v7;
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
extern unsigned char v11 (signed short, unsigned int, unsigned char, signed short);
extern unsigned char (*v12) (signed short, unsigned int, unsigned char, signed short);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
signed short v19 (void);
signed short (*v20) (void) = v19;
signed char v21 (signed short, unsigned short);
signed char (*v22) (signed short, unsigned short) = v21;
extern unsigned int v23 (signed char, signed short);
extern unsigned int (*v24) (signed char, signed short);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v27 (signed char, signed short, unsigned short);
extern unsigned short (*v28) (signed char, signed short, unsigned short);
extern signed char v29 (signed char, unsigned char, unsigned int, signed int);
extern signed char (*v30) (signed char, unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v79 = 1;
unsigned char v78 = 6;
signed char v77 = -3;

signed char v21 (signed short v80, unsigned short v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = -3;
unsigned int v83 = 5U;
unsigned short v82 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (void)
{
{
for (;;) {
signed short v87 = 1;
unsigned int v86 = 1U;
signed short v85 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed short v88, unsigned char v89, signed int v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = -1;
unsigned char v92 = 5;
signed char v91 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = 0;
signed char v96 = 1;
signed short v95 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
