#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (signed short, unsigned short, unsigned int);
extern void (*v4) (signed short, unsigned short, unsigned int);
extern void v5 (void);
extern void (*v6) (void);
extern signed char v7 (unsigned int);
extern signed char (*v8) (unsigned int);
extern unsigned int v9 (unsigned int, signed int);
extern unsigned int (*v10) (unsigned int, signed int);
extern signed short v11 (signed char, signed short, signed char, signed char);
extern signed short (*v12) (signed char, signed short, signed char, signed char);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (unsigned int, signed int, signed short, unsigned int);
extern unsigned short (*v16) (unsigned int, signed int, signed short, unsigned int);
extern unsigned int v17 (unsigned char);
extern unsigned int (*v18) (unsigned char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
signed short v25 (unsigned int, signed char, unsigned short);
signed short (*v26) (unsigned int, signed char, unsigned short) = v25;
extern signed char v29 (signed short, signed short, signed int);
extern signed char (*v30) (signed short, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v128 = 3;
unsigned char v127 = 0;
signed short v126 = -4;

signed short v25 (unsigned int v129, signed char v130, unsigned short v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 6;
unsigned char v133 = 6;
unsigned short v132 = 6;
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
