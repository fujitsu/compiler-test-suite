#include <stdlib.h>
extern void v3 (void);
extern void (*v4) (void);
unsigned char v5 (signed char, unsigned char);
unsigned char (*v6) (signed char, unsigned char) = v5;
extern unsigned int v7 (unsigned int, unsigned char, unsigned short, unsigned short);
extern unsigned int (*v8) (unsigned int, unsigned char, unsigned short, unsigned short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern void v15 (signed int, unsigned int);
extern void (*v16) (signed int, unsigned int);
extern void v17 (signed int);
extern void (*v18) (signed int);
extern void v19 (signed short, signed int, signed char);
extern void (*v20) (signed short, signed int, signed char);
extern void v21 (unsigned char, unsigned short, unsigned char);
extern void (*v22) (unsigned char, unsigned short, unsigned char);
extern signed short v23 (unsigned char, signed char, signed char, signed short);
extern signed short (*v24) (unsigned char, signed char, signed char, signed short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
void v27 (unsigned int, signed short, unsigned char, signed char);
void (*v28) (unsigned int, signed short, unsigned char, signed char) = v27;
extern unsigned short v29 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned short (*v30) (unsigned short, unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v121 = 6;
unsigned char v120 = 7;
signed short v119 = 1;

void v27 (unsigned int v122, signed short v123, unsigned char v124, signed char v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = -2;
signed int v127 = -2;
unsigned short v126 = 5;
trace++;
switch (trace)
{
case 5: 
return;
default: abort ();
}
}
}
}

unsigned char v5 (signed char v129, unsigned char v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 7;
unsigned int v132 = 5U;
signed int v131 = -3;
trace++;
switch (trace)
{
case 3: 
return 6;
default: abort ();
}
}
}
}
