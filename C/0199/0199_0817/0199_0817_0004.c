#include <stdlib.h>
signed short v1 (signed short, unsigned int, signed int);
signed short (*v2) (signed short, unsigned int, signed int) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (unsigned short, unsigned char, signed int);
extern signed short (*v10) (unsigned short, unsigned char, signed int);
extern signed int v11 (unsigned short, signed short, signed char);
extern signed int (*v12) (unsigned short, signed short, signed char);
extern signed char v13 (signed char, signed char, signed short, unsigned char);
extern signed char (*v14) (signed char, signed char, signed short, unsigned char);
extern unsigned int v15 (unsigned short, signed int, unsigned char);
extern unsigned int (*v16) (unsigned short, signed int, unsigned char);
extern unsigned int v17 (unsigned short, signed char, unsigned short);
extern unsigned int (*v18) (unsigned short, signed char, unsigned short);
extern unsigned int v19 (signed short, unsigned short);
extern unsigned int (*v20) (signed short, unsigned short);
extern unsigned int v23 (signed int, unsigned int, unsigned int, signed short);
extern unsigned int (*v24) (signed int, unsigned int, unsigned int, signed short);
unsigned short v25 (signed short);
unsigned short (*v26) (signed short) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v139 = -1;
signed int v138 = 2;
signed int v137 = 3;

unsigned short v25 (signed short v140)
{
history[history_index++] = (int)v140;
{
for (;;) {
signed short v143 = -4;
unsigned char v142 = 7;
unsigned char v141 = 3;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v144;
signed short v145;
signed char v146;
signed int v147;
v144 = 4 - 0;
v145 = v143 - v143;
v146 = 2 + -2;
v147 = v11 (v144, v145, v146);
history[history_index++] = (int)v147;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}

signed short v1 (signed short v148, unsigned int v149, signed int v150)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
signed short v153 = -1;
unsigned short v152 = 4;
unsigned int v151 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed short v154;
v154 = v7 ();
history[history_index++] = (int)v154;
}
break;
case 16: 
return v153;
default: abort ();
}
}
}
}
