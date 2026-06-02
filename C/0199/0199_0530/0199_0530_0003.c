#include <stdlib.h>
signed short v1 (signed int);
signed short (*v2) (signed int) = v1;
extern unsigned char v3 (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned char (*v4) (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned short v5 (signed int, unsigned char, unsigned char, signed int);
extern unsigned short (*v6) (signed int, unsigned char, unsigned char, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern void v9 (unsigned short, unsigned char);
extern void (*v10) (unsigned short, unsigned char);
static signed short v11 (void);
static signed short (*v12) (void) = v11;
extern signed int v13 (signed short, signed int);
extern signed int (*v14) (signed short, signed int);
extern signed short v15 (unsigned char, signed short, unsigned int, unsigned short);
extern signed short (*v16) (unsigned char, signed short, unsigned int, unsigned short);
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
extern signed int v21 (signed char, signed char, unsigned char, unsigned int);
extern signed int (*v22) (signed char, signed char, unsigned char, unsigned int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v27 (signed int, signed short, unsigned char, signed int);
extern signed char (*v28) (signed int, signed short, unsigned char, signed int);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v82 = -2;
unsigned short v81 = 5;
signed int v80 = -2;

void v29 (void)
{
{
for (;;) {
unsigned char v85 = 1;
signed short v84 = 0;
unsigned int v83 = 4U;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v86;
unsigned char v87;
v86 = 6 - 0;
v87 = 5 - 7;
v9 (v86, v87);
}
break;
case 7: 
{
unsigned short v88;
unsigned char v89;
v88 = 1 + 4;
v89 = v85 + v85;
v9 (v88, v89);
}
break;
case 11: 
return;
case 15: 
return;
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
unsigned char v92 = 4;
unsigned int v91 = 5U;
signed char v90 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v11 (void)
{
{
for (;;) {
signed short v95 = -4;
signed char v94 = -1;
signed short v93 = -2;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v96;
unsigned short v97;
unsigned char v98;
unsigned int v99;
unsigned char v100;
v96 = 4 + 4;
v97 = 4 - 3;
v98 = 2 - 0;
v99 = 2U + 7U;
v100 = v3 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 3: 
{
unsigned char v101;
unsigned short v102;
unsigned char v103;
unsigned int v104;
unsigned char v105;
v101 = 3 - 4;
v102 = 7 + 2;
v103 = 1 - 2;
v104 = 6U - 5U;
v105 = v3 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 17: 
return v93;
default: abort ();
}
}
}
}

signed short v1 (signed int v106)
{
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 6;
unsigned char v108 = 2;
signed int v107 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v110;
v110 = v11 ();
history[history_index++] = (int)v110;
}
break;
case 18: 
return -3;
default: abort ();
}
}
}
}
