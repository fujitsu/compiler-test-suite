#include <stdlib.h>
unsigned int v1 (signed int, signed char);
unsigned int (*v2) (signed int, signed char) = v1;
extern signed short v3 (signed short, unsigned char);
extern signed short (*v4) (signed short, unsigned char);
extern unsigned char v5 (unsigned short, unsigned char);
extern unsigned char (*v6) (unsigned short, unsigned char);
extern void v7 (unsigned short, unsigned short, signed char, unsigned char);
extern void (*v8) (unsigned short, unsigned short, signed char, unsigned char);
extern void v9 (signed char, signed short, unsigned char);
extern void (*v10) (signed char, signed short, unsigned char);
void v11 (signed short, signed char);
void (*v12) (signed short, signed char) = v11;
extern unsigned char v13 (signed char, signed int);
extern unsigned char (*v14) (signed char, signed int);
extern signed int v15 (unsigned int, signed int, signed char, signed int);
extern signed int (*v16) (unsigned int, signed int, signed char, signed int);
unsigned short v17 (unsigned int, signed short, signed char, signed char);
unsigned short (*v18) (unsigned int, signed short, signed char, signed char) = v17;
extern signed short v19 (signed int, unsigned short, unsigned char, signed int);
extern signed short (*v20) (signed int, unsigned short, unsigned char, signed int);
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern unsigned char v23 (signed short, unsigned int, signed short, signed char);
extern unsigned char (*v24) (signed short, unsigned int, signed short, signed char);
extern unsigned int v25 (unsigned int, unsigned char, signed short, unsigned short);
extern unsigned int (*v26) (unsigned int, unsigned char, signed short, unsigned short);
extern unsigned int v29 (unsigned int, unsigned char, unsigned int, unsigned short);
extern unsigned int (*v30) (unsigned int, unsigned char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v96 = 6;
signed short v95 = -3;
unsigned short v94 = 4;

unsigned short v17 (unsigned int v97, signed short v98, signed char v99, signed char v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -3;
signed int v102 = -2;
signed char v101 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed short v104, signed char v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -2;
unsigned int v107 = 6U;
unsigned int v106 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed int v109, signed char v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = -1;
unsigned short v112 = 2;
unsigned char v111 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v114;
signed int v115;
signed char v116;
signed int v117;
signed int v118;
v114 = 7U - 2U;
v115 = -2 - 0;
v116 = v110 - v110;
v117 = v109 + v109;
v118 = v15 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 16: 
return 6U;
default: abort ();
}
}
}
}
