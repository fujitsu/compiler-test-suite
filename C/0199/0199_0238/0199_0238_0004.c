#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
unsigned char v3 (unsigned int, signed short, signed int);
unsigned char (*v4) (unsigned int, signed short, signed int) = v3;
extern unsigned char v5 (unsigned short, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned short, unsigned int, unsigned int);
extern unsigned int v7 (signed char, signed int, unsigned short, unsigned int);
extern unsigned int (*v8) (signed char, signed int, unsigned short, unsigned int);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern unsigned short v15 (signed char, unsigned char);
extern unsigned short (*v16) (signed char, unsigned char);
extern void v17 (unsigned int, signed int, unsigned short, unsigned char);
extern void (*v18) (unsigned int, signed int, unsigned short, unsigned char);
extern signed char v19 (signed int, signed char, unsigned short, unsigned char);
extern signed char (*v20) (signed int, signed char, unsigned short, unsigned char);
extern void v21 (unsigned char, unsigned int, unsigned int);
extern void (*v22) (unsigned char, unsigned int, unsigned int);
extern unsigned short v23 (unsigned int, unsigned char);
extern unsigned short (*v24) (unsigned int, unsigned char);
void v25 (unsigned int, unsigned short, unsigned char);
void (*v26) (unsigned int, unsigned short, unsigned char) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned short v29 (signed short, signed char, unsigned short, signed short);
extern unsigned short (*v30) (signed short, signed char, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v132 = -2;
signed int v131 = 0;
signed char v130 = -1;

void v25 (unsigned int v133, unsigned short v134, unsigned char v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed int v138 = -2;
unsigned short v137 = 0;
signed char v136 = 3;
trace++;
switch (trace)
{
case 3: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v139, signed short v140, signed int v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned short v144 = 0;
signed int v143 = -4;
unsigned int v142 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
