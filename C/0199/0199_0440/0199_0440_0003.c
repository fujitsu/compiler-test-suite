#include <stdlib.h>
extern unsigned int v3 (unsigned short, signed char, signed short, unsigned int);
extern unsigned int (*v4) (unsigned short, signed char, signed short, unsigned int);
void v5 (unsigned short, signed char);
void (*v6) (unsigned short, signed char) = v5;
extern unsigned short v7 (signed int, signed short);
extern unsigned short (*v8) (signed int, signed short);
extern unsigned short v9 (signed char, unsigned char, unsigned int);
extern unsigned short (*v10) (signed char, unsigned char, unsigned int);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
void v13 (unsigned int);
void (*v14) (unsigned int) = v13;
extern unsigned short v15 (signed int, unsigned int, unsigned char);
extern unsigned short (*v16) (signed int, unsigned int, unsigned char);
extern signed short v17 (signed char, signed char, signed int);
extern signed short (*v18) (signed char, signed char, signed int);
extern signed short v19 (void);
extern signed short (*v20) (void);
signed char v21 (signed short, signed short);
signed char (*v22) (signed short, signed short) = v21;
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern unsigned char v25 (unsigned int, signed int);
extern unsigned char (*v26) (unsigned int, signed int);
extern signed int v27 (signed int, unsigned short, signed int, unsigned int);
extern signed int (*v28) (signed int, unsigned short, signed int, unsigned int);
signed char v29 (signed int, signed char, signed int, unsigned short);
signed char (*v30) (signed int, signed char, signed int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v88 = -2;
signed short v87 = 1;
unsigned char v86 = 3;

signed char v29 (signed int v89, signed char v90, signed int v91, unsigned short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 6;
unsigned short v94 = 1;
unsigned short v93 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v96;
signed char v97;
signed short v98;
unsigned int v99;
unsigned int v100;
v96 = 6 + v92;
v97 = v90 - -1;
v98 = 2 + -1;
v99 = 6U - 2U;
v100 = v3 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 5: 
return v90;
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
unsigned int v103 = 0U;
signed short v102 = -2;
unsigned char v101 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (signed short v104, signed short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = 0;
unsigned short v107 = 5;
signed short v106 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned int v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 0;
signed char v111 = 3;
signed int v110 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
signed short v115 = 1;
signed char v114 = 0;
signed int v113 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v116, signed char v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = 3;
signed short v119 = -2;
unsigned int v118 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
