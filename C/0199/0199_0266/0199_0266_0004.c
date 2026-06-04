#include <stdlib.h>
signed int v1 (unsigned char, signed short);
signed int (*v2) (unsigned char, signed short) = v1;
extern signed char v3 (unsigned short, signed int, unsigned int, signed char);
extern signed char (*v4) (unsigned short, signed int, unsigned int, signed char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed int v7 (unsigned short, unsigned short, unsigned char);
extern signed int (*v8) (unsigned short, unsigned short, unsigned char);
extern unsigned int v9 (unsigned int, signed int, signed int, signed int);
extern unsigned int (*v10) (unsigned int, signed int, signed int, signed int);
signed char v11 (signed int, unsigned char, unsigned int, unsigned char);
signed char (*v12) (signed int, unsigned char, unsigned int, unsigned char) = v11;
extern signed int v13 (signed int, unsigned int, unsigned int, unsigned short);
extern signed int (*v14) (signed int, unsigned int, unsigned int, unsigned short);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned char v17 (unsigned int, unsigned int, unsigned int, signed char);
extern unsigned char (*v18) (unsigned int, unsigned int, unsigned int, signed char);
extern void v19 (signed char, signed int, signed short);
extern void (*v20) (signed char, signed int, signed short);
extern unsigned short v21 (signed short, signed char, unsigned char);
extern unsigned short (*v22) (signed short, signed char, unsigned char);
signed short v23 (void);
signed short (*v24) (void) = v23;
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern signed int v27 (signed short, unsigned char, unsigned int);
extern signed int (*v28) (signed short, unsigned char, unsigned int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v122 = 2U;
unsigned int v121 = 7U;
signed int v120 = 1;

unsigned int v25 (void)
{
{
for (;;) {
unsigned char v125 = 0;
signed short v124 = -1;
unsigned char v123 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
signed short v128 = 3;
signed short v127 = -2;
unsigned char v126 = 2;
trace++;
switch (trace)
{
case 10: 
return v128;
default: abort ();
}
}
}
}

signed char v11 (signed int v129, unsigned char v130, unsigned int v131, unsigned char v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = -3;
unsigned int v134 = 3U;
unsigned int v133 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned char v136, signed short v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed int v140 = 0;
unsigned short v139 = 3;
unsigned char v138 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed short v141;
unsigned char v142;
unsigned int v143;
signed int v144;
v141 = -3 - v137;
v142 = v138 + 0;
v143 = 2U - 4U;
v144 = v27 (v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 2: 
{
signed char v145;
signed int v146;
signed short v147;
v145 = -1 + 1;
v146 = -1 - 0;
v147 = v137 + -3;
v19 (v145, v146, v147);
}
break;
case 4: 
return v140;
case 5: 
{
unsigned char v148;
v148 = v5 ();
history[history_index++] = (int)v148;
}
break;
case 13: 
return -2;
default: abort ();
}
}
}
}
