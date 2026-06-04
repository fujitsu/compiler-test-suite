#include <stdlib.h>
extern signed short v1 (signed int, unsigned char);
extern signed short (*v2) (signed int, unsigned char);
extern signed short v3 (unsigned char, unsigned short);
extern signed short (*v4) (unsigned char, unsigned short);
void v5 (unsigned int, signed short);
void (*v6) (unsigned int, signed short) = v5;
extern signed short v7 (signed int, unsigned short, signed char, unsigned short);
extern signed short (*v8) (signed int, unsigned short, signed char, unsigned short);
extern unsigned short v9 (signed int, unsigned int);
extern unsigned short (*v10) (signed int, unsigned int);
extern unsigned short v11 (unsigned short, unsigned char);
extern unsigned short (*v12) (unsigned short, unsigned char);
extern unsigned char v13 (signed int, unsigned int);
extern unsigned char (*v14) (signed int, unsigned int);
extern unsigned short v15 (signed short, unsigned short);
extern unsigned short (*v16) (signed short, unsigned short);
signed char v17 (signed char, unsigned int, unsigned char, signed int);
signed char (*v18) (signed char, unsigned int, unsigned char, signed int) = v17;
unsigned int v19 (unsigned int, unsigned char);
unsigned int (*v20) (unsigned int, unsigned char) = v19;
extern unsigned int v21 (unsigned short, signed char);
extern unsigned int (*v22) (unsigned short, signed char);
extern unsigned short v23 (unsigned short, unsigned char, unsigned int);
extern unsigned short (*v24) (unsigned short, unsigned char, unsigned int);
extern unsigned short v25 (unsigned short, unsigned short, signed short, signed char);
extern unsigned short (*v26) (unsigned short, unsigned short, signed short, signed char);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v127 = -4;
signed short v126 = -1;
unsigned char v125 = 2;

unsigned int v19 (unsigned int v128, unsigned char v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = 0;
signed char v131 = 0;
signed int v130 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed char v133, unsigned int v134, unsigned char v135, signed int v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned short v139 = 0;
unsigned int v138 = 3U;
unsigned int v137 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v140, signed short v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned short v144 = 1;
signed short v143 = 2;
unsigned int v142 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
