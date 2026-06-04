#include <stdlib.h>
unsigned short v1 (signed short, unsigned short);
unsigned short (*v2) (signed short, unsigned short) = v1;
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern signed int v5 (signed char, unsigned short, signed short, unsigned char);
extern signed int (*v6) (signed char, unsigned short, signed short, unsigned char);
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
extern signed int v9 (unsigned int, unsigned int, signed char, signed int);
extern signed int (*v10) (unsigned int, unsigned int, signed char, signed int);
void v11 (signed char, signed int, unsigned short);
void (*v12) (signed char, signed int, unsigned short) = v11;
extern signed char v13 (signed char, signed short);
extern signed char (*v14) (signed char, signed short);
extern signed int v15 (void);
extern signed int (*v16) (void);
unsigned char v17 (signed char, unsigned short);
unsigned char (*v18) (signed char, unsigned short) = v17;
extern signed char v19 (signed char);
extern signed char (*v20) (signed char);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern void v23 (unsigned short, unsigned int, signed char);
extern void (*v24) (unsigned short, unsigned int, signed char);
extern unsigned short v25 (unsigned short);
extern unsigned short (*v26) (unsigned short);
extern unsigned short v27 (signed int);
extern unsigned short (*v28) (signed int);
extern signed short v29 (unsigned short, unsigned char);
extern signed short (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v83 = 5;
signed short v82 = -3;
unsigned int v81 = 1U;

unsigned char v17 (signed char v84, unsigned short v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = 2;
unsigned short v87 = 6;
signed short v86 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v89, signed int v90, unsigned short v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = 3;
signed char v93 = -1;
signed char v92 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed short v95, unsigned short v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed short v99 = 1;
unsigned char v98 = 2;
signed int v97 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v100;
unsigned int v101;
v100 = 1 + 1;
v101 = v3 (v100);
history[history_index++] = (int)v101;
}
break;
case 2: 
{
signed char v102;
signed char v103;
v102 = -2 - -3;
v103 = v19 (v102);
history[history_index++] = (int)v103;
}
break;
case 8: 
{
signed char v104;
signed char v105;
v104 = -1 - 2;
v105 = v19 (v104);
history[history_index++] = (int)v105;
}
break;
case 12: 
return v96;
default: abort ();
}
}
}
}
