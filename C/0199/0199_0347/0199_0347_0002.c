#include <stdlib.h>
extern void v1 (signed short, signed short);
extern void (*v2) (signed short, signed short);
extern void v3 (void);
extern void (*v4) (void);
extern signed short v5 (unsigned int, unsigned char);
extern signed short (*v6) (unsigned int, unsigned char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned int v11 (signed short, signed int);
extern unsigned int (*v12) (signed short, signed int);
void v13 (signed char, unsigned short);
void (*v14) (signed char, unsigned short) = v13;
extern signed char v15 (signed short, signed int, signed char, signed char);
extern signed char (*v16) (signed short, signed int, signed char, signed char);
signed short v17 (signed int, unsigned int, unsigned char);
signed short (*v18) (signed int, unsigned int, unsigned char) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v21 (signed char, signed short, unsigned char);
extern signed short (*v22) (signed char, signed short, unsigned char);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (signed int, unsigned char, signed char);
extern unsigned short (*v26) (signed int, unsigned char, signed char);
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v87 = 1U;
unsigned char v86 = 7;
signed int v85 = -3;

unsigned int v29 (void)
{
{
for (;;) {
unsigned int v90 = 5U;
signed char v89 = 3;
signed short v88 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v27 (void)
{
{
for (;;) {
signed short v93 = -4;
signed short v92 = 3;
signed char v91 = 1;
trace++;
switch (trace)
{
case 1: 
return 6;
case 5: 
{
unsigned int v94;
unsigned char v95;
signed short v96;
v94 = 0U + 4U;
v95 = 4 - 7;
v96 = v5 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 15: 
return 2;
default: abort ();
}
}
}
}

signed short v17 (signed int v97, unsigned int v98, unsigned char v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = 0;
unsigned char v101 = 6;
signed int v100 = -4;
trace++;
switch (trace)
{
case 8: 
return 1;
case 10: 
{
signed char v103;
v103 = v19 ();
history[history_index++] = (int)v103;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

void v13 (signed char v104, unsigned short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 5;
unsigned short v107 = 4;
unsigned char v106 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
