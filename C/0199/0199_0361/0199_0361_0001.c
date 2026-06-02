#include <stdlib.h>
signed int v1 (unsigned char, unsigned char);
signed int (*v2) (unsigned char, unsigned char) = v1;
extern signed char v3 (signed short, signed char);
extern signed char (*v4) (signed short, signed char);
extern signed short v5 (signed int, unsigned short, unsigned int);
extern signed short (*v6) (signed int, unsigned short, unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed char v9 (unsigned char, signed int);
extern signed char (*v10) (unsigned char, signed int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
static unsigned int v13 (unsigned char);
static unsigned int (*v14) (unsigned char) = v13;
extern void v15 (signed int);
extern void (*v16) (signed int);
void v17 (unsigned char, signed char, unsigned short, signed int);
void (*v18) (unsigned char, signed char, unsigned short, signed int) = v17;
extern void v19 (unsigned int, signed int);
extern void (*v20) (unsigned int, signed int);
extern unsigned short v23 (unsigned int, signed char, signed short);
extern unsigned short (*v24) (unsigned int, signed char, signed short);
extern signed short v25 (unsigned int, unsigned int, signed char, unsigned short);
extern signed short (*v26) (unsigned int, unsigned int, signed char, unsigned short);
extern unsigned short v27 (unsigned char, signed int, unsigned int, signed int);
extern unsigned short (*v28) (unsigned char, signed int, unsigned int, signed int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v86 = 3;
unsigned short v85 = 5;
unsigned short v84 = 0;

void v17 (unsigned char v87, signed char v88, unsigned short v89, signed int v90)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = -2;
signed int v92 = -3;
unsigned short v91 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v13 (unsigned char v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
unsigned char v97 = 2;
signed char v96 = 1;
signed int v95 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v98;
signed int v99;
v98 = 2U - 5U;
v99 = v95 - v95;
v19 (v98, v99);
}
break;
case 15: 
return 0U;
default: abort ();
}
}
}
}

signed int v1 (unsigned char v100, unsigned char v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 7;
unsigned short v103 = 4;
unsigned char v102 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v105;
unsigned int v106;
v105 = 7 - v101;
v106 = v13 (v105);
history[history_index++] = (int)v106;
}
break;
case 16: 
return 2;
default: abort ();
}
}
}
}
