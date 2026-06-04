#include <stdlib.h>
unsigned char v1 (unsigned short, unsigned char);
unsigned char (*v2) (unsigned short, unsigned char) = v1;
extern signed short v3 (signed int, signed char, signed int);
extern signed short (*v4) (signed int, signed char, signed int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v7 (unsigned char, signed char);
extern signed int (*v8) (unsigned char, signed char);
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
extern unsigned short v11 (signed int, signed char, signed short, signed short);
extern unsigned short (*v12) (signed int, signed char, signed short, signed short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern signed short v19 (unsigned int, signed int);
extern signed short (*v20) (unsigned int, signed int);
extern unsigned int v21 (signed char, signed char, signed char, signed short);
extern unsigned int (*v22) (signed char, signed char, signed char, signed short);
extern unsigned int v23 (unsigned short, unsigned int, signed int, unsigned short);
extern unsigned int (*v24) (unsigned short, unsigned int, signed int, unsigned short);
void v25 (signed int, unsigned int);
void (*v26) (signed int, unsigned int) = v25;
unsigned char v27 (signed char, signed char, unsigned int, signed int);
unsigned char (*v28) (signed char, signed char, unsigned int, signed int) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed char v97 = 3;
signed int v96 = -2;
unsigned short v95 = 1;

unsigned char v27 (signed char v98, signed char v99, unsigned int v100, signed int v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 4U;
unsigned int v103 = 2U;
unsigned char v102 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (signed int v105, unsigned int v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed int v109 = 2;
unsigned char v108 = 7;
unsigned int v107 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v110, unsigned char v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 2U;
signed int v113 = 2;
signed short v112 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v115;
signed char v116;
signed int v117;
signed short v118;
v115 = 1 - v113;
v116 = 2 - 3;
v117 = 2 - v113;
v118 = v3 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 2: 
{
signed int v119;
signed char v120;
signed short v121;
signed short v122;
unsigned short v123;
v119 = 0 + v113;
v120 = -2 + -2;
v121 = v112 - v112;
v122 = -3 - 1;
v123 = v11 (v119, v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 10: 
{
unsigned char v124;
v124 = v15 ();
history[history_index++] = (int)v124;
}
break;
case 12: 
return 6;
case 16: 
return v111;
default: abort ();
}
}
}
}
