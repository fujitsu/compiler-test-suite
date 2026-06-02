#include <stdlib.h>
extern signed int v1 (unsigned char, signed short, unsigned int, unsigned short);
extern signed int (*v2) (unsigned char, signed short, unsigned int, unsigned short);
extern signed int v3 (unsigned char, unsigned short, signed char, signed short);
extern signed int (*v4) (unsigned char, unsigned short, signed char, signed short);
unsigned int v5 (signed char, unsigned int, unsigned int, unsigned int);
unsigned int (*v6) (signed char, unsigned int, unsigned int, unsigned int) = v5;
extern signed int v9 (signed char, unsigned int, unsigned int, signed char);
extern signed int (*v10) (signed char, unsigned int, unsigned int, signed char);
extern unsigned int v11 (unsigned short, unsigned char);
extern unsigned int (*v12) (unsigned short, unsigned char);
extern unsigned char v13 (unsigned short, signed short, signed int);
extern unsigned char (*v14) (unsigned short, signed short, signed int);
signed short v15 (unsigned int, unsigned char, unsigned char);
signed short (*v16) (unsigned int, unsigned char, unsigned char) = v15;
unsigned int v17 (unsigned short);
unsigned int (*v18) (unsigned short) = v17;
extern signed int v19 (unsigned int, signed char, signed int, signed char);
extern signed int (*v20) (unsigned int, signed char, signed int, signed char);
extern signed char v21 (signed char, unsigned short);
extern signed char (*v22) (signed char, unsigned short);
extern void v23 (unsigned int, unsigned short);
extern void (*v24) (unsigned int, unsigned short);
extern unsigned char v27 (signed int, signed short, signed short);
extern unsigned char (*v28) (signed int, signed short, signed short);
void v29 (signed int, unsigned short, unsigned int, signed short);
void (*v30) (signed int, unsigned short, unsigned int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v144 = 1U;
unsigned short v143 = 5;
unsigned int v142 = 3U;

void v29 (signed int v145, unsigned short v146, unsigned int v147, signed short v148)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
unsigned short v151 = 5;
signed int v150 = 2;
signed char v149 = 2;
trace++;
switch (trace)
{
case 2: 
return;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v152)
{
history[history_index++] = (int)v152;
{
for (;;) {
signed short v155 = -4;
signed int v154 = 3;
signed short v153 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned int v156, unsigned char v157, unsigned char v158)
{
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
history[history_index++] = (int)v158;
{
for (;;) {
unsigned int v161 = 1U;
unsigned char v160 = 1;
unsigned int v159 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed char v162, unsigned int v163, unsigned int v164, unsigned int v165)
{
history[history_index++] = (int)v162;
history[history_index++] = (int)v163;
history[history_index++] = (int)v164;
history[history_index++] = (int)v165;
{
for (;;) {
unsigned char v168 = 6;
unsigned char v167 = 1;
signed short v166 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
