#include <stdlib.h>
unsigned short v1 (unsigned char, unsigned short);
unsigned short (*v2) (unsigned char, unsigned short) = v1;
unsigned short v3 (signed short, signed int, unsigned char);
unsigned short (*v4) (signed short, signed int, unsigned char) = v3;
unsigned char v5 (unsigned int);
unsigned char (*v6) (unsigned int) = v5;
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern unsigned char v9 (signed int, signed short, signed short);
extern unsigned char (*v10) (signed int, signed short, signed short);
signed short v11 (signed char, signed short, signed int, signed int);
signed short (*v12) (signed char, signed short, signed int, signed int) = v11;
void v13 (unsigned short, signed int, unsigned char, unsigned int);
void (*v14) (unsigned short, signed int, unsigned char, unsigned int) = v13;
signed short v15 (signed int, unsigned int, unsigned int, signed short);
signed short (*v16) (signed int, unsigned int, unsigned int, signed short) = v15;
extern unsigned short v17 (unsigned short);
extern unsigned short (*v18) (unsigned short);
extern signed char v19 (signed char, unsigned int, unsigned int, signed int);
extern signed char (*v20) (signed char, unsigned int, unsigned int, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed char v23 (unsigned int, signed short);
extern signed char (*v24) (unsigned int, signed short);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
void v29 (unsigned short);
void (*v30) (unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v53 = -1;
signed short v52 = 0;
signed char v51 = -2;

void v29 (unsigned short v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 4;
unsigned short v56 = 0;
signed short v55 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed int v58, unsigned int v59, unsigned int v60, signed short v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed int v64 = 1;
unsigned int v63 = 7U;
signed int v62 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned short v65, signed int v66, unsigned char v67, unsigned int v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = -1;
unsigned short v70 = 7;
unsigned char v69 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v72, signed short v73, signed int v74, signed int v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed int v78 = -4;
signed int v77 = -4;
unsigned short v76 = 5;
trace++;
switch (trace)
{
case 2: 
{
signed char v79;
unsigned int v80;
unsigned int v81;
signed int v82;
signed char v83;
v79 = v72 + v72;
v80 = 4U + 4U;
v81 = 2U + 2U;
v82 = v75 + -1;
v83 = v19 (v79, v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 4: 
return v73;
case 6: 
{
unsigned short v84;
unsigned short v85;
v84 = v76 + v76;
v85 = v17 (v84);
history[history_index++] = (int)v85;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed char v89 = 0;
unsigned char v88 = 5;
unsigned int v87 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed short v90, signed int v91, unsigned char v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 5U;
signed short v94 = -1;
unsigned int v93 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned char v96, unsigned short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 1;
unsigned short v99 = 2;
unsigned int v98 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed int v101;
signed short v102;
signed short v103;
unsigned char v104;
v101 = -4 - 1;
v102 = -4 + -3;
v103 = 0 - 0;
v104 = v9 (v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 16: 
return v97;
default: abort ();
}
}
}
}
