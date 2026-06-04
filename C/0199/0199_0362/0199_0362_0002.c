#include <stdlib.h>
signed char v1 (signed char, signed short, unsigned int, unsigned char);
signed char (*v2) (signed char, signed short, unsigned int, unsigned char) = v1;
extern unsigned int v3 (signed short, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
unsigned char v7 (signed int, unsigned char);
unsigned char (*v8) (signed int, unsigned char) = v7;
signed short v9 (unsigned int, unsigned char, signed char);
signed short (*v10) (unsigned int, unsigned char, signed char) = v9;
extern signed int v11 (signed short);
extern signed int (*v12) (signed short);
extern unsigned int v13 (signed int, signed char);
extern unsigned int (*v14) (signed int, signed char);
extern unsigned int v15 (unsigned int, signed char, signed int, unsigned int);
extern unsigned int (*v16) (unsigned int, signed char, signed int, unsigned int);
static unsigned int v17 (unsigned char, signed char);
static unsigned int (*v18) (unsigned char, signed char) = v17;
void v19 (void);
void (*v20) (void) = v19;
extern unsigned char v21 (unsigned char, unsigned short);
extern unsigned char (*v22) (unsigned char, unsigned short);
signed short v23 (unsigned int, unsigned int, signed short, unsigned short);
signed short (*v24) (unsigned int, unsigned int, signed short, unsigned short) = v23;
extern unsigned char v25 (unsigned char, signed short);
extern unsigned char (*v26) (unsigned char, signed short);
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v71 = 0;
unsigned char v70 = 6;
signed short v69 = 0;

signed short v23 (unsigned int v72, unsigned int v73, signed short v74, unsigned short v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = -3;
signed int v77 = 0;
unsigned short v76 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (void)
{
{
for (;;) {
signed int v81 = -4;
signed char v80 = 0;
unsigned short v79 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v17 (unsigned char v82, signed char v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 7U;
signed char v85 = -4;
unsigned int v84 = 5U;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v87;
signed char v88;
v87 = 5 + 3;
v88 = v29 (v87);
history[history_index++] = (int)v88;
}
break;
case 7: 
{
unsigned short v89;
signed char v90;
v89 = 1 - 3;
v90 = v29 (v89);
history[history_index++] = (int)v90;
}
break;
case 9: 
{
unsigned short v91;
signed char v92;
v91 = 1 - 4;
v92 = v29 (v91);
history[history_index++] = (int)v92;
}
break;
case 11: 
return v84;
default: abort ();
}
}
}
}

signed short v9 (unsigned int v93, unsigned char v94, signed char v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed char v98 = -2;
unsigned int v97 = 7U;
signed int v96 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v99, unsigned char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 6;
unsigned char v102 = 6;
unsigned short v101 = 4;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v104;
signed char v105;
unsigned int v106;
v104 = v100 - v103;
v105 = 3 + 2;
v106 = v17 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 12: 
return v102;
default: abort ();
}
}
}
}

signed char v1 (signed char v107, signed short v108, unsigned int v109, unsigned char v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 7;
unsigned short v112 = 3;
unsigned char v111 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v114;
signed short v115;
unsigned char v116;
v114 = v111 + v111;
v115 = v108 - v108;
v116 = v25 (v114, v115);
history[history_index++] = (int)v116;
}
break;
case 2: 
{
unsigned int v117;
v117 = v109 - 4U;
v5 (v117);
}
break;
case 14: 
return -4;
default: abort ();
}
}
}
}
