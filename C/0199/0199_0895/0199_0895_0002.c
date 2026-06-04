#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (signed char);
extern unsigned char (*v6) (signed char);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (signed char, signed short, unsigned char, unsigned char);
extern unsigned int (*v10) (signed char, signed short, unsigned char, unsigned char);
extern signed char v11 (unsigned char, signed char, unsigned short);
extern signed char (*v12) (unsigned char, signed char, unsigned short);
extern unsigned char v13 (signed short, signed short, signed short);
extern unsigned char (*v14) (signed short, signed short, signed short);
extern unsigned char v15 (signed short);
extern unsigned char (*v16) (signed short);
unsigned int v17 (unsigned int, signed short);
unsigned int (*v18) (unsigned int, signed short) = v17;
void v21 (void);
void (*v22) (void) = v21;
extern signed char v23 (signed short, unsigned int, signed int);
extern signed char (*v24) (signed short, unsigned int, signed int);
extern unsigned char v25 (signed int, signed short);
extern unsigned char (*v26) (signed int, signed short);
extern unsigned char v29 (unsigned int, unsigned int, signed int, signed int);
extern unsigned char (*v30) (unsigned int, unsigned int, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v71 = 6U;
unsigned int v70 = 5U;
signed char v69 = -4;

void v21 (void)
{
{
for (;;) {
signed char v74 = -2;
signed short v73 = -1;
signed int v72 = 1;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned int v75, signed short v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -3;
unsigned int v78 = 2U;
unsigned int v77 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
