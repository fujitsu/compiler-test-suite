#include <stdlib.h>
void v1 (unsigned int, unsigned short, signed char);
void (*v2) (unsigned int, unsigned short, signed char) = v1;
extern unsigned int v3 (signed short, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int, unsigned int, unsigned int);
unsigned int v5 (signed int, unsigned short, signed int);
unsigned int (*v6) (signed int, unsigned short, signed int) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern signed char v15 (signed char, unsigned int);
extern signed char (*v16) (signed char, unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
void v23 (signed int, unsigned int, unsigned int);
void (*v24) (signed int, unsigned int, unsigned int) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned short v27 (signed short, signed short);
extern unsigned short (*v28) (signed short, signed short);
extern signed short v29 (unsigned char, unsigned int, unsigned int, signed short);
extern signed short (*v30) (unsigned char, unsigned int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v82 = 1;
unsigned char v81 = 7;
signed int v80 = -1;

void v23 (signed int v83, unsigned int v84, unsigned int v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 1;
unsigned short v87 = 1;
unsigned int v86 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed int v89, unsigned short v90, signed int v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 1;
signed short v93 = -2;
signed int v92 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned int v95, unsigned short v96, signed char v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 4;
signed short v99 = -3;
signed char v98 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v101;
v101 = v100 + 4;
v13 (v101);
}
break;
case 4: 
{
signed short v102;
unsigned int v103;
unsigned int v104;
unsigned int v105;
unsigned int v106;
v102 = v99 + v99;
v103 = v95 + v95;
v104 = v95 - v95;
v105 = 2U + 2U;
v106 = v3 (v102, v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
