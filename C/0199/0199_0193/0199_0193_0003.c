#include <stdlib.h>
extern unsigned int v1 (signed char);
extern unsigned int (*v2) (signed char);
extern unsigned short v3 (unsigned char, unsigned char);
extern unsigned short (*v4) (unsigned char, unsigned char);
extern signed short v5 (unsigned short, unsigned int, unsigned short);
extern signed short (*v6) (unsigned short, unsigned int, unsigned short);
extern unsigned int v7 (signed char, signed int);
extern unsigned int (*v8) (signed char, signed int);
unsigned int v9 (void);
unsigned int (*v10) (void) = v9;
extern signed int v11 (signed char, signed char);
extern signed int (*v12) (signed char, signed char);
unsigned char v15 (unsigned char);
unsigned char (*v16) (unsigned char) = v15;
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (unsigned char, signed short, signed char, signed char);
extern signed short (*v22) (unsigned char, signed short, signed char, signed char);
extern void v23 (unsigned short, unsigned int);
extern void (*v24) (unsigned short, unsigned int);
extern signed short v25 (unsigned char, unsigned int, signed char, signed char);
extern signed short (*v26) (unsigned char, unsigned int, signed char, signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v84 = 6;
unsigned int v83 = 4U;
signed short v82 = 3;

unsigned char v15 (unsigned char v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = 2;
unsigned short v87 = 4;
unsigned short v86 = 1;
trace++;
switch (trace)
{
case 7: 
return 0;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned int v9 (void)
{
{
for (;;) {
signed char v91 = 1;
unsigned short v90 = 7;
signed char v89 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
