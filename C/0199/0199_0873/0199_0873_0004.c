#include <stdlib.h>
extern signed int v1 (signed short, signed short);
extern signed int (*v2) (signed short, signed short);
extern unsigned char v3 (signed short, unsigned char, unsigned int);
extern unsigned char (*v4) (signed short, unsigned char, unsigned int);
signed int v5 (unsigned char, signed char);
signed int (*v6) (unsigned char, signed char) = v5;
extern signed char v7 (unsigned char, signed short, signed char, signed short);
extern signed char (*v8) (unsigned char, signed short, signed char, signed short);
extern unsigned short v9 (signed int, signed char, unsigned int, signed short);
extern unsigned short (*v10) (signed int, signed char, unsigned int, signed short);
extern unsigned int v11 (unsigned short, signed short, signed short);
extern unsigned int (*v12) (unsigned short, signed short, signed short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (unsigned int, signed int, signed char);
extern unsigned int (*v16) (unsigned int, signed int, signed char);
extern signed char v17 (unsigned short, signed int);
extern signed char (*v18) (unsigned short, signed int);
unsigned int v19 (unsigned int);
unsigned int (*v20) (unsigned int) = v19;
extern signed int v21 (unsigned char, unsigned char, signed int);
extern signed int (*v22) (unsigned char, unsigned char, signed int);
extern signed short v23 (signed short, unsigned char, signed char, unsigned short);
extern signed short (*v24) (signed short, unsigned char, signed char, unsigned short);
extern signed char v25 (unsigned short, signed short, signed int);
extern signed char (*v26) (unsigned short, signed short, signed int);
unsigned short v27 (signed short);
unsigned short (*v28) (signed short) = v27;
extern unsigned char v29 (signed int, signed short, signed short);
extern unsigned char (*v30) (signed int, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v136 = 0;
signed short v135 = -3;
unsigned char v134 = 4;

unsigned short v27 (signed short v137)
{
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = -4;
unsigned int v139 = 5U;
unsigned char v138 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v141)
{
history[history_index++] = (int)v141;
{
for (;;) {
unsigned short v144 = 3;
unsigned int v143 = 0U;
unsigned char v142 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned char v145, signed char v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed int v149 = 3;
unsigned short v148 = 4;
unsigned int v147 = 3U;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v150;
signed short v151;
signed char v152;
signed short v153;
signed char v154;
v150 = v145 + v145;
v151 = -1 + 2;
v152 = 2 - 2;
v153 = 3 - -1;
v154 = v7 (v150, v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 9: 
{
unsigned char v155;
v155 = v13 ();
history[history_index++] = (int)v155;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}
