#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern unsigned char v3 (unsigned int, unsigned short, unsigned char, signed short);
extern unsigned char (*v4) (unsigned int, unsigned short, unsigned char, signed short);
extern unsigned short v5 (signed short, unsigned short);
extern unsigned short (*v6) (signed short, unsigned short);
extern signed int v7 (unsigned short, signed char);
extern signed int (*v8) (unsigned short, signed char);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern void v11 (signed char, signed short);
extern void (*v12) (signed char, signed short);
unsigned char v13 (unsigned char, signed char);
unsigned char (*v14) (unsigned char, signed char) = v13;
extern unsigned char v15 (unsigned char, unsigned short, signed short, signed short);
extern unsigned char (*v16) (unsigned char, unsigned short, signed short, signed short);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed int v19 (unsigned int, signed short, signed int);
extern signed int (*v20) (unsigned int, signed short, signed int);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern unsigned int v23 (unsigned char, signed short, unsigned int, signed char);
extern unsigned int (*v24) (unsigned char, signed short, unsigned int, signed char);
signed int v25 (unsigned int, signed char);
signed int (*v26) (unsigned int, signed char) = v25;
void v27 (signed int, unsigned int);
void (*v28) (signed int, unsigned int) = v27;
extern signed char v29 (signed int, unsigned int, signed char);
extern signed char (*v30) (signed int, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v145 = 2;
unsigned char v144 = 1;
unsigned int v143 = 2U;

void v27 (signed int v146, unsigned int v147)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed char v150 = 2;
signed short v149 = -4;
signed int v148 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (unsigned int v151, signed char v152)
{
history[history_index++] = (int)v151;
history[history_index++] = (int)v152;
{
for (;;) {
unsigned short v155 = 0;
unsigned int v154 = 2U;
unsigned short v153 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned char v156, signed char v157)
{
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
{
for (;;) {
unsigned char v160 = 1;
signed int v159 = 3;
signed int v158 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned int v163 = 4U;
signed int v162 = -3;
signed char v161 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v164;
v164 = 1U + 4U;
v21 (v164);
}
break;
case 20: 
return 0;
default: abort ();
}
}
}
}
