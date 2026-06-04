#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
void v5 (unsigned int, unsigned char);
void (*v6) (unsigned int, unsigned char) = v5;
signed short v7 (unsigned short);
signed short (*v8) (unsigned short) = v7;
extern void v9 (signed int, unsigned char);
extern void (*v10) (signed int, unsigned char);
extern unsigned int v11 (unsigned int, signed char);
extern unsigned int (*v12) (unsigned int, signed char);
void v13 (unsigned short, unsigned int);
void (*v14) (unsigned short, unsigned int) = v13;
extern unsigned short v15 (unsigned int, signed char, unsigned int, unsigned short);
extern unsigned short (*v16) (unsigned int, signed char, unsigned int, unsigned short);
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern signed char v21 (unsigned int, signed char, signed char, unsigned char);
extern signed char (*v22) (unsigned int, signed char, signed char, unsigned char);
extern unsigned char v23 (signed short, unsigned char, unsigned int, signed short);
extern unsigned char (*v24) (signed short, unsigned char, unsigned int, signed short);
extern signed short v25 (unsigned short);
extern signed short (*v26) (unsigned short);
extern unsigned int v27 (signed short, unsigned short);
extern unsigned int (*v28) (signed short, unsigned short);
extern signed int v29 (unsigned int, signed short, signed short, unsigned int);
extern signed int (*v30) (unsigned int, signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v97 = 6;
unsigned int v96 = 4U;
unsigned char v95 = 5;

void v13 (unsigned short v98, unsigned int v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = -3;
signed int v101 = 0;
signed char v100 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = 2;
signed int v105 = -4;
unsigned int v104 = 6U;
trace++;
switch (trace)
{
case 7: 
{
signed int v107;
unsigned char v108;
v107 = 3 - 1;
v108 = 7 - 1;
v9 (v107, v108);
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}

void v5 (unsigned int v109, unsigned char v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 0;
signed short v112 = -1;
signed char v111 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
