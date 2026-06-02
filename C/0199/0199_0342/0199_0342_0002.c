#include <stdlib.h>
signed short v1 (signed int);
signed short (*v2) (signed int) = v1;
static unsigned int v3 (signed char);
static unsigned int (*v4) (signed char) = v3;
unsigned int v5 (signed int);
unsigned int (*v6) (signed int) = v5;
extern unsigned char v7 (signed short, signed short);
extern unsigned char (*v8) (signed short, signed short);
signed char v9 (void);
signed char (*v10) (void) = v9;
extern signed int v11 (signed int, signed short, unsigned char);
extern signed int (*v12) (signed int, signed short, unsigned char);
extern signed char v13 (signed char, signed char, signed short, signed char);
extern signed char (*v14) (signed char, signed char, signed short, signed char);
extern signed char v15 (signed int, unsigned char, signed char, signed short);
extern signed char (*v16) (signed int, unsigned char, signed char, signed short);
extern void v17 (unsigned short, unsigned short, unsigned char);
extern void (*v18) (unsigned short, unsigned short, unsigned char);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern signed char v21 (signed char, signed int);
extern signed char (*v22) (signed char, signed int);
extern unsigned int v23 (unsigned int, unsigned short, signed short);
extern unsigned int (*v24) (unsigned int, unsigned short, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
void v27 (unsigned short, signed char, unsigned char);
void (*v28) (unsigned short, signed char, unsigned char) = v27;
extern signed int v29 (unsigned char, unsigned char, signed char, unsigned short);
extern signed int (*v30) (unsigned char, unsigned char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v80 = 0;
signed short v79 = -1;
unsigned int v78 = 2U;

void v27 (unsigned short v81, signed char v82, unsigned char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = -3;
signed short v85 = -1;
signed short v84 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed short v89 = -1;
unsigned short v88 = 3;
unsigned char v87 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 6U;
signed short v92 = -1;
signed int v91 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v3 (signed char v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
signed int v97 = -1;
signed short v96 = 3;
signed short v95 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed int v98;
signed short v99;
unsigned char v100;
signed int v101;
v98 = v97 + 1;
v99 = v96 + v95;
v100 = 4 + 7;
v101 = v11 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 9: 
{
unsigned int v102;
unsigned short v103;
signed short v104;
unsigned int v105;
v102 = 0U + 6U;
v103 = 7 - 1;
v104 = -2 + v96;
v105 = v23 (v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 11: 
return 0U;
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
signed short v109 = -3;
unsigned int v108 = 6U;
unsigned int v107 = 2U;
trace++;
switch (trace)
{
case 0: 
{
signed char v110;
unsigned int v111;
v110 = 1 - -1;
v111 = v3 (v110);
history[history_index++] = (int)v111;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
