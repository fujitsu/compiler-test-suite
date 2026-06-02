#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
extern signed short v3 (signed char, signed int);
extern signed short (*v4) (signed char, signed int);
extern unsigned short v7 (signed int);
extern unsigned short (*v8) (signed int);
extern void v9 (void);
extern void (*v10) (void);
extern void v13 (unsigned int, signed int);
extern void (*v14) (unsigned int, signed int);
unsigned char v15 (signed short, unsigned int);
unsigned char (*v16) (signed short, unsigned int) = v15;
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern unsigned int v19 (unsigned int, unsigned int, signed char);
extern unsigned int (*v20) (unsigned int, unsigned int, signed char);
extern unsigned short v21 (signed char, unsigned char, signed short, signed char);
extern unsigned short (*v22) (signed char, unsigned char, signed short, signed char);
extern unsigned char v23 (signed char);
extern unsigned char (*v24) (signed char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
void v27 (signed char, signed short, signed short, signed short);
void (*v28) (signed char, signed short, signed short, signed short) = v27;
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v101 = 4;
signed char v100 = 3;
unsigned int v99 = 4U;

void v27 (signed char v102, signed short v103, signed short v104, signed short v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned short v108 = 3;
signed short v107 = -2;
signed char v106 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v109;
unsigned char v110;
signed short v111;
signed char v112;
unsigned short v113;
v109 = -3 - v102;
v110 = 5 + 0;
v111 = v104 + v104;
v112 = v106 - v106;
v113 = v21 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 3: 
return;
default: abort ();
}
}
}
}

unsigned char v15 (signed short v114, unsigned int v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 6;
unsigned short v117 = 5;
signed int v116 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
