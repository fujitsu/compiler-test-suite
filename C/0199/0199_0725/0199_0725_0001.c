#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed char v5 (void);
extern signed char (*v6) (void);
unsigned char v7 (signed int, unsigned int, unsigned short, unsigned int);
unsigned char (*v8) (signed int, unsigned int, unsigned short, unsigned int) = v7;
extern signed short v9 (unsigned char, signed char, unsigned int, unsigned char);
extern signed short (*v10) (unsigned char, signed char, unsigned int, unsigned char);
signed char v11 (unsigned short, signed char);
signed char (*v12) (unsigned short, signed char) = v11;
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
extern unsigned short v15 (signed short, unsigned short, signed int, signed char);
extern unsigned short (*v16) (signed short, unsigned short, signed int, signed char);
extern unsigned char v17 (signed char, unsigned int, signed char);
extern unsigned char (*v18) (signed char, unsigned int, signed char);
extern void v19 (signed int, signed short, unsigned short, unsigned short);
extern void (*v20) (signed int, signed short, unsigned short, unsigned short);
signed char v21 (signed short, signed int);
signed char (*v22) (signed short, signed int) = v21;
signed int v23 (signed int, signed int, signed char, unsigned char);
signed int (*v24) (signed int, signed int, signed char, unsigned char) = v23;
unsigned short v25 (unsigned short, unsigned char, signed int);
unsigned short (*v26) (unsigned short, unsigned char, signed int) = v25;
extern unsigned char v27 (unsigned char, unsigned int, signed int);
extern unsigned char (*v28) (unsigned char, unsigned int, signed int);
static signed short v29 (signed int);
static signed short (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v57 = 1;
signed char v56 = 0;
unsigned int v55 = 3U;

static signed short v29 (signed int v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
unsigned short v61 = 4;
unsigned int v60 = 4U;
unsigned char v59 = 0;
trace++;
switch (trace)
{
case 8: 
return 0;
default: abort ();
}
}
}
}

unsigned short v25 (unsigned short v62, unsigned char v63, signed int v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 5U;
unsigned short v66 = 0;
unsigned int v65 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (signed int v68, signed int v69, signed char v70, unsigned char v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = -3;
signed short v73 = -2;
signed char v72 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (signed short v75, signed int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = 3;
signed char v78 = -3;
signed char v77 = 3;
trace++;
switch (trace)
{
case 11: 
return 3;
default: abort ();
}
}
}
}

signed char v11 (unsigned short v80, signed char v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 2U;
signed int v83 = 1;
signed int v82 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v85, unsigned int v86, unsigned short v87, unsigned int v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 6;
unsigned int v90 = 7U;
unsigned char v89 = 7;
trace++;
switch (trace)
{
case 3: 
{
signed int v92;
signed short v93;
unsigned short v94;
unsigned short v95;
v92 = -4 - -1;
v93 = -3 + -2;
v94 = v87 + v87;
v95 = 2 - v91;
v19 (v92, v93, v94, v95);
}
break;
case 5: 
{
signed int v96;
signed short v97;
unsigned short v98;
unsigned short v99;
v96 = 0 - v85;
v97 = 3 - -4;
v98 = v91 + 5;
v99 = v87 - v87;
v19 (v96, v97, v98, v99);
}
break;
case 7: 
{
signed int v100;
signed short v101;
v100 = v85 - -1;
v101 = v29 (v100);
history[history_index++] = (int)v101;
}
break;
case 9: 
{
unsigned char v102;
signed char v103;
unsigned int v104;
unsigned char v105;
signed short v106;
v102 = v89 - 3;
v103 = -1 + -4;
v104 = v86 - v88;
v105 = 6 + 1;
v106 = v9 (v102, v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}
