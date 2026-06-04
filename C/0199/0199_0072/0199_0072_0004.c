#include <stdlib.h>
extern signed int v1 (unsigned char, signed short, signed int, unsigned short);
extern signed int (*v2) (unsigned char, signed short, signed int, unsigned short);
extern unsigned int v3 (unsigned short, unsigned int);
extern unsigned int (*v4) (unsigned short, unsigned int);
extern unsigned char v5 (signed int, unsigned char, unsigned int);
extern unsigned char (*v6) (signed int, unsigned char, unsigned int);
unsigned char v7 (signed int, unsigned char, signed char, signed short);
unsigned char (*v8) (signed int, unsigned char, signed char, signed short) = v7;
extern unsigned char v9 (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
void v15 (unsigned char, unsigned char, signed int);
void (*v16) (unsigned char, unsigned char, signed int) = v15;
extern unsigned char v17 (signed int);
extern unsigned char (*v18) (signed int);
extern signed short v19 (unsigned char, unsigned char, signed short, unsigned int);
extern signed short (*v20) (unsigned char, unsigned char, signed short, unsigned int);
extern unsigned int v21 (unsigned char, signed short, unsigned short);
extern unsigned int (*v22) (unsigned char, signed short, unsigned short);
unsigned short v23 (signed short, unsigned int);
unsigned short (*v24) (signed short, unsigned int) = v23;
extern unsigned int v25 (signed char, signed short, unsigned int, signed char);
extern unsigned int (*v26) (signed char, signed short, unsigned int, signed char);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern signed int v29 (unsigned int, unsigned char, signed short, unsigned int);
extern signed int (*v30) (unsigned int, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v148 = 3;
unsigned char v147 = 2;
signed char v146 = 2;

unsigned short v23 (signed short v149, unsigned int v150)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
signed char v153 = -3;
unsigned int v152 = 6U;
unsigned short v151 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned char v154, unsigned char v155, signed int v156)
{
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
{
for (;;) {
unsigned char v159 = 7;
signed int v158 = 2;
signed short v157 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v160, unsigned char v161, signed char v162, signed short v163)
{
history[history_index++] = (int)v160;
history[history_index++] = (int)v161;
history[history_index++] = (int)v162;
history[history_index++] = (int)v163;
{
for (;;) {
unsigned char v166 = 5;
unsigned int v165 = 7U;
signed int v164 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
