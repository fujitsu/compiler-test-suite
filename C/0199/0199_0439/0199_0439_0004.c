#include <stdlib.h>
extern void v1 (signed short, unsigned char, signed int, unsigned int);
extern void (*v2) (signed short, unsigned char, signed int, unsigned int);
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
extern signed int v5 (void);
extern signed int (*v6) (void);
signed short v7 (signed short, unsigned int);
signed short (*v8) (signed short, unsigned int) = v7;
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern unsigned char v17 (signed int, unsigned short, unsigned char);
extern unsigned char (*v18) (signed int, unsigned short, unsigned char);
unsigned short v19 (signed char);
unsigned short (*v20) (signed char) = v19;
void v21 (unsigned int, signed int, unsigned int, unsigned char);
void (*v22) (unsigned int, signed int, unsigned int, unsigned char) = v21;
extern signed int v23 (unsigned short, signed char);
extern signed int (*v24) (unsigned short, signed char);
extern unsigned short v25 (signed short, unsigned int, unsigned int, unsigned char);
extern unsigned short (*v26) (signed short, unsigned int, unsigned int, unsigned char);
unsigned short v27 (signed char);
unsigned short (*v28) (signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed char v124 = -1;
unsigned int v123 = 1U;
unsigned short v122 = 2;

unsigned short v27 (signed char v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed int v128 = -4;
unsigned short v127 = 2;
signed char v126 = -4;
trace++;
switch (trace)
{
case 2: 
return v127;
default: abort ();
}
}
}
}

void v21 (unsigned int v129, signed int v130, unsigned int v131, unsigned char v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = 2;
signed int v134 = -3;
unsigned short v133 = 0;
trace++;
switch (trace)
{
case 8: 
return;
default: abort ();
}
}
}
}

unsigned short v19 (signed char v136)
{
history[history_index++] = (int)v136;
{
for (;;) {
signed int v139 = -2;
signed char v138 = 2;
unsigned int v137 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed short v140, unsigned int v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned short v144 = 3;
unsigned char v143 = 6;
unsigned short v142 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
