#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (signed int, unsigned int, unsigned short, unsigned int);
extern unsigned char (*v8) (signed int, unsigned int, unsigned short, unsigned int);
extern signed short v9 (unsigned char, signed char, unsigned int, unsigned char);
extern signed short (*v10) (unsigned char, signed char, unsigned int, unsigned char);
extern signed char v11 (unsigned short, signed char);
extern signed char (*v12) (unsigned short, signed char);
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
extern unsigned short v15 (signed short, unsigned short, signed int, signed char);
extern unsigned short (*v16) (signed short, unsigned short, signed int, signed char);
unsigned char v17 (signed char, unsigned int, signed char);
unsigned char (*v18) (signed char, unsigned int, signed char) = v17;
void v19 (signed int, signed short, unsigned short, unsigned short);
void (*v20) (signed int, signed short, unsigned short, unsigned short) = v19;
extern signed char v21 (signed short, signed int);
extern signed char (*v22) (signed short, signed int);
extern signed int v23 (signed int, signed int, signed char, unsigned char);
extern signed int (*v24) (signed int, signed int, signed char, unsigned char);
extern unsigned short v25 (unsigned short, unsigned char, signed int);
extern unsigned short (*v26) (unsigned short, unsigned char, signed int);
extern unsigned char v27 (unsigned char, unsigned int, signed int);
extern unsigned char (*v28) (unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v122 = 1;
signed int v121 = 3;
signed int v120 = 3;

void v19 (signed int v123, signed short v124, unsigned short v125, unsigned short v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 6U;
signed int v128 = 1;
unsigned int v127 = 5U;
trace++;
switch (trace)
{
case 4: 
return;
case 6: 
return;
default: abort ();
}
}
}
}

unsigned char v17 (signed char v130, unsigned int v131, signed char v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned char v135 = 7;
signed int v134 = -2;
signed char v133 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
