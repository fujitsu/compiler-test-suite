#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
signed short v3 (unsigned char);
signed short (*v4) (unsigned char) = v3;
extern signed char v5 (signed char, unsigned int, signed char);
extern signed char (*v6) (signed char, unsigned int, signed char);
extern signed short v7 (unsigned int, signed short, unsigned short);
extern signed short (*v8) (unsigned int, signed short, unsigned short);
extern signed int v9 (signed int, signed short, unsigned int);
extern signed int (*v10) (signed int, signed short, unsigned int);
extern signed char v11 (signed char, unsigned short, signed int, signed char);
extern signed char (*v12) (signed char, unsigned short, signed int, signed char);
extern unsigned char v13 (signed char, signed char, signed char, signed char);
extern unsigned char (*v14) (signed char, signed char, signed char, signed char);
signed short v15 (void);
signed short (*v16) (void) = v15;
signed short v17 (unsigned short, signed char, unsigned int, unsigned int);
signed short (*v18) (unsigned short, signed char, unsigned int, unsigned int) = v17;
extern signed int v19 (signed short, unsigned int, signed char);
extern signed int (*v20) (signed short, unsigned int, signed char);
extern unsigned char v21 (unsigned int, unsigned short, unsigned short, unsigned short);
extern unsigned char (*v22) (unsigned int, unsigned short, unsigned short, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned int);
extern unsigned char (*v26) (unsigned int);
extern unsigned short v27 (signed short, unsigned int);
extern unsigned short (*v28) (signed short, unsigned int);
extern signed short v29 (signed int);
extern signed short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v137 = 1;
unsigned short v136 = 7;
signed int v135 = 0;

signed short v17 (unsigned short v138, signed char v139, unsigned int v140, unsigned int v141)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned char v144 = 6;
unsigned short v143 = 7;
signed char v142 = 3;
trace++;
switch (trace)
{
case 6: 
return 0;
case 8: 
return -1;
case 10: 
return 3;
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned int v147 = 5U;
signed int v146 = -3;
unsigned short v145 = 7;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v148;
v148 = v23 ();
history[history_index++] = (int)v148;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

signed short v3 (unsigned char v149)
{
history[history_index++] = (int)v149;
{
for (;;) {
unsigned int v152 = 2U;
signed short v151 = 1;
signed int v150 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
