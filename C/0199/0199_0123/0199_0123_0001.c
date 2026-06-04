#include <stdlib.h>
unsigned short v1 (unsigned char, unsigned char, unsigned int);
unsigned short (*v2) (unsigned char, unsigned char, unsigned int) = v1;
extern unsigned int v3 (signed int, signed short, unsigned short, unsigned char);
extern unsigned int (*v4) (signed int, signed short, unsigned short, unsigned char);
extern unsigned short v5 (unsigned short);
extern unsigned short (*v6) (unsigned short);
extern unsigned char v7 (unsigned short, signed char, unsigned char, signed char);
extern unsigned char (*v8) (unsigned short, signed char, unsigned char, signed char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (unsigned short, unsigned short);
extern unsigned short (*v12) (unsigned short, unsigned short);
extern unsigned char v13 (signed short);
extern unsigned char (*v14) (signed short);
extern signed short v15 (signed short, unsigned short, signed int);
extern signed short (*v16) (signed short, unsigned short, signed int);
extern unsigned char v19 (signed char, signed int, signed short);
extern unsigned char (*v20) (signed char, signed int, signed short);
extern unsigned int v21 (signed int, unsigned int, signed char, unsigned char);
extern unsigned int (*v22) (signed int, unsigned int, signed char, unsigned char);
extern signed char v23 (signed int, signed char, signed short);
extern signed char (*v24) (signed int, signed char, signed short);
void v25 (unsigned char, unsigned char);
void (*v26) (unsigned char, unsigned char) = v25;
extern unsigned short v27 (unsigned int, signed short);
extern unsigned short (*v28) (unsigned int, signed short);
signed char v29 (signed short, signed int, unsigned int, unsigned int);
signed char (*v30) (signed short, signed int, unsigned int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v76 = -2;
signed int v75 = 3;
unsigned short v74 = 0;

signed char v29 (signed short v77, signed int v78, unsigned int v79, unsigned int v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 2;
unsigned char v82 = 7;
signed short v81 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned char v84, unsigned char v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = 0;
unsigned int v87 = 1U;
signed int v86 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned char v89, unsigned char v90, unsigned int v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned char v94 = 2;
unsigned int v93 = 7U;
unsigned char v92 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v95;
signed short v96;
unsigned short v97;
v95 = v93 + v91;
v96 = -2 + -1;
v97 = v27 (v95, v96);
history[history_index++] = (int)v97;
}
break;
case 2: 
{
signed short v98;
unsigned char v99;
v98 = 3 + -1;
v99 = v13 (v98);
history[history_index++] = (int)v99;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
