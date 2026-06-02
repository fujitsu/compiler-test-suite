#include <stdlib.h>
signed int v1 (unsigned char, unsigned short, unsigned short, signed short);
signed int (*v2) (unsigned char, unsigned short, unsigned short, signed short) = v1;
signed short v3 (void);
signed short (*v4) (void) = v3;
extern signed char v5 (signed short);
extern signed char (*v6) (signed short);
void v7 (void);
void (*v8) (void) = v7;
extern unsigned short v9 (unsigned char, signed short);
extern unsigned short (*v10) (unsigned char, signed short);
extern unsigned int v11 (signed int, signed char);
extern unsigned int (*v12) (signed int, signed char);
extern signed char v13 (signed char, signed char);
extern signed char (*v14) (signed char, signed char);
signed int v17 (signed int, signed char, signed char);
signed int (*v18) (signed int, signed char, signed char) = v17;
extern signed int v19 (unsigned int, unsigned short);
extern signed int (*v20) (unsigned int, unsigned short);
void v21 (unsigned char, signed char, signed short);
void (*v22) (unsigned char, signed char, signed short) = v21;
extern unsigned short v23 (signed short, signed int);
extern unsigned short (*v24) (signed short, signed int);
extern void v25 (signed short, unsigned short, unsigned char);
extern void (*v26) (signed short, unsigned short, unsigned char);
unsigned char v27 (unsigned short, unsigned char, signed short, unsigned int);
unsigned char (*v28) (unsigned short, unsigned char, signed short, unsigned int) = v27;
extern signed short v29 (signed char, signed char, signed short, unsigned short);
extern signed short (*v30) (signed char, signed char, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v66 = 2;
unsigned char v65 = 5;
signed int v64 = 3;

unsigned char v27 (unsigned short v67, unsigned char v68, signed short v69, unsigned int v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 0U;
unsigned short v72 = 7;
signed char v71 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned char v74, signed char v75, signed short v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = 3;
signed char v78 = 1;
signed char v77 = 0;
trace++;
switch (trace)
{
case 2: 
{
signed short v80;
unsigned short v81;
unsigned char v82;
v80 = 1 + -1;
v81 = 4 - 1;
v82 = v74 + v74;
v25 (v80, v81, v82);
}
break;
case 4: 
return;
default: abort ();
}
}
}
}

signed int v17 (signed int v83, signed char v84, signed char v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned char v88 = 1;
unsigned char v87 = 4;
unsigned short v86 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
signed int v91 = -1;
signed char v90 = -2;
signed int v89 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
signed int v94 = 3;
signed char v93 = 0;
signed int v92 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned char v95, unsigned short v96, unsigned short v97, signed short v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = 3;
signed int v100 = 3;
signed char v99 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v102;
signed char v103;
unsigned int v104;
v102 = v100 - 2;
v103 = 2 - 0;
v104 = v11 (v102, v103);
history[history_index++] = (int)v104;
}
break;
case 6: 
{
signed int v105;
signed char v106;
unsigned int v107;
v105 = v100 - -4;
v106 = v101 + v99;
v107 = v11 (v105, v106);
history[history_index++] = (int)v107;
}
break;
case 10: 
{
signed int v108;
signed char v109;
unsigned int v110;
v108 = -4 - -1;
v109 = 0 - v101;
v110 = v11 (v108, v109);
history[history_index++] = (int)v110;
}
break;
case 12: 
return v100;
default: abort ();
}
}
}
}
