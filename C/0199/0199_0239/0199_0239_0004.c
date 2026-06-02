#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern void v11 (signed short);
extern void (*v12) (signed short);
extern signed char v13 (unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, unsigned int);
extern unsigned int v15 (unsigned short);
extern unsigned int (*v16) (unsigned short);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern unsigned int v19 (signed short, signed char);
extern unsigned int (*v20) (signed short, signed char);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
unsigned char v23 (signed short, signed short);
unsigned char (*v24) (signed short, signed short) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned short, signed int, unsigned int, signed int);
extern void (*v28) (unsigned short, signed int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v115 = 7U;
signed char v114 = -1;
signed char v113 = -3;

unsigned char v23 (signed short v116, signed short v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 3;
unsigned int v119 = 4U;
signed char v118 = -3;
trace++;
switch (trace)
{
case 2: 
return v120;
default: abort ();
}
}
}
}
