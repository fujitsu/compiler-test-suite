#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned short, unsigned int);
extern unsigned int (*v2) (signed short, unsigned short, unsigned int);
extern unsigned char v3 (signed char, unsigned int);
extern unsigned char (*v4) (signed char, unsigned int);
extern void v5 (signed int, unsigned int, signed short, signed int);
extern void (*v6) (signed int, unsigned int, signed short, signed int);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v11 (signed short, signed short, unsigned char);
extern void (*v12) (signed short, signed short, unsigned char);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern unsigned int v15 (unsigned short, signed short, unsigned char, signed char);
extern unsigned int (*v16) (unsigned short, signed short, unsigned char, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned int v21 (unsigned int, signed int, unsigned int);
extern unsigned int (*v22) (unsigned int, signed int, unsigned int);
extern void v23 (signed short, unsigned int, signed int, unsigned int);
extern void (*v24) (signed short, unsigned int, signed int, unsigned int);
extern void v25 (signed int, unsigned char);
extern void (*v26) (signed int, unsigned char);
extern void v27 (unsigned short, signed int, unsigned char);
extern void (*v28) (unsigned short, signed int, unsigned char);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v131 = 1;
unsigned int v130 = 0U;
signed short v129 = 1;

unsigned short v29 (void)
{
{
for (;;) {
unsigned char v134 = 2;
signed short v133 = -2;
signed int v132 = -4;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
unsigned char v137 = 2;
unsigned short v136 = 1;
unsigned char v135 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
