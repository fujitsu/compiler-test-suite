#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char);
extern unsigned char (*v2) (signed short, unsigned char);
extern signed char v3 (signed int, unsigned char);
extern signed char (*v4) (signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (signed short, unsigned short, signed int);
extern signed int (*v12) (signed short, unsigned short, signed int);
extern signed char v13 (unsigned short, signed short);
extern signed char (*v14) (unsigned short, signed short);
extern unsigned char v15 (signed int);
extern unsigned char (*v16) (signed int);
unsigned char v19 (signed short, signed char, unsigned int, unsigned char);
unsigned char (*v20) (signed short, signed char, unsigned int, unsigned char) = v19;
unsigned char v21 (unsigned short, signed short);
unsigned char (*v22) (unsigned short, signed short) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (unsigned short, signed char, unsigned short, signed short);
extern unsigned short (*v26) (unsigned short, signed char, unsigned short, signed short);
extern void v27 (signed int, unsigned int);
extern void (*v28) (signed int, unsigned int);
extern signed short v29 (unsigned char, signed int, unsigned int);
extern signed short (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v121 = 1;
signed int v120 = -2;
unsigned int v119 = 4U;

unsigned char v21 (unsigned short v122, signed short v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed char v126 = -3;
signed char v125 = 2;
signed int v124 = -3;
trace++;
switch (trace)
{
case 11: 
return 2;
default: abort ();
}
}
}
}

unsigned char v19 (signed short v127, signed char v128, unsigned int v129, unsigned char v130)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed char v133 = -1;
signed int v132 = 0;
signed short v131 = 0;
trace++;
switch (trace)
{
case 5: 
return 5;
case 7: 
return v130;
default: abort ();
}
}
}
}
