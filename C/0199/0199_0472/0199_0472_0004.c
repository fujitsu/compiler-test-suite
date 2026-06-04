#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (unsigned char, signed int, signed short, unsigned short);
extern unsigned char (*v6) (unsigned char, signed int, signed short, unsigned short);
extern unsigned short v9 (signed short, signed char, signed char, unsigned char);
extern unsigned short (*v10) (signed short, signed char, signed char, unsigned char);
extern signed int v11 (unsigned int);
extern signed int (*v12) (unsigned int);
unsigned char v13 (unsigned short, signed char, unsigned int, unsigned char);
unsigned char (*v14) (unsigned short, signed char, unsigned int, unsigned char) = v13;
extern unsigned short v15 (signed short, unsigned short);
extern unsigned short (*v16) (signed short, unsigned short);
extern signed short v17 (signed int, signed char, unsigned char, unsigned int);
extern signed short (*v18) (signed int, signed char, unsigned char, unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed short, signed short, signed char);
extern signed int (*v22) (signed short, signed short, signed char);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
unsigned short v25 (unsigned char, signed char);
unsigned short (*v26) (unsigned char, signed char) = v25;
extern unsigned char v27 (signed short, signed short, unsigned short);
extern unsigned char (*v28) (signed short, signed short, unsigned short);
extern unsigned short v29 (signed short, unsigned short);
extern unsigned short (*v30) (signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v141 = 4U;
signed char v140 = 1;
signed short v139 = -2;

unsigned short v25 (unsigned char v142, signed char v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = -4;
signed int v145 = -4;
signed char v144 = -4;
trace++;
switch (trace)
{
case 9: 
return 2;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v147, signed char v148, unsigned int v149, unsigned char v150)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned int v153 = 7U;
unsigned int v152 = 5U;
unsigned short v151 = 6;
trace++;
switch (trace)
{
case 7: 
{
signed short v154;
unsigned short v155;
unsigned short v156;
v154 = -4 - -3;
v155 = 1 + v147;
v156 = v15 (v154, v155);
history[history_index++] = (int)v156;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}
