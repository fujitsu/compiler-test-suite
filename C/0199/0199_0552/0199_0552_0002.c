#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern void v5 (signed short, unsigned char, unsigned short);
extern void (*v6) (signed short, unsigned char, unsigned short);
unsigned int v7 (unsigned char, unsigned short, unsigned int);
unsigned int (*v8) (unsigned char, unsigned short, unsigned int) = v7;
extern unsigned short v9 (unsigned short, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned int);
extern unsigned int v11 (unsigned int, unsigned char, unsigned short, signed int);
extern unsigned int (*v12) (unsigned int, unsigned char, unsigned short, signed int);
unsigned short v13 (signed char);
unsigned short (*v14) (signed char) = v13;
signed char v15 (unsigned char, signed short);
signed char (*v16) (unsigned char, signed short) = v15;
void v17 (void);
void (*v18) (void) = v17;
static unsigned char v19 (signed char, signed int, signed char, signed int);
static unsigned char (*v20) (signed char, signed int, signed char, signed int) = v19;
signed int v21 (signed short, signed short);
signed int (*v22) (signed short, signed short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (unsigned short, signed short, signed char, signed int);
extern signed char (*v26) (unsigned short, signed short, signed char, signed int);
extern unsigned int v27 (signed char, signed int, signed int);
extern unsigned int (*v28) (signed char, signed int, signed int);
extern unsigned int v29 (unsigned int, signed int);
extern unsigned int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v64 = 1;
signed char v63 = -4;
signed short v62 = 2;

signed int v21 (signed short v65, signed short v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = 0;
signed short v68 = 1;
signed int v67 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v19 (signed char v70, signed int v71, signed char v72, signed int v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 6;
signed int v75 = -1;
unsigned short v74 = 1;
trace++;
switch (trace)
{
case 5: 
return 0;
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
unsigned char v79 = 1;
unsigned char v78 = 5;
signed int v77 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned char v80, signed short v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 2;
unsigned short v83 = 7;
signed char v82 = 3;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v85;
v85 = 2U + 1U;
v3 (v85);
}
break;
case 9: 
{
unsigned int v86;
v86 = 2U - 3U;
v3 (v86);
}
break;
case 11: 
return 1;
case 13: 
return -4;
case 15: 
return v82;
default: abort ();
}
}
}
}

unsigned short v13 (signed char v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = 0;
signed int v89 = 1;
unsigned int v88 = 3U;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v91;
unsigned char v92;
unsigned short v93;
signed int v94;
unsigned int v95;
v91 = v88 + 1U;
v92 = 6 + 6;
v93 = 6 - 7;
v94 = -1 + 1;
v95 = v11 (v91, v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 4: 
{
signed char v96;
signed int v97;
signed char v98;
signed int v99;
unsigned char v100;
v96 = v87 - v87;
v97 = v89 - v89;
v98 = v87 + v87;
v99 = -2 + -3;
v100 = v19 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 6: 
{
unsigned char v101;
signed short v102;
signed char v103;
v101 = 0 - 6;
v102 = v90 + v90;
v103 = v15 (v101, v102);
history[history_index++] = (int)v103;
}
break;
case 16: 
return 6;
case 18: 
return 1;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v104, unsigned short v105, unsigned int v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 5U;
unsigned short v108 = 1;
unsigned int v107 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
