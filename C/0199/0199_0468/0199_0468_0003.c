#include <stdlib.h>
extern void v1 (signed char, unsigned char);
extern void (*v2) (signed char, unsigned char);
unsigned char v3 (unsigned short);
unsigned char (*v4) (unsigned short) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned short v9 (unsigned char, unsigned int, signed short);
extern unsigned short (*v10) (unsigned char, unsigned int, signed short);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned int v13 (signed char, unsigned short);
extern unsigned int (*v14) (signed char, unsigned short);
extern signed char v15 (signed char, unsigned short, signed int);
extern signed char (*v16) (signed char, unsigned short, signed int);
extern unsigned int v17 (signed char, signed int);
extern unsigned int (*v18) (signed char, signed int);
extern unsigned short v19 (signed char, unsigned int, unsigned short, unsigned short);
extern unsigned short (*v20) (signed char, unsigned int, unsigned short, unsigned short);
signed short v21 (signed char, unsigned int, unsigned short);
signed short (*v22) (signed char, unsigned int, unsigned short) = v21;
extern unsigned char v23 (signed int, unsigned char);
extern unsigned char (*v24) (signed int, unsigned char);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
void v29 (signed char, unsigned char);
void (*v30) (signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v89 = 0;
signed short v88 = 0;
signed char v87 = -2;

void v29 (signed char v90, unsigned char v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 0;
unsigned short v93 = 7;
signed char v92 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v95;
v95 = v5 ();
history[history_index++] = (int)v95;
}
break;
case 7: 
return;
case 9: 
{
unsigned int v96;
v96 = v5 ();
history[history_index++] = (int)v96;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

signed short v21 (signed char v97, unsigned int v98, unsigned short v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 7U;
signed short v101 = 2;
signed short v100 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned short v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 2U;
unsigned int v105 = 1U;
signed short v104 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed char v107;
unsigned short v108;
signed int v109;
signed char v110;
v107 = 2 - 1;
v108 = 2 - 5;
v109 = 0 - -1;
v110 = v15 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 15: 
return 3;
default: abort ();
}
}
}
}
