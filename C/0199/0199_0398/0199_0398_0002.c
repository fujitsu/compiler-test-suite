#include <stdlib.h>
signed short v1 (signed int, unsigned short, unsigned short);
signed short (*v2) (signed int, unsigned short, unsigned short) = v1;
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned short v7 (unsigned short, signed char);
extern unsigned short (*v8) (unsigned short, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (unsigned int, signed char);
extern unsigned int (*v14) (unsigned int, signed char);
extern unsigned int v15 (signed int, signed short, unsigned int, unsigned short);
extern unsigned int (*v16) (signed int, signed short, unsigned int, unsigned short);
void v17 (unsigned short);
void (*v18) (unsigned short) = v17;
extern unsigned short v19 (unsigned short, unsigned int, unsigned char);
extern unsigned short (*v20) (unsigned short, unsigned int, unsigned char);
extern signed short v21 (unsigned char, unsigned char, unsigned int, signed short);
extern signed short (*v22) (unsigned char, unsigned char, unsigned int, signed short);
extern unsigned char v23 (signed int, unsigned char, signed int);
extern unsigned char (*v24) (signed int, unsigned char, signed int);
extern unsigned int v25 (signed char, unsigned char, unsigned int, signed short);
extern unsigned int (*v26) (signed char, unsigned char, unsigned int, signed short);
extern unsigned int v27 (signed int, unsigned short, unsigned short);
extern unsigned int (*v28) (signed int, unsigned short, unsigned short);
extern signed short v29 (signed int, unsigned char);
extern signed short (*v30) (signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v83 = 7;
signed short v82 = -1;
unsigned short v81 = 4;

void v17 (unsigned short v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
signed short v87 = 3;
signed int v86 = -3;
signed int v85 = -3;
trace++;
switch (trace)
{
case 4: 
return;
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
signed int v90 = -4;
unsigned char v89 = 3;
signed int v88 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v91, unsigned short v92, unsigned short v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = 3;
signed char v95 = 2;
signed short v94 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v97;
v97 = v9 ();
history[history_index++] = (int)v97;
}
break;
case 2: 
{
signed int v98;
signed short v99;
unsigned int v100;
unsigned short v101;
unsigned int v102;
v98 = -3 + 0;
v99 = v94 - v96;
v100 = 3U + 1U;
v101 = v93 - v93;
v102 = v15 (v98, v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 12: 
return v96;
default: abort ();
}
}
}
}
