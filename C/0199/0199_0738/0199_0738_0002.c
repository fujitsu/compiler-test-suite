#include <stdlib.h>
extern void v1 (unsigned int, signed int, signed short, unsigned char);
extern void (*v2) (unsigned int, signed int, signed short, unsigned char);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern unsigned short v5 (signed short, unsigned int, unsigned char, unsigned char);
extern unsigned short (*v6) (signed short, unsigned int, unsigned char, unsigned char);
extern signed char v7 (unsigned int, unsigned short, unsigned int, signed char);
extern signed char (*v8) (unsigned int, unsigned short, unsigned int, signed char);
extern unsigned int v9 (unsigned int, unsigned int);
extern unsigned int (*v10) (unsigned int, unsigned int);
extern unsigned short v11 (signed int);
extern unsigned short (*v12) (signed int);
extern signed short v13 (signed char);
extern signed short (*v14) (signed char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern unsigned char v17 (unsigned short);
extern unsigned char (*v18) (unsigned short);
extern unsigned char v19 (unsigned int, signed short, unsigned int);
extern unsigned char (*v20) (unsigned int, signed short, unsigned int);
unsigned short v21 (unsigned int, signed int);
unsigned short (*v22) (unsigned int, signed int) = v21;
extern unsigned char v23 (unsigned short, unsigned char, signed short, signed int);
extern unsigned char (*v24) (unsigned short, unsigned char, signed short, signed int);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned int v27 (unsigned char);
extern unsigned int (*v28) (unsigned char);
extern signed short v29 (signed char, unsigned short);
extern signed short (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v123 = -2;
signed int v122 = 2;
unsigned char v121 = 5;

unsigned short v21 (unsigned int v124, signed int v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = -1;
signed char v127 = 0;
unsigned int v126 = 1U;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v129;
unsigned int v130;
v129 = 2 + 4;
v130 = v27 (v129);
history[history_index++] = (int)v130;
}
break;
case 5: 
return 4;
default: abort ();
}
}
}
}
