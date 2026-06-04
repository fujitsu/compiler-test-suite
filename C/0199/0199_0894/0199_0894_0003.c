#include <stdlib.h>
void v1 (signed int, signed int);
void (*v2) (signed int, signed int) = v1;
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern unsigned char v5 (signed short, unsigned int, signed short, unsigned short);
extern unsigned char (*v6) (signed short, unsigned int, signed short, unsigned short);
extern unsigned short v7 (unsigned short, unsigned int, signed short, signed int);
extern unsigned short (*v8) (unsigned short, unsigned int, signed short, signed int);
extern unsigned int v9 (signed int, unsigned char);
extern unsigned int (*v10) (signed int, unsigned char);
extern unsigned int v11 (signed char, signed char, unsigned short, signed short);
extern unsigned int (*v12) (signed char, signed char, unsigned short, signed short);
unsigned char v13 (unsigned int, unsigned char, signed int);
unsigned char (*v14) (unsigned int, unsigned char, signed int) = v13;
extern unsigned char v15 (signed char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed char, unsigned int, unsigned short);
extern signed int v17 (unsigned int, unsigned int, unsigned char, signed short);
extern signed int (*v18) (unsigned int, unsigned int, unsigned char, signed short);
extern unsigned int v19 (unsigned short, unsigned short, unsigned short, unsigned short);
extern unsigned int (*v20) (unsigned short, unsigned short, unsigned short, unsigned short);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
signed short v23 (unsigned int, signed int);
signed short (*v24) (unsigned int, signed int) = v23;
extern unsigned char v25 (unsigned char, signed char, unsigned int, signed short);
extern unsigned char (*v26) (unsigned char, signed char, unsigned int, signed short);
extern unsigned int v27 (unsigned int, unsigned int);
extern unsigned int (*v28) (unsigned int, unsigned int);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v99 = 4U;
signed short v98 = 3;
unsigned int v97 = 0U;

signed short v23 (unsigned int v100, signed int v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 5U;
unsigned char v103 = 2;
unsigned short v102 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v105, unsigned char v106, signed int v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 3U;
unsigned int v109 = 3U;
unsigned int v108 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed int v111, signed int v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 3;
signed short v114 = 2;
signed int v113 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v116;
signed int v117;
v116 = 5 - 5;
v117 = v3 (v116);
history[history_index++] = (int)v117;
}
break;
case 2: 
{
signed char v118;
signed char v119;
unsigned short v120;
signed short v121;
unsigned int v122;
v118 = 2 + 3;
v119 = -2 + -2;
v120 = 3 + 6;
v121 = v114 + v114;
v122 = v11 (v118, v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
