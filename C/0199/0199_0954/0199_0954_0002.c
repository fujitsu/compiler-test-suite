#include <stdlib.h>
extern signed int v1 (unsigned char, signed short);
extern signed int (*v2) (unsigned char, signed short);
extern unsigned int v3 (signed int, unsigned short, signed char, unsigned char);
extern unsigned int (*v4) (signed int, unsigned short, signed char, unsigned char);
void v5 (signed short, signed short, unsigned char);
void (*v6) (signed short, signed short, unsigned char) = v5;
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
signed int v9 (unsigned int, unsigned char, unsigned char, unsigned short);
signed int (*v10) (unsigned int, unsigned char, unsigned char, unsigned short) = v9;
extern unsigned short v11 (unsigned char, unsigned char, signed int);
extern unsigned short (*v12) (unsigned char, unsigned char, signed int);
extern void v13 (void);
extern void (*v14) (void);
unsigned short v15 (signed char, signed int, unsigned int, unsigned short);
unsigned short (*v16) (signed char, signed int, unsigned int, unsigned short) = v15;
extern signed char v17 (unsigned int, unsigned char, unsigned short, signed short);
extern signed char (*v18) (unsigned int, unsigned char, unsigned short, signed short);
extern unsigned char v19 (signed int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char);
extern unsigned int v21 (unsigned char, signed short);
extern unsigned int (*v22) (unsigned char, signed short);
extern unsigned short v23 (unsigned short);
extern unsigned short (*v24) (unsigned short);
extern signed short v25 (signed char, signed short);
extern signed short (*v26) (signed char, signed short);
extern signed short v27 (unsigned short, unsigned char);
extern signed short (*v28) (unsigned short, unsigned char);
extern unsigned short v29 (signed char, unsigned int);
extern unsigned short (*v30) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v89 = 0;
signed int v88 = 0;
signed char v87 = 3;

unsigned short v15 (signed char v90, signed int v91, unsigned int v92, unsigned short v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 3U;
unsigned int v95 = 2U;
signed short v94 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned int v97, unsigned char v98, unsigned char v99, unsigned short v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned short v103 = 1;
signed char v102 = 2;
signed short v101 = 0;
trace++;
switch (trace)
{
case 7: 
{
v13 ();
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}

void v5 (signed short v104, signed short v105, unsigned char v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = -1;
unsigned char v108 = 4;
signed int v107 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
