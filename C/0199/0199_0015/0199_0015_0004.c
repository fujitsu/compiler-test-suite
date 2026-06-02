#include <stdlib.h>
extern signed char v3 (signed int, unsigned char, unsigned char);
extern signed char (*v4) (signed int, unsigned char, unsigned char);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern signed char v7 (unsigned short, signed int);
extern signed char (*v8) (unsigned short, signed int);
extern signed short v9 (signed char, signed int);
extern signed short (*v10) (signed char, signed int);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
unsigned char v19 (signed char, signed char, unsigned int);
unsigned char (*v20) (signed char, signed char, unsigned int) = v19;
extern signed char v21 (signed int, signed short, signed int, signed int);
extern signed char (*v22) (signed int, signed short, signed int, signed int);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
signed short v25 (void);
signed short (*v26) (void) = v25;
extern unsigned short v27 (signed int, unsigned short);
extern unsigned short (*v28) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v124 = 2;
unsigned short v123 = 6;
signed int v122 = 3;

signed short v25 (void)
{
{
for (;;) {
unsigned short v127 = 6;
unsigned int v126 = 2U;
unsigned char v125 = 3;
trace++;
switch (trace)
{
case 2: 
return 3;
case 4: 
return 1;
default: abort ();
}
}
}
}

unsigned char v19 (signed char v128, signed char v129, unsigned int v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed int v133 = -2;
unsigned char v132 = 2;
unsigned short v131 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
unsigned short v136 = 4;
signed short v135 = 0;
unsigned int v134 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
