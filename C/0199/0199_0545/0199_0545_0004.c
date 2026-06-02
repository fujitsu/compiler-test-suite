#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned int v3 (unsigned short, unsigned int);
extern unsigned int (*v4) (unsigned short, unsigned int);
extern signed short v5 (signed short, unsigned char, signed short);
extern signed short (*v6) (signed short, unsigned char, signed short);
extern unsigned int v7 (signed char, signed char, unsigned int, unsigned char);
extern unsigned int (*v8) (signed char, signed char, unsigned int, unsigned char);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed short v11 (signed char, signed char, unsigned short, unsigned char);
extern signed short (*v12) (signed char, signed char, unsigned short, unsigned char);
extern unsigned char v13 (signed char, unsigned int);
extern unsigned char (*v14) (signed char, unsigned int);
extern signed char v15 (signed short, signed int, unsigned short);
extern signed char (*v16) (signed short, signed int, unsigned short);
extern signed short v17 (signed int);
extern signed short (*v18) (signed int);
extern signed int v19 (unsigned short, signed char, signed int, signed int);
extern signed int (*v20) (unsigned short, signed char, signed int, signed int);
signed char v21 (void);
signed char (*v22) (void) = v21;
extern unsigned char v23 (signed short, unsigned char, unsigned char, signed int);
extern unsigned char (*v24) (signed short, unsigned char, unsigned char, signed int);
unsigned char v25 (unsigned short, signed int, unsigned short);
unsigned char (*v26) (unsigned short, signed int, unsigned short) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
void v29 (unsigned char, signed char);
void (*v30) (unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v133 = -2;
unsigned char v132 = 1;
unsigned short v131 = 5;

void v29 (unsigned char v134, signed char v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = 2;
unsigned short v137 = 4;
unsigned int v136 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (unsigned short v139, signed int v140, unsigned short v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned int v144 = 6U;
signed char v143 = 2;
unsigned int v142 = 5U;
trace++;
switch (trace)
{
case 6: 
return 3;
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
unsigned int v147 = 2U;
signed short v146 = 0;
signed char v145 = 2;
trace++;
switch (trace)
{
case 1: 
return v145;
default: abort ();
}
}
}
}
