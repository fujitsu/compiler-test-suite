#include <stdlib.h>
extern void v1 (signed int, signed char);
extern void (*v2) (signed int, signed char);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern void v5 (signed int);
extern void (*v6) (signed int);
extern void v7 (signed int, signed int, unsigned short, signed char);
extern void (*v8) (signed int, signed int, unsigned short, signed char);
extern unsigned char v9 (unsigned short, signed short, signed int, signed char);
extern unsigned char (*v10) (unsigned short, signed short, signed int, signed char);
extern signed char v11 (signed int, signed int, signed int);
extern signed char (*v12) (signed int, signed int, signed int);
extern signed int v13 (signed char, unsigned int, signed int, unsigned char);
extern signed int (*v14) (signed char, unsigned int, signed int, unsigned char);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
unsigned short v17 (signed short, signed int);
unsigned short (*v18) (signed short, signed int) = v17;
extern void v19 (unsigned int, unsigned short, signed char);
extern void (*v20) (unsigned int, unsigned short, signed char);
extern unsigned char v21 (unsigned short, signed char);
extern unsigned char (*v22) (unsigned short, signed char);
extern unsigned int v23 (unsigned int, unsigned short, unsigned short, signed short);
extern unsigned int (*v24) (unsigned int, unsigned short, unsigned short, signed short);
signed int v25 (void);
signed int (*v26) (void) = v25;
extern void v27 (unsigned short, signed char, signed char, unsigned int);
extern void (*v28) (unsigned short, signed char, signed char, unsigned int);
void v29 (unsigned short, signed char, unsigned int, signed int);
void (*v30) (unsigned short, signed char, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v77 = 5U;
unsigned short v76 = 2;
signed short v75 = 2;

void v29 (unsigned short v78, signed char v79, unsigned int v80, signed int v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = 1;
unsigned char v83 = 2;
signed int v82 = 0;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
signed char v87 = -2;
unsigned int v86 = 7U;
unsigned char v85 = 1;
trace++;
switch (trace)
{
case 3: 
return 2;
default: abort ();
}
}
}
}

unsigned short v17 (signed short v88, signed int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 4;
signed short v91 = 3;
signed short v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
