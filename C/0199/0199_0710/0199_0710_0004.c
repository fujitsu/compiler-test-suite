#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
extern signed char v3 (unsigned int, signed int, unsigned char, signed short);
extern signed char (*v4) (unsigned int, signed int, unsigned char, signed short);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed char v7 (signed int, unsigned short, unsigned int);
extern signed char (*v8) (signed int, unsigned short, unsigned int);
extern unsigned short v9 (unsigned short, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned int);
void v11 (void);
void (*v12) (void) = v11;
extern signed short v13 (unsigned int, unsigned short);
extern signed short (*v14) (unsigned int, unsigned short);
extern signed short v15 (unsigned short, signed short, signed short, unsigned short);
extern signed short (*v16) (unsigned short, signed short, signed short, unsigned short);
signed short v17 (signed short, signed char);
signed short (*v18) (signed short, signed char) = v17;
unsigned int v19 (signed int, unsigned int);
unsigned int (*v20) (signed int, unsigned int) = v19;
extern unsigned int v21 (signed short, unsigned char, signed short, unsigned int);
extern unsigned int (*v22) (signed short, unsigned char, signed short, unsigned int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed short v25 (unsigned short, unsigned short, signed short);
extern signed short (*v26) (unsigned short, unsigned short, signed short);
extern signed short v27 (unsigned char, unsigned int);
extern signed short (*v28) (unsigned char, unsigned int);
unsigned char v29 (signed short, unsigned char);
unsigned char (*v30) (signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v133 = -3;
unsigned int v132 = 2U;
signed char v131 = -3;

unsigned char v29 (signed short v134, unsigned char v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = -1;
unsigned char v137 = 2;
unsigned char v136 = 4;
trace++;
switch (trace)
{
case 10: 
return v136;
default: abort ();
}
}
}
}

unsigned int v19 (signed int v139, unsigned int v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 7U;
unsigned int v142 = 0U;
signed int v141 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed short v144, signed char v145)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
signed char v148 = 1;
signed short v147 = -4;
signed short v146 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
signed int v151 = -4;
unsigned char v150 = 1;
signed char v149 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
