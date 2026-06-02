#include <stdlib.h>
extern unsigned int v3 (signed int, unsigned int, signed int, signed char);
extern unsigned int (*v4) (signed int, unsigned int, signed int, signed char);
extern unsigned char v5 (unsigned short, unsigned short, signed int);
extern unsigned char (*v6) (unsigned short, unsigned short, signed int);
extern signed int v7 (unsigned char, unsigned char, signed char, unsigned char);
extern signed int (*v8) (unsigned char, unsigned char, signed char, unsigned char);
extern unsigned int v11 (signed int, unsigned int, unsigned int);
extern unsigned int (*v12) (signed int, unsigned int, unsigned int);
extern signed short v13 (unsigned int, signed char, unsigned int, unsigned short);
extern signed short (*v14) (unsigned int, signed char, unsigned int, unsigned short);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned int v17 (unsigned char, signed char, signed char, signed short);
extern unsigned int (*v18) (unsigned char, signed char, signed char, signed short);
extern unsigned char v19 (signed int, unsigned short);
extern unsigned char (*v20) (signed int, unsigned short);
extern unsigned short v21 (unsigned char, unsigned int, unsigned int, signed char);
extern unsigned short (*v22) (unsigned char, unsigned int, unsigned int, signed char);
unsigned int v23 (signed short, unsigned char, unsigned int);
unsigned int (*v24) (signed short, unsigned char, unsigned int) = v23;
extern unsigned short v25 (unsigned int, unsigned char);
extern unsigned short (*v26) (unsigned int, unsigned char);
extern unsigned short v27 (signed int, signed char);
extern unsigned short (*v28) (signed int, signed char);
extern unsigned short v29 (signed short);
extern unsigned short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v126 = -3;
unsigned char v125 = 6;
unsigned int v124 = 7U;

unsigned int v23 (signed short v127, unsigned char v128, unsigned int v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 3;
unsigned char v131 = 6;
unsigned char v130 = 5;
trace++;
switch (trace)
{
case 8: 
return v129;
default: abort ();
}
}
}
}
