#include <stdlib.h>
extern void v1 (signed char, unsigned short);
extern void (*v2) (signed char, unsigned short);
extern signed short v3 (signed char, signed char, unsigned int);
extern signed short (*v4) (signed char, signed char, unsigned int);
extern void v7 (signed int, unsigned int, unsigned short, signed short);
extern void (*v8) (signed int, unsigned int, unsigned short, signed short);
extern unsigned char v9 (unsigned char, unsigned short);
extern unsigned char (*v10) (unsigned char, unsigned short);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern signed char v15 (unsigned char, unsigned char);
extern signed char (*v16) (unsigned char, unsigned char);
extern unsigned short v17 (signed int);
extern unsigned short (*v18) (signed int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed char v23 (unsigned short);
signed char (*v24) (unsigned short) = v23;
static void v25 (unsigned int, signed short);
static void (*v26) (unsigned int, signed short) = v25;
extern void v27 (signed short);
extern void (*v28) (signed short);
extern unsigned short v29 (signed char);
extern unsigned short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v93 = -2;
signed char v92 = 0;
unsigned char v91 = 6;

static void v25 (unsigned int v94, signed short v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned short v98 = 3;
signed short v97 = 2;
signed int v96 = 1;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
default: abort ();
}
}
}
}

signed char v23 (unsigned short v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 1;
unsigned short v101 = 2;
unsigned short v100 = 6;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v103;
signed short v104;
v103 = 1U + 7U;
v104 = -1 - 0;
v25 (v103, v104);
}
break;
case 3: 
{
unsigned int v105;
signed short v106;
v105 = 6U - 1U;
v106 = 1 + -3;
v25 (v105, v106);
}
break;
case 5: 
{
signed short v107;
v107 = -4 + 2;
v27 (v107);
}
break;
case 15: 
return -4;
default: abort ();
}
}
}
}
