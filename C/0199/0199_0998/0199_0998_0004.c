#include <stdlib.h>
extern void v1 (unsigned int, signed int, signed short, unsigned int);
extern void (*v2) (unsigned int, signed int, signed short, unsigned int);
extern void v3 (signed short, signed int, unsigned char, unsigned char);
extern void (*v4) (signed short, signed int, unsigned char, unsigned char);
extern unsigned char v5 (unsigned int, unsigned int, unsigned int);
extern unsigned char (*v6) (unsigned int, unsigned int, unsigned int);
extern void v7 (unsigned short, signed short, unsigned int, unsigned int);
extern void (*v8) (unsigned short, signed short, unsigned int, unsigned int);
extern signed int v9 (unsigned int, unsigned short, unsigned short, signed short);
extern signed int (*v10) (unsigned int, unsigned short, unsigned short, signed short);
extern void v11 (signed char, signed int, signed char);
extern void (*v12) (signed char, signed int, signed char);
signed int v13 (signed char, unsigned char, unsigned int);
signed int (*v14) (signed char, unsigned char, unsigned int) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed int v19 (signed char, signed int, signed int, unsigned short);
extern signed int (*v20) (signed char, signed int, signed int, unsigned short);
extern unsigned char v21 (unsigned char, unsigned int, signed char, signed short);
extern unsigned char (*v22) (unsigned char, unsigned int, signed char, signed short);
extern signed char v23 (unsigned char);
extern signed char (*v24) (unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
unsigned char v29 (signed int);
unsigned char (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v140 = 2;
unsigned char v139 = 3;
signed char v138 = -3;

unsigned char v29 (signed int v141)
{
history[history_index++] = (int)v141;
{
for (;;) {
signed int v144 = -4;
signed char v143 = -4;
unsigned char v142 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed char v145, unsigned char v146, unsigned int v147)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
{
for (;;) {
signed char v150 = 0;
signed char v149 = 1;
unsigned char v148 = 7;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v151;
unsigned int v152;
signed char v153;
signed short v154;
unsigned char v155;
v151 = 6 - 0;
v152 = v147 + 3U;
v153 = 0 + -2;
v154 = -1 - 1;
v155 = v21 (v151, v152, v153, v154);
history[history_index++] = (int)v155;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
