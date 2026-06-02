#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned short, signed int);
extern unsigned int (*v2) (unsigned short, unsigned short, signed int);
extern signed char v3 (signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned int);
extern unsigned char v5 (signed int);
extern unsigned char (*v6) (signed int);
extern unsigned short v7 (signed char, signed short, signed char, unsigned int);
extern unsigned short (*v8) (signed char, signed short, signed char, unsigned int);
extern unsigned char v9 (signed short, unsigned short, signed char, unsigned short);
extern unsigned char (*v10) (signed short, unsigned short, signed char, unsigned short);
signed int v11 (unsigned short, signed short);
signed int (*v12) (unsigned short, signed short) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
void v15 (signed int, unsigned int, signed short, unsigned short);
void (*v16) (signed int, unsigned int, signed short, unsigned short) = v15;
extern unsigned int v19 (unsigned char, signed short, signed short, signed char);
extern unsigned int (*v20) (unsigned char, signed short, signed short, signed char);
extern unsigned int v21 (signed char, unsigned short);
extern unsigned int (*v22) (signed char, unsigned short);
extern signed char v23 (unsigned char, signed char, signed int, unsigned char);
extern signed char (*v24) (unsigned char, signed char, signed int, unsigned char);
unsigned char v25 (signed char);
unsigned char (*v26) (signed char) = v25;
extern unsigned int v27 (signed int, signed short, signed short);
extern unsigned int (*v28) (signed int, signed short, signed short);
signed short v29 (unsigned char);
signed short (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v147 = 4;
unsigned int v146 = 3U;
signed char v145 = -3;

signed short v29 (unsigned char v148)
{
history[history_index++] = (int)v148;
{
for (;;) {
unsigned int v151 = 5U;
signed char v150 = -1;
signed int v149 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (signed char v152)
{
history[history_index++] = (int)v152;
{
for (;;) {
signed char v155 = 2;
unsigned int v154 = 5U;
unsigned int v153 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed int v156, unsigned int v157, signed short v158, unsigned short v159)
{
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
history[history_index++] = (int)v159;
{
for (;;) {
unsigned int v162 = 2U;
unsigned int v161 = 6U;
unsigned short v160 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned short v163, signed short v164)
{
history[history_index++] = (int)v163;
history[history_index++] = (int)v164;
{
for (;;) {
unsigned short v167 = 5;
signed char v166 = -4;
signed int v165 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
