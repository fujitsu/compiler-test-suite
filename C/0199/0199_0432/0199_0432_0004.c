#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char, unsigned int);
extern signed short (*v2) (unsigned char, unsigned char, unsigned int);
signed int v3 (unsigned char, signed char);
signed int (*v4) (unsigned char, signed char) = v3;
extern unsigned char v5 (signed int, unsigned char, signed int);
extern unsigned char (*v6) (signed int, unsigned char, signed int);
extern signed short v7 (unsigned char, signed char);
extern signed short (*v8) (unsigned char, signed char);
unsigned short v9 (unsigned int, signed int);
unsigned short (*v10) (unsigned int, signed int) = v9;
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern unsigned int v13 (unsigned short, unsigned short);
extern unsigned int (*v14) (unsigned short, unsigned short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (unsigned int, signed short);
extern signed short (*v18) (unsigned int, signed short);
extern signed int v19 (signed short, unsigned int);
extern signed int (*v20) (signed short, unsigned int);
void v21 (unsigned short, unsigned short);
void (*v22) (unsigned short, unsigned short) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v128 = 0;
signed char v127 = -1;
unsigned short v126 = 7;

void v21 (unsigned short v129, unsigned short v130)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
signed short v133 = -3;
signed short v132 = 1;
signed char v131 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned int v134, signed int v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = 2;
unsigned int v137 = 1U;
signed char v136 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned char v139, signed char v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = 2;
signed int v142 = 1;
unsigned int v141 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
