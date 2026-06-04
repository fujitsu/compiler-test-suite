#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned char);
extern unsigned short (*v2) (signed int, unsigned char);
signed int v3 (unsigned char, unsigned int, signed char);
signed int (*v4) (unsigned char, unsigned int, signed char) = v3;
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
extern unsigned char v7 (signed int, unsigned short, signed char);
extern unsigned char (*v8) (signed int, unsigned short, signed char);
extern unsigned int v9 (unsigned int);
extern unsigned int (*v10) (unsigned int);
extern unsigned char v11 (unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, signed char);
extern signed int v13 (signed int, unsigned char, signed short);
extern signed int (*v14) (signed int, unsigned char, signed short);
extern unsigned short v15 (unsigned short, signed int, signed short);
extern unsigned short (*v16) (unsigned short, signed int, signed short);
extern signed short v17 (unsigned char, signed short, unsigned int);
extern signed short (*v18) (unsigned char, signed short, unsigned int);
extern signed char v19 (unsigned int, signed short, unsigned int, unsigned int);
extern signed char (*v20) (unsigned int, signed short, unsigned int, unsigned int);
extern signed int v23 (unsigned short);
extern signed int (*v24) (unsigned short);
extern signed char v25 (unsigned char, signed int, signed char, signed int);
extern signed char (*v26) (unsigned char, signed int, signed char, signed int);
void v27 (signed int, unsigned char, signed char);
void (*v28) (signed int, unsigned char, signed char) = v27;
void v29 (signed char);
void (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v123 = -1;
signed int v122 = 3;
unsigned char v121 = 7;

void v29 (signed char v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = -3;
signed short v126 = -2;
signed short v125 = 3;
trace++;
switch (trace)
{
case 2: 
return;
case 6: 
return;
case 8: 
return;
default: abort ();
}
}
}
}

void v27 (signed int v128, unsigned char v129, signed char v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = -1;
signed char v132 = -2;
unsigned int v131 = 1U;
trace++;
switch (trace)
{
case 4: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed int v3 (unsigned char v134, unsigned int v135, signed char v136)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 0;
unsigned char v138 = 7;
signed short v137 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
