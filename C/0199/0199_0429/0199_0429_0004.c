#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned short);
extern unsigned short (*v2) (unsigned char, unsigned short);
extern unsigned short v3 (signed short, signed int, unsigned char);
extern unsigned short (*v4) (signed short, signed int, unsigned char);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern unsigned char v9 (signed int, signed short, signed short);
extern unsigned char (*v10) (signed int, signed short, signed short);
extern signed short v11 (signed char, signed short, signed int, signed int);
extern signed short (*v12) (signed char, signed short, signed int, signed int);
extern void v13 (unsigned short, signed int, unsigned char, unsigned int);
extern void (*v14) (unsigned short, signed int, unsigned char, unsigned int);
extern signed short v15 (signed int, unsigned int, unsigned int, signed short);
extern signed short (*v16) (signed int, unsigned int, unsigned int, signed short);
unsigned short v17 (unsigned short);
unsigned short (*v18) (unsigned short) = v17;
signed char v19 (signed char, unsigned int, unsigned int, signed int);
signed char (*v20) (signed char, unsigned int, unsigned int, signed int) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed char v23 (unsigned int, signed short);
extern signed char (*v24) (unsigned int, signed short);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v138 = 1;
signed int v137 = -1;
signed char v136 = 3;

signed char v19 (signed char v139, unsigned int v140, unsigned int v141, signed int v142)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 2U;
unsigned char v144 = 1;
unsigned short v143 = 0;
trace++;
switch (trace)
{
case 3: 
return 3;
default: abort ();
}
}
}
}

unsigned short v17 (unsigned short v146)
{
history[history_index++] = (int)v146;
{
for (;;) {
signed int v149 = 3;
signed short v148 = 0;
signed char v147 = 3;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v150;
v150 = v21 ();
history[history_index++] = (int)v150;
}
break;
case 13: 
return v146;
default: abort ();
}
}
}
}
