#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
unsigned char v3 (signed short, unsigned short, signed char);
unsigned char (*v4) (signed short, unsigned short, signed char) = v3;
static signed char v5 (signed char, unsigned int, unsigned short);
static signed char (*v6) (signed char, unsigned int, unsigned short) = v5;
extern void v7 (signed int);
extern void (*v8) (signed int);
static signed char v9 (unsigned short, signed int, unsigned short);
static signed char (*v10) (unsigned short, signed int, unsigned short) = v9;
extern void v11 (signed short, unsigned int, signed char);
extern void (*v12) (signed short, unsigned int, signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
unsigned short v17 (unsigned int, unsigned char, unsigned int, unsigned short);
unsigned short (*v18) (unsigned int, unsigned char, unsigned int, unsigned short) = v17;
extern signed char v19 (signed char, signed char, unsigned short);
extern signed char (*v20) (signed char, signed char, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed short v25 (unsigned short, signed int);
extern signed short (*v26) (unsigned short, signed int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (signed int, unsigned char, unsigned int);
extern void (*v30) (signed int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v66 = 0;
unsigned char v65 = 7;
unsigned int v64 = 0U;

unsigned short v17 (unsigned int v67, unsigned char v68, unsigned int v69, unsigned short v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 7;
unsigned char v72 = 6;
unsigned char v71 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v9 (unsigned short v74, signed int v75, unsigned short v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = -1;
unsigned int v78 = 0U;
signed int v77 = -4;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v80;
signed int v81;
unsigned short v82;
signed char v83;
v80 = v76 + v76;
v81 = v77 + v77;
v82 = v74 - v74;
v83 = v9 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 11: 
return 1;
case 12: 
return v79;
default: abort ();
}
}
}
}

static signed char v5 (signed char v84, unsigned int v85, unsigned short v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = 2;
signed short v88 = -1;
signed int v87 = 0;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v90;
signed int v91;
unsigned short v92;
signed char v93;
v90 = 7 + v86;
v91 = v87 + v87;
v92 = v86 - 1;
v93 = v9 (v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 13: 
return -4;
default: abort ();
}
}
}
}

unsigned char v3 (signed short v94, unsigned short v95, signed char v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = 1;
signed char v98 = 0;
signed short v97 = -4;
trace++;
switch (trace)
{
case 8: 
{
signed char v100;
unsigned int v101;
unsigned short v102;
signed char v103;
v100 = 0 + -2;
v101 = 1U + 5U;
v102 = 7 - 1;
v103 = v5 (v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 14: 
return 7;
default: abort ();
}
}
}
}
