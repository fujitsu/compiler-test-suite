#include <stdlib.h>
unsigned char v1 (unsigned int, signed char);
unsigned char (*v2) (unsigned int, signed char) = v1;
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
extern signed int v5 (unsigned char);
extern signed int (*v6) (unsigned char);
void v7 (signed char, signed char, unsigned char, unsigned char);
void (*v8) (signed char, signed char, unsigned char, unsigned char) = v7;
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
extern unsigned short v13 (signed int, unsigned short);
extern unsigned short (*v14) (signed int, unsigned short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
signed short v17 (signed short);
signed short (*v18) (signed short) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern void v21 (signed char);
extern void (*v22) (signed char);
extern void v23 (signed int);
extern void (*v24) (signed int);
extern signed int v25 (unsigned short, signed char, unsigned short, signed short);
extern signed int (*v26) (unsigned short, signed char, unsigned short, signed short);
extern void v27 (unsigned short, signed int, unsigned short);
extern void (*v28) (unsigned short, signed int, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v79 = 2;
signed int v78 = 2;
unsigned short v77 = 5;

signed short v17 (signed short v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = -4;
signed short v82 = -2;
signed int v81 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed char v84, signed char v85, unsigned char v86, unsigned char v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = 2;
unsigned int v89 = 7U;
unsigned short v88 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v91, signed char v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = -2;
signed short v94 = 0;
unsigned short v93 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v96;
signed short v97;
unsigned int v98;
v96 = 0 + v94;
v97 = v94 - v94;
v98 = v11 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 14: 
return 4;
default: abort ();
}
}
}
}
