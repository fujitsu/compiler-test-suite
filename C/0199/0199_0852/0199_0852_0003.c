#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
unsigned char v3 (signed short);
unsigned char (*v4) (signed short) = v3;
extern signed short v7 (unsigned int, signed char, signed int);
extern signed short (*v8) (unsigned int, signed char, signed int);
extern signed char v13 (signed int, signed short);
extern signed char (*v14) (signed int, signed short);
extern unsigned int v15 (unsigned int, unsigned char);
extern unsigned int (*v16) (unsigned int, unsigned char);
signed char v17 (unsigned short, unsigned int, unsigned char);
signed char (*v18) (unsigned short, unsigned int, unsigned char) = v17;
extern signed char v19 (signed char, signed char);
extern signed char (*v20) (signed char, signed char);
extern void v21 (unsigned char, signed int);
extern void (*v22) (unsigned char, signed int);
extern unsigned char v23 (unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, signed int);
signed char v25 (unsigned int, signed char);
signed char (*v26) (unsigned int, signed char) = v25;
extern void v29 (unsigned int, signed int);
extern void (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v93 = 1;
signed short v92 = 0;
unsigned char v91 = 3;

signed char v25 (unsigned int v94, signed char v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed short v98 = 2;
signed char v97 = 2;
signed int v96 = -3;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}

signed char v17 (unsigned short v99, unsigned int v100, unsigned char v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 0;
unsigned int v103 = 4U;
signed char v102 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 1;
signed short v107 = 2;
signed char v106 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
