#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (unsigned char, unsigned int, signed int, unsigned short);
extern unsigned int (*v4) (unsigned char, unsigned int, signed int, unsigned short);
extern unsigned int v5 (unsigned int, unsigned char, unsigned short);
extern unsigned int (*v6) (unsigned int, unsigned char, unsigned short);
extern signed short v7 (unsigned short, unsigned char, signed short, signed int);
extern signed short (*v8) (unsigned short, unsigned char, signed short, signed int);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (unsigned int, signed int, signed int);
extern unsigned char (*v12) (unsigned int, signed int, signed int);
unsigned short v13 (unsigned int);
unsigned short (*v14) (unsigned int) = v13;
extern unsigned int v15 (signed char, signed short, unsigned int);
extern unsigned int (*v16) (signed char, signed short, unsigned int);
extern void v17 (unsigned short, unsigned int, signed int, unsigned short);
extern void (*v18) (unsigned short, unsigned int, signed int, unsigned short);
extern void v19 (unsigned char, signed char, signed int);
extern void (*v20) (unsigned char, signed char, signed int);
extern signed char v21 (unsigned int, unsigned char, unsigned char);
extern signed char (*v22) (unsigned int, unsigned char, unsigned char);
unsigned int v23 (signed char);
unsigned int (*v24) (signed char) = v23;
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern signed short v29 (unsigned int, unsigned short, signed short, unsigned int);
extern signed short (*v30) (unsigned int, unsigned short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v121 = 0U;
signed int v120 = 1;
signed char v119 = -4;

unsigned int v23 (signed char v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 7;
unsigned short v124 = 6;
signed short v123 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
unsigned short v129 = 7;
unsigned int v128 = 4U;
signed int v127 = -3;
trace++;
switch (trace)
{
case 5: 
return 3;
default: abort ();
}
}
}
}
