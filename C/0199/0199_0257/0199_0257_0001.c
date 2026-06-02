#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern signed char v5 (unsigned short, unsigned char);
extern signed char (*v6) (unsigned short, unsigned char);
extern unsigned int v7 (signed short, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v8) (signed short, unsigned short, unsigned int, unsigned int);
extern signed int v9 (unsigned short, unsigned int, signed int);
extern signed int (*v10) (unsigned short, unsigned int, signed int);
extern unsigned short v11 (signed char, unsigned char);
extern unsigned short (*v12) (signed char, unsigned char);
void v13 (unsigned short, signed int, unsigned int);
void (*v14) (unsigned short, signed int, unsigned int) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v19 (signed short, signed char);
extern unsigned short (*v20) (signed short, signed char);
void v21 (unsigned char, signed short, signed char, unsigned int);
void (*v22) (unsigned char, signed short, signed char, unsigned int) = v21;
static unsigned char v23 (unsigned char, unsigned char);
static unsigned char (*v24) (unsigned char, unsigned char) = v23;
extern unsigned int v25 (signed char, signed short);
extern unsigned int (*v26) (signed char, signed short);
unsigned char v27 (unsigned int);
unsigned char (*v28) (unsigned int) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v70 = -2;
signed char v69 = -4;
unsigned char v68 = 1;

unsigned char v27 (unsigned int v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 1;
unsigned short v73 = 7;
signed short v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v23 (unsigned char v75, unsigned char v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 4;
unsigned int v78 = 0U;
signed short v77 = 3;
trace++;
switch (trace)
{
case 5: 
{
signed int v80;
v80 = v29 ();
history[history_index++] = (int)v80;
}
break;
case 7: 
return 4;
default: abort ();
}
}
}
}

void v21 (unsigned char v81, signed short v82, signed char v83, unsigned int v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = 0;
unsigned int v86 = 0U;
signed int v85 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned short v88, signed int v89, unsigned int v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 5U;
unsigned char v92 = 7;
signed char v91 = -1;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v94;
unsigned char v95;
unsigned char v96;
v94 = v92 + 3;
v95 = 6 - v92;
v96 = v23 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 8: 
return;
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
signed int v99 = -2;
unsigned int v98 = 0U;
signed int v97 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed short v100;
unsigned short v101;
unsigned int v102;
unsigned int v103;
unsigned int v104;
v100 = 0 + -2;
v101 = 7 + 6;
v102 = 1U - v98;
v103 = 5U + v98;
v104 = v7 (v100, v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
