#include <stdlib.h>
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
void v5 (unsigned int);
void (*v6) (unsigned int) = v5;
extern void v7 (unsigned short, signed int, unsigned short);
extern void (*v8) (unsigned short, signed int, unsigned short);
extern unsigned short v9 (signed int, unsigned short);
extern unsigned short (*v10) (signed int, unsigned short);
extern unsigned short v11 (unsigned short, unsigned int);
extern unsigned short (*v12) (unsigned short, unsigned int);
signed short v13 (signed short, signed short, signed char, signed int);
signed short (*v14) (signed short, signed short, signed char, signed int) = v13;
signed char v15 (signed char, signed int, signed short, signed char);
signed char (*v16) (signed char, signed int, signed short, signed char) = v15;
extern unsigned char v17 (unsigned int, signed int, signed short, signed char);
extern unsigned char (*v18) (unsigned int, signed int, signed short, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (signed short, signed short, signed int);
extern unsigned short (*v22) (signed short, signed short, signed int);
unsigned char v23 (unsigned int, unsigned char, unsigned char);
unsigned char (*v24) (unsigned int, unsigned char, unsigned char) = v23;
extern unsigned char v25 (signed int, unsigned int, signed short, unsigned char);
extern unsigned char (*v26) (signed int, unsigned int, signed short, unsigned char);
extern signed short v27 (unsigned int, unsigned char, unsigned int, signed short);
extern signed short (*v28) (unsigned int, unsigned char, unsigned int, signed short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v141 = -1;
signed int v140 = -4;
unsigned char v139 = 5;

unsigned char v23 (unsigned int v142, unsigned char v143, unsigned char v144)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed int v147 = -4;
unsigned int v146 = 7U;
signed short v145 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (signed char v148, signed int v149, signed short v150, signed char v151)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned int v154 = 5U;
unsigned int v153 = 0U;
unsigned int v152 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed short v155, signed short v156, signed char v157, signed int v158)
{
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
{
for (;;) {
unsigned short v161 = 5;
signed int v160 = 3;
signed char v159 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v162)
{
history[history_index++] = (int)v162;
{
for (;;) {
signed short v165 = -4;
unsigned int v164 = 4U;
unsigned char v163 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
