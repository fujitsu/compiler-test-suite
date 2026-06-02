#include <stdlib.h>
extern signed short v3 (signed int, signed short, signed int);
extern signed short (*v4) (signed int, signed short, signed int);
extern signed short v5 (unsigned short, signed int, unsigned char);
extern signed short (*v6) (unsigned short, signed int, unsigned char);
unsigned short v7 (signed short, unsigned short, signed short);
unsigned short (*v8) (signed short, unsigned short, signed short) = v7;
extern signed short v9 (signed int);
extern signed short (*v10) (signed int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
unsigned char v13 (unsigned short);
unsigned char (*v14) (unsigned short) = v13;
signed char v15 (signed int, unsigned int, unsigned int);
signed char (*v16) (signed int, unsigned int, unsigned int) = v15;
extern signed char v17 (unsigned char, signed int, signed short);
extern signed char (*v18) (unsigned char, signed int, signed short);
extern unsigned int v19 (signed int, unsigned int);
extern unsigned int (*v20) (signed int, unsigned int);
extern unsigned int v21 (unsigned int, unsigned char, signed short, signed short);
extern unsigned int (*v22) (unsigned int, unsigned char, signed short, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (signed char, signed int, unsigned char);
extern unsigned char (*v28) (signed char, signed int, unsigned char);
void v29 (signed char, signed int);
void (*v30) (signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v123 = 3;
signed char v122 = -4;
unsigned char v121 = 7;

void v29 (signed char v124, signed int v125)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = -1;
unsigned short v127 = 5;
unsigned int v126 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed int v129, unsigned int v130, unsigned int v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned char v134 = 0;
signed short v133 = 1;
signed char v132 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = 3;
signed short v137 = -1;
signed char v136 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v139, unsigned short v140, signed short v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned char v144 = 0;
signed short v143 = 0;
signed short v142 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
