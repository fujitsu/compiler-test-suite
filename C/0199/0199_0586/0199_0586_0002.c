#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned short, unsigned char, unsigned char);
extern unsigned char (*v2) (signed char, unsigned short, unsigned char, unsigned char);
extern void v3 (signed char, unsigned char, unsigned short);
extern void (*v4) (signed char, unsigned char, unsigned short);
extern signed int v5 (unsigned short, unsigned short);
extern signed int (*v6) (unsigned short, unsigned short);
void v9 (unsigned short, signed char, unsigned int);
void (*v10) (unsigned short, signed char, unsigned int) = v9;
extern signed short v11 (signed char, signed int);
extern signed short (*v12) (signed char, signed int);
extern signed short v13 (unsigned short, signed char, unsigned short, signed short);
extern signed short (*v14) (unsigned short, signed char, unsigned short, signed short);
extern unsigned char v15 (signed int, unsigned int, signed char, signed int);
extern unsigned char (*v16) (signed int, unsigned int, signed char, signed int);
extern signed char v17 (unsigned int, signed char, unsigned char, unsigned char);
extern signed char (*v18) (unsigned int, signed char, unsigned char, unsigned char);
unsigned char v19 (unsigned int);
unsigned char (*v20) (unsigned int) = v19;
signed short v21 (unsigned int, unsigned short);
signed short (*v22) (unsigned int, unsigned short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
unsigned char v25 (unsigned char, signed int);
unsigned char (*v26) (unsigned char, signed int) = v25;
extern void v27 (signed short, unsigned short, signed int, unsigned int);
extern void (*v28) (signed short, unsigned short, signed int, unsigned int);
static void v29 (unsigned char, signed int, unsigned int);
static void (*v30) (unsigned char, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v77 = 2;
signed short v76 = -4;
unsigned int v75 = 4U;

static void v29 (unsigned char v78, signed int v79, unsigned int v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned short v83 = 5;
unsigned short v82 = 1;
signed int v81 = -3;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v84;
unsigned short v85;
signed int v86;
v84 = v82 - v83;
v85 = 6 + 2;
v86 = v5 (v84, v85);
history[history_index++] = (int)v86;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned char v25 (unsigned char v87, signed int v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 4;
unsigned char v90 = 6;
unsigned int v89 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (unsigned int v92, unsigned short v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 2;
signed short v95 = 2;
unsigned char v94 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (unsigned int v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 6;
signed short v99 = -4;
signed int v98 = 1;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v101;
signed int v102;
unsigned int v103;
v101 = v100 - v100;
v102 = v98 + -4;
v103 = 6U + 4U;
v29 (v101, v102, v103);
}
break;
case 13: 
return v100;
default: abort ();
}
}
}
}

void v9 (unsigned short v104, signed char v105, unsigned int v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned short v109 = 7;
signed int v108 = 3;
unsigned short v107 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
