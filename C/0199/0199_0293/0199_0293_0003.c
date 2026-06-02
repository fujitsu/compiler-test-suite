#include <stdlib.h>
extern unsigned char v1 (unsigned short);
extern unsigned char (*v2) (unsigned short);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
unsigned int v5 (unsigned char, signed char);
unsigned int (*v6) (unsigned char, signed char) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
void v9 (signed int);
void (*v10) (signed int) = v9;
extern unsigned int v11 (signed short, signed char, signed char);
extern unsigned int (*v12) (signed short, signed char, signed char);
signed int v13 (signed short, signed char, unsigned char);
signed int (*v14) (signed short, signed char, unsigned char) = v13;
extern signed char v15 (signed short, unsigned char, signed int);
extern signed char (*v16) (signed short, unsigned char, signed int);
extern unsigned char v17 (unsigned int, signed short, unsigned char, signed short);
extern unsigned char (*v18) (unsigned int, signed short, unsigned char, signed short);
void v19 (signed int, unsigned char, signed short, unsigned int);
void (*v20) (signed int, unsigned char, signed short, unsigned int) = v19;
signed int v21 (signed short);
signed int (*v22) (signed short) = v21;
extern unsigned int v23 (signed char, unsigned char);
extern unsigned int (*v24) (signed char, unsigned char);
extern unsigned char v25 (unsigned int, unsigned int);
extern unsigned char (*v26) (unsigned int, unsigned int);
extern unsigned char v27 (unsigned short, signed int, unsigned short);
extern unsigned char (*v28) (unsigned short, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v77 = 1;
signed char v76 = -4;
signed short v75 = 1;

signed int v21 (signed short v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = -3;
signed int v80 = -1;
unsigned int v79 = 4U;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v82;
signed int v83;
unsigned short v84;
unsigned char v85;
v82 = 3 - 7;
v83 = 3 - v80;
v84 = 7 + 2;
v85 = v27 (v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 7: 
{
unsigned short v86;
signed int v87;
unsigned short v88;
unsigned char v89;
v86 = 6 + 2;
v87 = v80 - v80;
v88 = 7 - 3;
v89 = v27 (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}

void v19 (signed int v90, unsigned char v91, signed short v92, unsigned int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -3;
unsigned short v95 = 1;
signed short v94 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed short v97, signed char v98, unsigned char v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 7U;
unsigned short v101 = 2;
unsigned int v100 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 1U;
signed short v105 = -2;
unsigned int v104 = 2U;
trace++;
switch (trace)
{
case 1: 
{
signed short v107;
unsigned char v108;
signed int v109;
signed char v110;
v107 = -4 - v105;
v108 = 3 + 5;
v109 = 1 - v103;
v110 = v15 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 3: 
{
signed short v111;
unsigned char v112;
signed int v113;
signed char v114;
v111 = v105 + -2;
v112 = 2 + 7;
v113 = v103 - -2;
v114 = v15 (v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v115, signed char v116)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed char v119 = 1;
unsigned short v118 = 5;
signed int v117 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
