#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed short, signed int);
extern unsigned int (*v2) (unsigned int, signed short, signed int);
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned int v7 (signed int, unsigned int);
extern unsigned int (*v8) (signed int, unsigned int);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (unsigned int, unsigned int, signed int, signed char);
extern unsigned int (*v14) (unsigned int, unsigned int, signed int, signed char);
extern void v15 (signed int, unsigned char);
extern void (*v16) (signed int, unsigned char);
extern signed short v17 (signed short, unsigned int, signed int, signed int);
extern signed short (*v18) (signed short, unsigned int, signed int, signed int);
unsigned char v21 (signed int, signed char);
unsigned char (*v22) (signed int, signed char) = v21;
extern void v23 (signed char, signed char, signed int);
extern void (*v24) (signed char, signed char, signed int);
extern unsigned short v25 (unsigned int);
extern unsigned short (*v26) (unsigned int);
extern signed int v27 (unsigned short, unsigned int, signed char, signed char);
extern signed int (*v28) (unsigned short, unsigned int, signed char, signed char);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v113 = 6;
signed char v112 = -2;
unsigned char v111 = 2;

unsigned int v29 (void)
{
{
for (;;) {
unsigned char v116 = 5;
signed char v115 = -2;
signed short v114 = -2;
trace++;
switch (trace)
{
case 4: 
return 7U;
case 6: 
return 2U;
default: abort ();
}
}
}
}

unsigned char v21 (signed int v117, signed char v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = 3;
signed int v120 = -3;
unsigned int v119 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
