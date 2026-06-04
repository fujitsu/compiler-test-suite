#include <stdlib.h>
extern signed short v1 (signed char, unsigned char, signed int, unsigned short);
extern signed short (*v2) (signed char, unsigned char, signed int, unsigned short);
extern unsigned short v3 (unsigned char, signed short);
extern unsigned short (*v4) (unsigned char, signed short);
extern signed short v5 (unsigned int, signed short, unsigned int);
extern signed short (*v6) (unsigned int, signed short, unsigned int);
extern void v7 (signed short, unsigned char);
extern void (*v8) (signed short, unsigned char);
extern unsigned short v9 (signed char, signed char, unsigned int);
extern unsigned short (*v10) (signed char, signed char, unsigned int);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
signed char v17 (void);
signed char (*v18) (void) = v17;
static unsigned char v19 (signed short, signed int, signed int, signed short);
static unsigned char (*v20) (signed short, signed int, signed int, signed short) = v19;
signed short v21 (void);
signed short (*v22) (void) = v21;
extern unsigned int v23 (unsigned char, unsigned int);
extern unsigned int (*v24) (unsigned char, unsigned int);
extern signed int v25 (signed int, signed char, signed char, unsigned int);
extern signed int (*v26) (signed int, signed char, signed char, unsigned int);
extern signed int v27 (void);
extern signed int (*v28) (void);
signed short v29 (signed char, signed int, signed short, signed int);
signed short (*v30) (signed char, signed int, signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v81 = 7;
unsigned char v80 = 4;
unsigned char v79 = 6;

signed short v29 (signed char v82, signed int v83, signed short v84, signed int v85)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed char v88 = 2;
unsigned int v87 = 4U;
signed int v86 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
unsigned int v91 = 2U;
signed char v90 = 1;
unsigned char v89 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v19 (signed short v92, signed int v93, signed int v94, signed short v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = -2;
signed char v97 = -4;
unsigned short v96 = 7;
trace++;
switch (trace)
{
case 9: 
return 2;
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned short v101 = 7;
unsigned short v100 = 7;
signed short v99 = -4;
trace++;
switch (trace)
{
case 1: 
return -2;
case 8: 
{
signed short v102;
signed int v103;
signed int v104;
signed short v105;
unsigned char v106;
v102 = v99 + 2;
v103 = -2 + -2;
v104 = -4 - -1;
v105 = -2 - 0;
v106 = v19 (v102, v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 10: 
{
signed int v107;
v107 = v27 ();
history[history_index++] = (int)v107;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}
