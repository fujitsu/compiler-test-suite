#include <stdlib.h>
extern signed int v1 (unsigned char);
extern signed int (*v2) (unsigned char);
extern unsigned int v3 (unsigned char, unsigned char, signed short);
extern unsigned int (*v4) (unsigned char, unsigned char, signed short);
signed char v5 (unsigned char, unsigned char);
signed char (*v6) (unsigned char, unsigned char) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned int v9 (signed char, unsigned char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char, unsigned char);
signed short v11 (unsigned int);
signed short (*v12) (unsigned int) = v11;
extern unsigned int v13 (unsigned char);
extern unsigned int (*v14) (unsigned char);
extern void v15 (signed int, signed int, signed int);
extern void (*v16) (signed int, signed int, signed int);
unsigned int v17 (unsigned int);
unsigned int (*v18) (unsigned int) = v17;
extern void v19 (unsigned int, signed int);
extern void (*v20) (unsigned int, signed int);
static unsigned char v21 (void);
static unsigned char (*v22) (void) = v21;
extern unsigned int v23 (signed int, unsigned char, signed int);
extern unsigned int (*v24) (signed int, unsigned char, signed int);
extern void v25 (unsigned short, signed int, unsigned char);
extern void (*v26) (unsigned short, signed int, unsigned char);
extern void v27 (unsigned short, unsigned int);
extern void (*v28) (unsigned short, unsigned int);
extern signed int v29 (signed char, signed short, signed short);
extern signed int (*v30) (signed char, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v80 = 0;
signed int v79 = -4;
unsigned int v78 = 4U;

static unsigned char v21 (void)
{
{
for (;;) {
signed char v83 = 3;
unsigned int v82 = 7U;
signed short v81 = -1;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v84;
unsigned char v85;
signed short v86;
unsigned int v87;
v84 = 5 - 0;
v85 = 1 + 6;
v86 = v81 - 3;
v87 = v3 (v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned int v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
unsigned char v91 = 2;
signed int v90 = -4;
signed char v89 = -4;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v92;
v92 = v21 ();
history[history_index++] = (int)v92;
}
break;
case 13: 
return 0U;
default: abort ();
}
}
}
}

signed short v11 (unsigned int v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = -1;
signed short v95 = 1;
unsigned char v94 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned char v97, unsigned char v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = -1;
signed int v100 = -3;
unsigned short v99 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v102;
signed int v103;
unsigned char v104;
v102 = 1 + v99;
v103 = v101 - 0;
v104 = 3 - 2;
v25 (v102, v103, v104);
}
break;
case 5: 
{
unsigned short v105;
signed int v106;
unsigned char v107;
v105 = 7 - v99;
v106 = -4 + v101;
v107 = 4 - 4;
v25 (v105, v106, v107);
}
break;
case 7: 
return -4;
default: abort ();
}
}
}
}
