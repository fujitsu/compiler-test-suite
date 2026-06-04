#include <stdlib.h>
extern signed short v3 (signed int, signed short, signed int);
extern signed short (*v4) (signed int, signed short, signed int);
extern signed short v5 (unsigned short, signed int, unsigned char);
extern signed short (*v6) (unsigned short, signed int, unsigned char);
extern unsigned short v7 (signed short, unsigned short, signed short);
extern unsigned short (*v8) (signed short, unsigned short, signed short);
extern signed short v9 (signed int);
extern signed short (*v10) (signed int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
extern signed char v15 (signed int, unsigned int, unsigned int);
extern signed char (*v16) (signed int, unsigned int, unsigned int);
extern signed char v17 (unsigned char, signed int, signed short);
extern signed char (*v18) (unsigned char, signed int, signed short);
extern unsigned int v19 (signed int, unsigned int);
extern unsigned int (*v20) (signed int, unsigned int);
extern unsigned int v21 (unsigned int, unsigned char, signed short, signed short);
extern unsigned int (*v22) (unsigned int, unsigned char, signed short, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned char v27 (signed char, signed int, unsigned char);
unsigned char (*v28) (signed char, signed int, unsigned char) = v27;
extern void v29 (signed char, signed int);
extern void (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v114 = 7;
signed char v113 = 3;
signed char v112 = 1;

unsigned char v27 (signed char v115, signed int v116, unsigned char v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = -3;
signed short v119 = 2;
signed short v118 = -2;
trace++;
switch (trace)
{
case 8: 
return v117;
case 10: 
return 3;
default: abort ();
}
}
}
}
