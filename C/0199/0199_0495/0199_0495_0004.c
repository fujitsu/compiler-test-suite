#include <stdlib.h>
extern void v1 (signed char, signed short);
extern void (*v2) (signed char, signed short);
extern unsigned char v3 (unsigned short, signed char);
extern unsigned char (*v4) (unsigned short, signed char);
extern unsigned char v5 (unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned short v9 (signed int, unsigned short, signed int);
extern unsigned short (*v10) (signed int, unsigned short, signed int);
extern unsigned char v11 (unsigned short, signed char);
extern unsigned char (*v12) (unsigned short, signed char);
extern signed short v13 (unsigned char, signed int, signed int);
extern signed short (*v14) (unsigned char, signed int, signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
void v21 (unsigned short);
void (*v22) (unsigned short) = v21;
extern unsigned char v23 (signed int, unsigned char, signed int);
extern unsigned char (*v24) (signed int, unsigned char, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
unsigned char v29 (signed char, signed short);
unsigned char (*v30) (signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v112 = 2U;
unsigned short v111 = 1;
signed int v110 = -2;

unsigned char v29 (signed char v113, signed short v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned short v117 = 1;
unsigned char v116 = 2;
unsigned short v115 = 1;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}

void v21 (unsigned short v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = -3;
signed short v120 = 0;
unsigned char v119 = 3;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}
