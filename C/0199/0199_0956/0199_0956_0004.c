#include <stdlib.h>
extern void v1 (signed int, unsigned short);
extern void (*v2) (signed int, unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v9 (signed char, signed int, unsigned short);
extern unsigned char (*v10) (signed char, signed int, unsigned short);
extern unsigned int v11 (signed short, unsigned char, unsigned int);
extern unsigned int (*v12) (signed short, unsigned char, unsigned int);
extern signed int v13 (unsigned short);
extern signed int (*v14) (unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (signed int, signed short, signed short);
extern signed short (*v18) (signed int, signed short, signed short);
unsigned short v19 (unsigned short);
unsigned short (*v20) (unsigned short) = v19;
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
extern signed int v23 (void);
extern signed int (*v24) (void);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v113 = 0;
signed char v112 = -1;
signed int v111 = 0;

unsigned int v25 (void)
{
{
for (;;) {
unsigned short v116 = 4;
unsigned short v115 = 2;
unsigned int v114 = 5U;
trace++;
switch (trace)
{
case 2: 
return 5U;
default: abort ();
}
}
}
}

unsigned short v19 (unsigned short v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 6;
signed char v119 = -2;
signed int v118 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
