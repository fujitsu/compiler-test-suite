#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern signed char v5 (signed char, unsigned int);
extern signed char (*v6) (signed char, unsigned int);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern unsigned int v9 (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned int (*v10) (signed short, unsigned char, unsigned char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed char v13 (signed short, signed int);
extern signed char (*v14) (signed short, signed int);
void v15 (unsigned char, signed int, signed int, signed char);
void (*v16) (unsigned char, signed int, signed int, signed char) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
void v19 (unsigned char);
void (*v20) (unsigned char) = v19;
extern unsigned char v21 (signed int, signed char);
extern unsigned char (*v22) (signed int, signed char);
extern void v23 (signed short);
extern void (*v24) (signed short);
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
unsigned int v29 (signed int, unsigned int, signed short, unsigned char);
unsigned int (*v30) (signed int, unsigned int, signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v87 = 0;
signed int v86 = 3;
signed int v85 = -1;

unsigned int v29 (signed int v88, unsigned int v89, signed short v90, unsigned char v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 7U;
unsigned int v93 = 4U;
unsigned int v92 = 4U;
trace++;
switch (trace)
{
case 4: 
return v92;
default: abort ();
}
}
}
}

void v19 (unsigned char v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = -4;
signed char v97 = -1;
signed char v96 = -4;
trace++;
switch (trace)
{
case 2: 
{
signed short v99;
signed int v100;
signed char v101;
v99 = 3 - 3;
v100 = 3 - -3;
v101 = v13 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

void v15 (unsigned char v102, signed int v103, signed int v104, signed char v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 7;
signed short v107 = -1;
signed char v106 = 2;
trace++;
switch (trace)
{
case 8: 
{
signed char v109;
unsigned short v110;
v109 = 1 + v105;
v110 = v25 (v109);
history[history_index++] = (int)v110;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
