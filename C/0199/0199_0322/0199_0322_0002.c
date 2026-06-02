#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned int);
extern unsigned char (*v2) (signed short, unsigned int);
extern signed char v3 (unsigned int, signed char, signed int);
extern signed char (*v4) (unsigned int, signed char, signed int);
unsigned int v5 (unsigned char);
unsigned int (*v6) (unsigned char) = v5;
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned short v15 (signed char, unsigned short, unsigned int, unsigned short);
extern unsigned short (*v16) (signed char, unsigned short, unsigned int, unsigned short);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern unsigned short v19 (unsigned int, unsigned char, unsigned short, unsigned char);
extern unsigned short (*v20) (unsigned int, unsigned char, unsigned short, unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
unsigned int v23 (unsigned short, signed char, signed char);
unsigned int (*v24) (unsigned short, signed char, signed char) = v23;
extern signed short v25 (signed char, signed short);
extern signed short (*v26) (signed char, signed short);
extern unsigned int v27 (signed char, signed char);
extern unsigned int (*v28) (signed char, signed char);
static unsigned int v29 (signed int, unsigned char, unsigned short);
static unsigned int (*v30) (signed int, unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v83 = -2;
signed short v82 = -4;
signed short v81 = -2;

static unsigned int v29 (signed int v84, unsigned char v85, unsigned short v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 2U;
unsigned char v88 = 6;
unsigned char v87 = 7;
trace++;
switch (trace)
{
case 8: 
return 6U;
default: abort ();
}
}
}
}

unsigned int v23 (unsigned short v90, signed char v91, signed char v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 4;
signed int v94 = -2;
signed int v93 = 0;
trace++;
switch (trace)
{
case 7: 
{
signed int v96;
unsigned char v97;
unsigned short v98;
unsigned int v99;
v96 = 3 + v93;
v97 = v95 + 5;
v98 = 4 + 0;
v99 = v29 (v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 9: 
return 1U;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = 2;
unsigned short v102 = 4;
unsigned short v101 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
