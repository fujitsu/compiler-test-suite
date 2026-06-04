#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
extern unsigned int v7 (unsigned int, signed int, signed short, signed char);
extern unsigned int (*v8) (unsigned int, signed int, signed short, signed char);
unsigned char v9 (signed short, unsigned short);
unsigned char (*v10) (signed short, unsigned short) = v9;
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed short v19 (unsigned char, signed char);
extern signed short (*v20) (unsigned char, signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v27 (signed short, unsigned short, signed int, signed int);
extern signed short (*v28) (signed short, unsigned short, signed int, signed int);
extern signed int v29 (signed int, unsigned short);
extern signed int (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v113 = 3;
signed short v112 = -2;
signed char v111 = 2;

unsigned char v9 (signed short v114, unsigned short v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 0;
signed short v117 = 2;
unsigned char v116 = 3;
trace++;
switch (trace)
{
case 1: 
return v118;
case 5: 
return 7;
default: abort ();
}
}
}
}
