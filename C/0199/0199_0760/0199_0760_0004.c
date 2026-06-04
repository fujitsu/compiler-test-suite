#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed short v3 (signed int, signed short);
extern signed short (*v4) (signed int, signed short);
extern unsigned short v5 (signed int, unsigned int, unsigned short, unsigned int);
extern unsigned short (*v6) (signed int, unsigned int, unsigned short, unsigned int);
extern signed char v7 (signed short, signed char, unsigned int, signed char);
extern signed char (*v8) (signed short, signed char, unsigned int, signed char);
extern unsigned char v9 (unsigned short, signed char, unsigned char, unsigned char);
extern unsigned char (*v10) (unsigned short, signed char, unsigned char, unsigned char);
extern unsigned char v11 (signed int, signed int);
extern unsigned char (*v12) (signed int, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned short v15 (signed char, signed int, signed int);
extern unsigned short (*v16) (signed char, signed int, signed int);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern unsigned char v19 (signed short);
extern unsigned char (*v20) (signed short);
extern unsigned char v21 (signed int, unsigned int);
extern unsigned char (*v22) (signed int, unsigned int);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
extern unsigned short v27 (unsigned char, signed int, unsigned int);
extern unsigned short (*v28) (unsigned char, signed int, unsigned int);
void v29 (signed char, signed int);
void (*v30) (signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v130 = 1;
signed short v129 = 0;
unsigned int v128 = 2U;

void v29 (signed char v131, signed int v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = -1;
unsigned short v134 = 2;
unsigned int v133 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (void)
{
{
for (;;) {
unsigned int v138 = 2U;
signed int v137 = -4;
signed int v136 = -2;
trace++;
switch (trace)
{
case 7: 
return 0;
default: abort ();
}
}
}
}
