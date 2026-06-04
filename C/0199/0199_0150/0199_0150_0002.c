#include <stdlib.h>
extern signed short v1 (signed int, unsigned char);
extern signed short (*v2) (signed int, unsigned char);
extern signed int v3 (signed short, signed char, signed short);
extern signed int (*v4) (signed short, signed char, signed short);
extern unsigned int v5 (signed int, signed char);
extern unsigned int (*v6) (signed int, signed char);
extern unsigned char v7 (unsigned short, unsigned char);
extern unsigned char (*v8) (unsigned short, unsigned char);
unsigned char v9 (unsigned int);
unsigned char (*v10) (unsigned int) = v9;
extern unsigned char v11 (unsigned int, signed short, signed int, signed int);
extern unsigned char (*v12) (unsigned int, signed short, signed int, signed int);
extern void v13 (unsigned short, signed char);
extern void (*v14) (unsigned short, signed char);
extern unsigned char v15 (unsigned int, unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, unsigned int, signed short);
void v17 (unsigned char, signed int, signed short);
void (*v18) (unsigned char, signed int, signed short) = v17;
extern unsigned short v19 (unsigned short);
extern unsigned short (*v20) (unsigned short);
unsigned int v21 (unsigned char, unsigned short);
unsigned int (*v22) (unsigned char, unsigned short) = v21;
extern unsigned short v23 (signed int, unsigned char, signed int, unsigned int);
extern unsigned short (*v24) (signed int, unsigned char, signed int, unsigned int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (signed short, signed char, signed int, signed int);
extern unsigned char (*v28) (signed short, signed char, signed int, signed int);
extern signed char v29 (signed char, unsigned short, unsigned short);
extern signed char (*v30) (signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v94 = 0;
signed char v93 = 3;
unsigned char v92 = 7;

unsigned int v21 (unsigned char v95, unsigned short v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = -4;
signed short v98 = 1;
signed char v97 = -2;
trace++;
switch (trace)
{
case 6: 
{
signed char v100;
unsigned short v101;
unsigned short v102;
signed char v103;
v100 = 3 - v97;
v101 = 1 + v96;
v102 = 2 + v96;
v103 = v29 (v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 8: 
{
signed char v104;
unsigned short v105;
unsigned short v106;
signed char v107;
v104 = 0 + -3;
v105 = v96 + v96;
v106 = v96 + v96;
v107 = v29 (v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 10: 
return 6U;
default: abort ();
}
}
}
}

void v17 (unsigned char v108, signed int v109, signed short v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = -2;
unsigned char v112 = 4;
unsigned short v111 = 4;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

unsigned char v9 (unsigned int v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = -4;
unsigned int v116 = 6U;
unsigned short v115 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
