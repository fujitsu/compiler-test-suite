#include <stdlib.h>
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern void v5 (signed short, unsigned short);
extern void (*v6) (signed short, unsigned short);
extern signed short v7 (unsigned short, unsigned char, signed int);
extern signed short (*v8) (unsigned short, unsigned char, signed int);
unsigned int v9 (signed short, signed short, unsigned short, unsigned short);
unsigned int (*v10) (signed short, signed short, unsigned short, unsigned short) = v9;
void v11 (void);
void (*v12) (void) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (signed int, unsigned short);
extern unsigned int (*v18) (signed int, unsigned short);
extern unsigned int v19 (unsigned char, signed short, unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned char, signed short, unsigned int, unsigned char);
extern signed char v21 (unsigned short, unsigned char, unsigned char);
extern signed char (*v22) (unsigned short, unsigned char, unsigned char);
extern signed int v23 (unsigned char);
extern signed int (*v24) (unsigned char);
signed char v25 (unsigned short, unsigned int);
signed char (*v26) (unsigned short, unsigned int) = v25;
extern unsigned char v27 (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned char (*v28) (unsigned char, unsigned int, unsigned char, signed int);
extern signed int v29 (unsigned short, signed int, unsigned short);
extern signed int (*v30) (unsigned short, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v86 = 5;
unsigned int v85 = 7U;
signed char v84 = 3;

signed char v25 (unsigned short v87, unsigned int v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = -3;
unsigned short v90 = 4;
unsigned int v89 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
signed char v94 = -1;
unsigned short v93 = 6;
unsigned short v92 = 7;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v95;
signed int v96;
unsigned short v97;
signed int v98;
v95 = v93 + 1;
v96 = -2 - -2;
v97 = v93 + 6;
v98 = v29 (v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 3: 
{
unsigned int v99;
v99 = v15 ();
history[history_index++] = (int)v99;
}
break;
case 15: 
return;
default: abort ();
}
}
}
}

unsigned int v9 (signed short v100, signed short v101, unsigned short v102, unsigned short v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned short v106 = 2;
signed char v105 = -4;
signed char v104 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
