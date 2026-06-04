#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed char, signed char);
extern unsigned int (*v2) (unsigned int, signed char, signed char);
unsigned int v3 (signed short);
unsigned int (*v4) (signed short) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v7 (unsigned short, signed char, unsigned int, unsigned short);
extern signed short (*v8) (unsigned short, signed char, unsigned int, unsigned short);
extern void v9 (unsigned short, signed int, unsigned short, unsigned short);
extern void (*v10) (unsigned short, signed int, unsigned short, unsigned short);
void v11 (unsigned short, unsigned short);
void (*v12) (unsigned short, unsigned short) = v11;
signed short v13 (unsigned char, signed int, unsigned short);
signed short (*v14) (unsigned char, signed int, unsigned short) = v13;
extern signed short v15 (signed short, unsigned short, signed short, unsigned short);
extern signed short (*v16) (signed short, unsigned short, signed short, unsigned short);
extern unsigned int v17 (signed char, signed short, signed char, signed int);
extern unsigned int (*v18) (signed char, signed short, signed char, signed int);
extern signed int v19 (signed short, unsigned int, unsigned int, signed short);
extern signed int (*v20) (signed short, unsigned int, unsigned int, signed short);
extern unsigned short v21 (unsigned char, signed char);
extern unsigned short (*v22) (unsigned char, signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (unsigned int, signed short, unsigned int);
extern void (*v28) (unsigned int, signed short, unsigned int);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v133 = 5;
unsigned short v132 = 4;
signed char v131 = 1;

signed short v13 (unsigned char v134, signed int v135, unsigned short v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed int v139 = -4;
unsigned int v138 = 5U;
signed char v137 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned short v140, unsigned short v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed short v144 = -4;
signed short v143 = -3;
signed int v142 = 1;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
case 7: 
return;
case 9: 
return;
default: abort ();
}
}
}
}

unsigned int v3 (signed short v145)
{
history[history_index++] = (int)v145;
{
for (;;) {
signed short v148 = -3;
unsigned int v147 = 2U;
signed int v146 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
