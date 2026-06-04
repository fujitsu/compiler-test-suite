#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short);
extern unsigned int (*v2) (unsigned short, signed short);
signed short v3 (signed short);
signed short (*v4) (signed short) = v3;
extern void v5 (signed char, signed char, signed int);
extern void (*v6) (signed char, signed char, signed int);
extern unsigned char v7 (signed short, unsigned short, unsigned int, signed short);
extern unsigned char (*v8) (signed short, unsigned short, unsigned int, signed short);
extern void v9 (unsigned char, signed char, signed short);
extern void (*v10) (unsigned char, signed char, signed short);
extern unsigned char v11 (unsigned char, unsigned short, signed short);
extern unsigned char (*v12) (unsigned char, unsigned short, signed short);
extern signed char v13 (unsigned short, signed short, unsigned char, signed int);
extern signed char (*v14) (unsigned short, signed short, unsigned char, signed int);
void v15 (unsigned short, signed char, unsigned int, unsigned char);
void (*v16) (unsigned short, signed char, unsigned int, unsigned char) = v15;
extern signed int v17 (void);
extern signed int (*v18) (void);
extern unsigned int v19 (unsigned int, unsigned int, signed int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned int, signed int, unsigned char);
extern unsigned int v23 (unsigned char, signed char, unsigned int, signed int);
extern unsigned int (*v24) (unsigned char, signed char, unsigned int, signed int);
signed char v25 (unsigned int);
signed char (*v26) (unsigned int) = v25;
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
extern void v29 (signed short, signed int);
extern void (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v141 = 6U;
unsigned char v140 = 0;
unsigned int v139 = 1U;

signed char v25 (unsigned int v142)
{
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 3U;
unsigned int v144 = 3U;
signed short v143 = 3;
trace++;
switch (trace)
{
case 2: 
return -4;
case 9: 
return -1;
default: abort ();
}
}
}
}

void v15 (unsigned short v146, signed char v147, unsigned int v148, unsigned char v149)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
unsigned char v152 = 6;
unsigned int v151 = 6U;
signed short v150 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed short v153)
{
history[history_index++] = (int)v153;
{
for (;;) {
unsigned int v156 = 1U;
unsigned char v155 = 2;
unsigned int v154 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
