#include <stdlib.h>
extern void v1 (signed char, signed int, signed int);
extern void (*v2) (signed char, signed int, signed int);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern void v5 (signed char, signed char, unsigned int, unsigned int);
extern void (*v6) (signed char, signed char, unsigned int, unsigned int);
extern unsigned int v7 (unsigned int, unsigned int, signed int, unsigned short);
extern unsigned int (*v8) (unsigned int, unsigned int, signed int, unsigned short);
extern unsigned char v9 (signed int, signed short);
extern unsigned char (*v10) (signed int, signed short);
extern signed short v13 (unsigned short, unsigned char, signed char);
extern signed short (*v14) (unsigned short, unsigned char, signed char);
signed int v15 (unsigned char, signed short, unsigned char, unsigned char);
signed int (*v16) (unsigned char, signed short, unsigned char, unsigned char) = v15;
void v17 (void);
void (*v18) (void) = v17;
unsigned int v19 (signed int, signed short, unsigned int, signed short);
unsigned int (*v20) (signed int, signed short, unsigned int, signed short) = v19;
extern void v21 (void);
extern void (*v22) (void);
void v23 (void);
void (*v24) (void) = v23;
static unsigned short v25 (unsigned short);
static unsigned short (*v26) (unsigned short) = v25;
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (signed int, unsigned int);
extern signed char (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v82 = 5;
unsigned int v81 = 1U;
signed short v80 = 1;

static unsigned short v25 (unsigned short v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = -4;
signed short v85 = -2;
signed short v84 = -3;
trace++;
switch (trace)
{
case 9: 
{
signed short v87;
v87 = v27 ();
history[history_index++] = (int)v87;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

void v23 (void)
{
{
for (;;) {
unsigned short v90 = 4;
signed short v89 = -1;
unsigned short v88 = 4;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

unsigned int v19 (signed int v91, signed short v92, unsigned int v93, signed short v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 2;
unsigned short v96 = 4;
unsigned char v95 = 0;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v98;
unsigned short v99;
v98 = 4 + v97;
v99 = v25 (v98);
history[history_index++] = (int)v99;
}
break;
case 12: 
return 5U;
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
unsigned char v102 = 4;
signed int v101 = 3;
unsigned char v100 = 4;
trace++;
switch (trace)
{
case 4: 
{
signed char v103;
signed int v104;
signed int v105;
v103 = 0 + -3;
v104 = v101 - v101;
v105 = v101 - v101;
v1 (v103, v104, v105);
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

signed int v15 (unsigned char v106, signed short v107, unsigned char v108, unsigned char v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = 2;
unsigned short v111 = 2;
unsigned char v110 = 5;
trace++;
switch (trace)
{
case 6: 
return 3;
default: abort ();
}
}
}
}
