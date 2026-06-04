#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned char, signed int);
extern unsigned short (*v2) (unsigned char, unsigned char, signed int);
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern signed short v5 (signed short, signed short, unsigned int, unsigned char);
extern signed short (*v6) (signed short, signed short, unsigned int, unsigned char);
extern signed char v7 (signed short, signed short, signed char, signed char);
extern signed char (*v8) (signed short, signed short, signed char, signed char);
signed short v9 (unsigned char, signed char);
signed short (*v10) (unsigned char, signed char) = v9;
signed short v11 (signed int, signed short);
signed short (*v12) (signed int, signed short) = v11;
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern unsigned short v15 (signed int);
extern unsigned short (*v16) (signed int);
extern void v17 (unsigned char, unsigned short, unsigned char);
extern void (*v18) (unsigned char, unsigned short, unsigned char);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned short v21 (unsigned short, signed short);
extern unsigned short (*v22) (unsigned short, signed short);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern signed int v25 (signed char, unsigned char, unsigned short);
extern signed int (*v26) (signed char, unsigned char, unsigned short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned int v29 (signed short, unsigned char);
extern unsigned int (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v141 = 1;
signed int v140 = 2;
signed char v139 = 1;

signed short v11 (signed int v142, signed short v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned short v146 = 1;
signed int v145 = -2;
unsigned int v144 = 3U;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v147;
unsigned short v148;
unsigned char v149;
v147 = 4 + 3;
v148 = 2 - 2;
v149 = 7 + 1;
v17 (v147, v148, v149);
}
break;
case 9: 
return -2;
case 11: 
return -1;
case 13: 
return 3;
default: abort ();
}
}
}
}

signed short v9 (unsigned char v150, signed char v151)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned int v154 = 6U;
signed short v153 = -3;
signed int v152 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
