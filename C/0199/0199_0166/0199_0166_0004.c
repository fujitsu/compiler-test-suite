#include <stdlib.h>
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern unsigned char v5 (signed short, signed int, signed short);
extern unsigned char (*v6) (signed short, signed int, signed short);
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
unsigned char v9 (unsigned int, unsigned char, unsigned char);
unsigned char (*v10) (unsigned int, unsigned char, unsigned char) = v9;
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern unsigned short v13 (signed short, unsigned char, signed char);
extern unsigned short (*v14) (signed short, unsigned char, signed char);
extern signed short v15 (signed int);
extern signed short (*v16) (signed int);
signed short v17 (unsigned char);
signed short (*v18) (unsigned char) = v17;
extern void v19 (signed char, unsigned char, unsigned char, signed short);
extern void (*v20) (signed char, unsigned char, unsigned char, signed short);
extern void v21 (signed int, signed int);
extern void (*v22) (signed int, signed int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
unsigned char v27 (signed short, signed int, signed int, signed short);
unsigned char (*v28) (signed short, signed int, signed int, signed short) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v117 = -3;
unsigned short v116 = 5;
signed short v115 = 3;

unsigned char v27 (signed short v118, signed int v119, signed int v120, signed short v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed short v124 = 3;
signed char v123 = 1;
signed int v122 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned char v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed char v128 = 0;
unsigned char v127 = 7;
unsigned int v126 = 5U;
trace++;
switch (trace)
{
case 5: 
return -4;
case 7: 
return 2;
case 9: 
return 2;
case 11: 
return -3;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v129, unsigned char v130, unsigned char v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 7;
signed int v133 = -1;
signed int v132 = 3;
trace++;
switch (trace)
{
case 3: 
{
signed int v135;
signed short v136;
v135 = v133 - v133;
v136 = v15 (v135);
history[history_index++] = (int)v136;
}
break;
case 13: 
return v130;
default: abort ();
}
}
}
}
