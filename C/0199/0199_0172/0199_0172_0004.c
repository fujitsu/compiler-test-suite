#include <stdlib.h>
extern signed short v1 (signed int, signed char, unsigned short);
extern signed short (*v2) (signed int, signed char, unsigned short);
extern unsigned int v3 (unsigned char, unsigned int);
extern unsigned int (*v4) (unsigned char, unsigned int);
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
signed short v11 (unsigned char, signed char, unsigned char);
signed short (*v12) (unsigned char, signed char, unsigned char) = v11;
extern unsigned short v13 (unsigned char, unsigned short);
extern unsigned short (*v14) (unsigned char, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned char v17 (signed short, unsigned char, signed int, unsigned char);
extern unsigned char (*v18) (signed short, unsigned char, signed int, unsigned char);
unsigned short v19 (signed char, signed char, unsigned short, unsigned char);
unsigned short (*v20) (signed char, signed char, unsigned short, unsigned char) = v19;
extern signed short v21 (unsigned int, unsigned char, signed int);
extern signed short (*v22) (unsigned int, unsigned char, signed int);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
void v25 (void);
void (*v26) (void) = v25;
signed short v27 (signed short);
signed short (*v28) (signed short) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v125 = -3;
unsigned int v124 = 5U;
unsigned char v123 = 1;

signed short v27 (signed short v126)
{
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = -2;
unsigned char v128 = 7;
signed int v127 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (void)
{
{
for (;;) {
unsigned char v132 = 0;
unsigned char v131 = 6;
signed short v130 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed char v133, signed char v134, unsigned short v135, unsigned char v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = 3;
unsigned char v138 = 7;
signed char v137 = 1;
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

signed short v11 (unsigned char v140, signed char v141, unsigned char v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed int v145 = -4;
signed int v144 = -2;
signed short v143 = 0;
trace++;
switch (trace)
{
case 11: 
return v143;
default: abort ();
}
}
}
}
