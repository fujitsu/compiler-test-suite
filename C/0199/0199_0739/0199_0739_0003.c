#include <stdlib.h>
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
unsigned char v5 (signed short);
unsigned char (*v6) (signed short) = v5;
signed int v7 (signed char, signed int);
signed int (*v8) (signed char, signed int) = v7;
extern unsigned char v9 (unsigned int, signed int, signed int);
extern unsigned char (*v10) (unsigned int, signed int, signed int);
extern signed short v11 (unsigned char, signed short, signed char);
extern signed short (*v12) (unsigned char, signed short, signed char);
extern signed short v13 (signed short, unsigned short, signed char);
extern signed short (*v14) (signed short, unsigned short, signed char);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern void v17 (unsigned int, unsigned short, unsigned int);
extern void (*v18) (unsigned int, unsigned short, unsigned int);
extern signed char v19 (signed int, signed short, signed short, signed int);
extern signed char (*v20) (signed int, signed short, signed short, signed int);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v96 = 1U;
unsigned short v95 = 1;
unsigned int v94 = 6U;

signed int v15 (void)
{
{
for (;;) {
unsigned short v99 = 4;
unsigned int v98 = 2U;
signed int v97 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed char v100, signed int v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed short v104 = 2;
unsigned short v103 = 5;
signed short v102 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v105;
signed char v106;
v105 = v102 + -2;
v106 = v27 (v105);
history[history_index++] = (int)v106;
}
break;
case 3: 
{
unsigned char v107;
signed short v108;
signed char v109;
signed short v110;
v107 = 3 + 6;
v108 = v104 - v104;
v109 = 2 + v100;
v110 = v11 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

unsigned char v5 (signed short v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 4;
signed short v113 = 3;
signed int v112 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
