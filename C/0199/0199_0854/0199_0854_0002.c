#include <stdlib.h>
extern void v1 (signed short, unsigned char);
extern void (*v2) (signed short, unsigned char);
extern unsigned short v3 (signed short);
extern unsigned short (*v4) (signed short);
signed char v5 (signed char);
signed char (*v6) (signed char) = v5;
extern void v7 (unsigned short, signed char, unsigned int);
extern void (*v8) (unsigned short, signed char, unsigned int);
extern unsigned short v9 (unsigned short, unsigned char, signed int, unsigned char);
extern unsigned short (*v10) (unsigned short, unsigned char, signed int, unsigned char);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
signed char v17 (signed char);
signed char (*v18) (signed char) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (void);
extern void (*v22) (void);
extern signed short v23 (unsigned short, unsigned int);
extern signed short (*v24) (unsigned short, unsigned int);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern signed int v27 (signed short, signed int, signed int);
extern signed int (*v28) (signed short, signed int, signed int);
unsigned int v29 (signed short, signed int, unsigned int);
unsigned int (*v30) (signed short, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v88 = 0;
unsigned char v87 = 4;
signed short v86 = 2;

unsigned int v29 (signed short v89, signed int v90, unsigned int v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -1;
unsigned char v93 = 0;
unsigned int v92 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed char v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
signed char v98 = -2;
unsigned short v97 = 2;
unsigned short v96 = 4;
trace++;
switch (trace)
{
case 10: 
return v95;
default: abort ();
}
}
}
}

signed char v5 (signed char v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 7;
unsigned char v101 = 4;
unsigned int v100 = 7U;
trace++;
switch (trace)
{
case 1: 
{
signed int v103;
signed char v104;
v103 = 0 + -1;
v104 = v25 (v103);
history[history_index++] = (int)v104;
}
break;
case 3: 
{
signed int v105;
signed char v106;
v105 = 3 + 0;
v106 = v25 (v105);
history[history_index++] = (int)v106;
}
break;
case 5: 
{
unsigned short v107;
signed char v108;
unsigned int v109;
v107 = 2 - 3;
v108 = v99 - v99;
v109 = 5U + 4U;
v7 (v107, v108, v109);
}
break;
case 13: 
return v99;
default: abort ();
}
}
}
}
