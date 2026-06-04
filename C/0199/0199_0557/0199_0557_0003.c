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
extern void v15 (signed int, unsigned int);
extern void (*v16) (signed int, unsigned int);
void v17 (signed int);
void (*v18) (signed int) = v17;
extern void v19 (signed short, signed int, signed char);
extern void (*v20) (signed short, signed int, signed char);
extern void v21 (unsigned char, unsigned short, unsigned char);
extern void (*v22) (unsigned char, unsigned short, unsigned char);
extern signed short v23 (unsigned char, signed char, signed char, signed short);
extern signed short (*v24) (unsigned char, signed char, signed char, signed short);
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
extern void v27 (unsigned int, signed short, unsigned char, signed char);
extern void (*v28) (unsigned int, signed short, unsigned char, signed char);
extern unsigned short v29 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned short (*v30) (unsigned short, unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v111 = -4;
unsigned short v110 = 6;
unsigned char v109 = 6;

unsigned char v25 (void)
{
{
for (;;) {
unsigned int v114 = 6U;
signed short v113 = 1;
unsigned short v112 = 3;
trace++;
switch (trace)
{
case 1: 
return 6;
default: abort ();
}
}
}
}

void v17 (signed int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = 3;
unsigned int v117 = 4U;
signed char v116 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
