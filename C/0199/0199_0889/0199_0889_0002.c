#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char);
extern unsigned char (*v2) (unsigned short, signed char);
extern unsigned int v3 (signed short, signed int);
extern unsigned int (*v4) (signed short, signed int);
extern unsigned short v5 (unsigned short, signed char, signed short);
extern unsigned short (*v6) (unsigned short, signed char, signed short);
signed short v7 (signed int, unsigned short, unsigned short);
signed short (*v8) (signed int, unsigned short, unsigned short) = v7;
extern unsigned char v9 (unsigned int, signed char, signed char, signed short);
extern unsigned char (*v10) (unsigned int, signed char, signed char, signed short);
void v11 (void);
void (*v12) (void) = v11;
extern signed short v13 (unsigned short, unsigned short);
extern signed short (*v14) (unsigned short, unsigned short);
extern signed char v15 (unsigned int, signed char, signed char, signed short);
extern signed char (*v16) (unsigned int, signed char, signed char, signed short);
extern signed int v17 (unsigned char, signed short);
extern signed int (*v18) (unsigned char, signed short);
extern signed short v19 (unsigned int, signed char, signed short);
extern signed short (*v20) (unsigned int, signed char, signed short);
void v21 (signed short, signed char, signed short);
void (*v22) (signed short, signed char, signed short) = v21;
void v23 (unsigned short, unsigned int, unsigned short);
void (*v24) (unsigned short, unsigned int, unsigned short) = v23;
void v25 (signed short, signed short);
void (*v26) (signed short, signed short) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v84 = 4;
unsigned int v83 = 0U;
unsigned int v82 = 4U;

void v25 (signed short v85, signed short v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 4;
signed short v88 = -1;
signed int v87 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned short v90, unsigned int v91, unsigned short v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
signed short v95 = 1;
signed short v94 = -2;
signed char v93 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed short v96, signed char v97, signed short v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 5;
signed int v100 = 1;
signed char v99 = -3;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v102;
signed char v103;
unsigned char v104;
v102 = v101 + 4;
v103 = -2 + v97;
v104 = v1 (v102, v103);
history[history_index++] = (int)v104;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
unsigned short v107 = 0;
unsigned int v106 = 7U;
unsigned int v105 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed int v108, unsigned short v109, unsigned short v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = 0;
signed char v112 = 0;
signed char v111 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
