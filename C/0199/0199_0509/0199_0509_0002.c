#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char, signed char);
extern unsigned char (*v2) (signed short, unsigned char, signed char);
unsigned short v5 (signed char, signed short);
unsigned short (*v6) (signed char, signed short) = v5;
extern unsigned char v7 (signed int, signed char, signed char, signed short);
extern unsigned char (*v8) (signed int, signed char, signed char, signed short);
unsigned char v9 (unsigned char, signed short, signed char, signed short);
unsigned char (*v10) (unsigned char, signed short, signed char, signed short) = v9;
signed int v11 (signed short, unsigned char, unsigned short, unsigned short);
signed int (*v12) (signed short, unsigned char, unsigned short, unsigned short) = v11;
unsigned int v13 (unsigned char, signed int, signed int);
unsigned int (*v14) (unsigned char, signed int, signed int) = v13;
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
unsigned short v17 (unsigned int);
unsigned short (*v18) (unsigned int) = v17;
signed char v19 (signed int, unsigned int, unsigned int);
signed char (*v20) (signed int, unsigned int, unsigned int) = v19;
extern unsigned char v21 (signed char, unsigned short, signed char);
extern unsigned char (*v22) (signed char, unsigned short, signed char);
extern unsigned char v23 (signed short);
extern unsigned char (*v24) (signed short);
extern signed short v25 (signed int, signed char);
extern signed short (*v26) (signed int, signed char);
void v27 (unsigned char, signed int, unsigned short);
void (*v28) (unsigned char, signed int, unsigned short) = v27;
signed int v29 (unsigned short);
signed int (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v67 = -2;
unsigned short v66 = 6;
unsigned short v65 = 7;

signed int v29 (unsigned short v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 6;
signed char v70 = -4;
signed short v69 = 1;
trace++;
switch (trace)
{
case 7: 
return 0;
case 9: 
return -1;
case 11: 
return -1;
default: abort ();
}
}
}
}

void v27 (unsigned char v72, signed int v73, unsigned short v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = 3;
unsigned int v76 = 4U;
unsigned short v75 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (signed int v78, unsigned int v79, unsigned int v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 1U;
unsigned short v82 = 2;
signed char v81 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (unsigned int v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
unsigned short v87 = 5;
signed char v86 = 1;
unsigned char v85 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v88, signed int v89, signed int v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned short v93 = 4;
unsigned int v92 = 2U;
signed char v91 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed short v94, unsigned char v95, unsigned short v96, unsigned short v97)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 6;
unsigned char v99 = 4;
signed int v98 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v101, signed short v102, signed char v103, signed short v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned char v107 = 0;
unsigned char v106 = 7;
signed short v105 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed char v108, signed short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 5U;
unsigned char v111 = 6;
unsigned char v110 = 5;
trace++;
switch (trace)
{
case 5: 
{
signed int v113;
signed char v114;
signed char v115;
signed short v116;
unsigned char v117;
v113 = -3 + -4;
v114 = v108 - -3;
v115 = 2 - -1;
v116 = -2 - 0;
v117 = v7 (v113, v114, v115, v116);
history[history_index++] = (int)v117;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}
