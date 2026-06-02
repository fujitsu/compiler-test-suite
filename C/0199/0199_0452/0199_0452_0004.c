#include <stdlib.h>
extern unsigned int v1 (signed char, signed int, unsigned char, unsigned short);
extern unsigned int (*v2) (signed char, signed int, unsigned char, unsigned short);
extern signed int v3 (unsigned int);
extern signed int (*v4) (unsigned int);
extern signed int v5 (signed int, signed short, signed short, signed short);
extern signed int (*v6) (signed int, signed short, signed short, signed short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (signed int, signed char, unsigned short);
extern void (*v10) (signed int, signed char, unsigned short);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern signed short v19 (signed short, unsigned short);
extern signed short (*v20) (signed short, unsigned short);
extern signed char v21 (unsigned char, unsigned char, signed short, signed int);
extern signed char (*v22) (unsigned char, unsigned char, signed short, signed int);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
signed char v25 (unsigned short, unsigned int, unsigned short, unsigned int);
signed char (*v26) (unsigned short, unsigned int, unsigned short, unsigned int) = v25;
extern unsigned char v27 (signed short, signed char);
extern unsigned char (*v28) (signed short, signed char);
extern signed short v29 (signed char, signed short);
extern signed short (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v140 = 0;
unsigned char v139 = 7;
unsigned int v138 = 0U;

signed char v25 (unsigned short v141, unsigned int v142, unsigned short v143, unsigned int v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed int v147 = -3;
signed short v146 = 3;
signed char v145 = -3;
trace++;
switch (trace)
{
case 8: 
return v145;
case 10: 
{
signed char v148;
signed short v149;
signed short v150;
v148 = -2 - -3;
v149 = v146 - v146;
v150 = v29 (v148, v149);
history[history_index++] = (int)v150;
}
break;
case 12: 
return v145;
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned char v153 = 0;
unsigned char v152 = 6;
signed int v151 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
