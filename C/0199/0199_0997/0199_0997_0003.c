#include <stdlib.h>
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
unsigned int v7 (signed char);
unsigned int (*v8) (signed char) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (unsigned short, signed short, signed int);
extern signed short (*v12) (unsigned short, signed short, signed int);
extern unsigned int v13 (signed short, signed int, signed short);
extern unsigned int (*v14) (signed short, signed int, signed short);
extern unsigned short v15 (unsigned int, signed short, unsigned short);
extern unsigned short (*v16) (unsigned int, signed short, unsigned short);
extern signed char v17 (signed char, signed short, signed short);
extern signed char (*v18) (signed char, signed short, signed short);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern void v27 (unsigned short, signed char);
extern void (*v28) (unsigned short, signed char);
extern signed int v29 (signed char, signed int, unsigned char);
extern signed int (*v30) (signed char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v114 = 1;
unsigned short v113 = 5;
unsigned short v112 = 1;

unsigned int v25 (void)
{
{
for (;;) {
signed int v117 = -4;
signed char v116 = 2;
signed char v115 = 0;
trace++;
switch (trace)
{
case 6: 
return 2U;
default: abort ();
}
}
}
}

unsigned int v7 (signed char v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = 3;
unsigned char v120 = 1;
signed short v119 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
