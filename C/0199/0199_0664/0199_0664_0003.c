#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
void v3 (signed char, signed char, unsigned int);
void (*v4) (signed char, signed char, unsigned int) = v3;
extern unsigned int v5 (unsigned int, signed short);
extern unsigned int (*v6) (unsigned int, signed short);
extern signed int v7 (unsigned short, unsigned char);
extern signed int (*v8) (unsigned short, unsigned char);
extern unsigned short v9 (signed int, signed char, signed int);
extern unsigned short (*v10) (signed int, signed char, signed int);
extern signed char v11 (signed short, signed int, signed char, unsigned int);
extern signed char (*v12) (signed short, signed int, signed char, unsigned int);
extern signed char v13 (unsigned int, signed int);
extern signed char (*v14) (unsigned int, signed int);
extern unsigned char v15 (signed char, unsigned char);
extern unsigned char (*v16) (signed char, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v19 (void);
extern void (*v20) (void);
signed char v21 (unsigned short);
signed char (*v22) (unsigned short) = v21;
unsigned short v25 (unsigned char, unsigned short, unsigned short, unsigned int);
unsigned short (*v26) (unsigned char, unsigned short, unsigned short, unsigned int) = v25;
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern signed char v29 (signed short, signed int, unsigned char);
extern signed char (*v30) (signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v89 = 2;
signed short v88 = -3;
signed char v87 = 1;

unsigned short v25 (unsigned char v90, unsigned short v91, unsigned short v92, unsigned int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 6U;
signed int v95 = 0;
signed char v94 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned short v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 2;
signed char v99 = -4;
signed int v98 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed char v101, signed char v102, unsigned int v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = 3;
signed int v105 = -4;
unsigned short v104 = 5;
trace++;
switch (trace)
{
case 1: 
{
signed short v107;
signed char v108;
v107 = -1 - -2;
v108 = v27 (v107);
history[history_index++] = (int)v108;
}
break;
case 3: 
return;
case 8: 
return;
default: abort ();
}
}
}
}
