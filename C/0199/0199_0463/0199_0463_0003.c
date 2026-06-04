#include <stdlib.h>
extern signed char v1 (signed char, signed char, unsigned int, unsigned char);
extern signed char (*v2) (signed char, signed char, unsigned int, unsigned char);
extern signed char v3 (unsigned char, signed short);
extern signed char (*v4) (unsigned char, signed short);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v11 (unsigned short, unsigned short, signed short);
extern void (*v12) (unsigned short, unsigned short, signed short);
void v15 (unsigned char);
void (*v16) (unsigned char) = v15;
extern unsigned int v17 (unsigned char, signed char);
extern unsigned int (*v18) (unsigned char, signed char);
signed char v19 (unsigned int);
signed char (*v20) (unsigned int) = v19;
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
unsigned short v23 (unsigned char);
unsigned short (*v24) (unsigned char) = v23;
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
signed char v27 (signed int, unsigned int);
signed char (*v28) (signed int, unsigned int) = v27;
extern signed short v29 (unsigned char, signed char, signed int);
extern signed short (*v30) (unsigned char, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v89 = 2;
signed char v88 = 2;
unsigned short v87 = 7;

signed char v27 (signed int v90, unsigned int v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 0U;
signed short v93 = 1;
unsigned char v92 = 4;
trace++;
switch (trace)
{
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned short v23 (unsigned char v95)
{
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 1U;
unsigned char v97 = 6;
unsigned char v96 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned int v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 5U;
signed int v101 = -1;
signed short v100 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned char v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 5U;
signed int v105 = 2;
signed short v104 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v107;
unsigned short v108;
v107 = 2 - 2;
v108 = v21 (v107);
history[history_index++] = (int)v108;
}
break;
case 3: 
return;
case 9: 
{
unsigned short v109;
unsigned short v110;
v109 = 2 + 5;
v110 = v21 (v109);
history[history_index++] = (int)v110;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
