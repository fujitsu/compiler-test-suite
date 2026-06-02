#include <stdlib.h>
signed short v1 (unsigned char, signed int);
signed short (*v2) (unsigned char, signed int) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned int v5 (signed short, signed short, unsigned int, unsigned int);
extern unsigned int (*v6) (signed short, signed short, unsigned int, unsigned int);
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
extern unsigned int v9 (signed int);
extern unsigned int (*v10) (signed int);
extern signed int v11 (signed short, signed int);
extern signed int (*v12) (signed short, signed int);
extern signed int v13 (unsigned short, unsigned short);
extern signed int (*v14) (unsigned short, unsigned short);
unsigned short v15 (unsigned int, unsigned char, unsigned int, unsigned int);
unsigned short (*v16) (unsigned int, unsigned char, unsigned int, unsigned int) = v15;
extern unsigned char v17 (unsigned char, signed short);
extern unsigned char (*v18) (unsigned char, signed short);
extern void v19 (unsigned short, signed int, unsigned short, unsigned int);
extern void (*v20) (unsigned short, signed int, unsigned short, unsigned int);
extern unsigned int v21 (signed char, unsigned short, signed short);
extern unsigned int (*v22) (signed char, unsigned short, signed short);
extern unsigned short v23 (signed int, unsigned int);
extern unsigned short (*v24) (signed int, unsigned int);
extern unsigned short v25 (signed short, signed char, signed short, unsigned int);
extern unsigned short (*v26) (signed short, signed char, signed short, unsigned int);
unsigned char v27 (signed int, unsigned char);
unsigned char (*v28) (signed int, unsigned char) = v27;
extern signed int v29 (signed short);
extern signed int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v127 = -2;
unsigned int v126 = 7U;
unsigned int v125 = 1U;

unsigned char v27 (signed int v128, unsigned char v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 7U;
signed short v131 = -4;
unsigned char v130 = 0;
trace++;
switch (trace)
{
case 2: 
return v129;
case 4: 
return 7;
case 6: 
return v129;
case 8: 
return v129;
case 10: 
return v130;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v133, unsigned char v134, unsigned int v135, unsigned int v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned int v139 = 7U;
unsigned char v138 = 2;
unsigned int v137 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned char v140, signed int v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed char v144 = 3;
signed short v143 = 3;
unsigned char v142 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v145;
signed short v146;
unsigned int v147;
unsigned int v148;
unsigned int v149;
v145 = v143 - -2;
v146 = v143 + v143;
v147 = 1U + 2U;
v148 = 6U + 6U;
v149 = v5 (v145, v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 12: 
return v143;
default: abort ();
}
}
}
}
