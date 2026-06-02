#include <stdlib.h>
signed short v1 (unsigned char);
signed short (*v2) (unsigned char) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (unsigned short, unsigned char, unsigned short, signed char);
extern unsigned char (*v8) (unsigned short, unsigned char, unsigned short, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed int v11 (unsigned char, unsigned int, unsigned char);
extern signed int (*v12) (unsigned char, unsigned int, unsigned char);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern signed char v15 (signed short, signed int);
extern signed char (*v16) (signed short, signed int);
extern signed int v17 (signed short, unsigned char);
extern signed int (*v18) (signed short, unsigned char);
extern unsigned short v19 (signed short, signed short);
extern unsigned short (*v20) (signed short, signed short);
static signed short v21 (unsigned short, unsigned char);
static signed short (*v22) (unsigned short, unsigned char) = v21;
extern void v23 (signed char, signed char, unsigned char);
extern void (*v24) (signed char, signed char, unsigned char);
extern void v25 (unsigned int, signed int);
extern void (*v26) (unsigned int, signed int);
unsigned char v27 (signed char, signed int);
unsigned char (*v28) (signed char, signed int) = v27;
signed char v29 (unsigned char, unsigned int, unsigned short);
signed char (*v30) (unsigned char, unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v64 = 3;
signed int v63 = -2;
unsigned char v62 = 3;

signed char v29 (unsigned char v65, unsigned int v66, unsigned short v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = -1;
unsigned int v69 = 6U;
unsigned char v68 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v27 (signed char v71, signed int v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 4U;
signed short v74 = -3;
unsigned short v73 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v21 (unsigned short v76, unsigned char v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned int v80 = 3U;
signed int v79 = 2;
unsigned char v78 = 1;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

signed short v1 (unsigned char v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 2;
unsigned char v83 = 6;
signed short v82 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v85;
unsigned char v86;
signed short v87;
v85 = 5 + 4;
v86 = v84 - v84;
v87 = v21 (v85, v86);
history[history_index++] = (int)v87;
}
break;
case 2: 
{
signed char v88;
signed char v89;
unsigned char v90;
v88 = 2 + 0;
v89 = -4 + 3;
v90 = v81 + v84;
v23 (v88, v89, v90);
}
break;
case 4: 
return v82;
case 5: 
{
signed short v91;
signed short v92;
unsigned short v93;
v91 = v82 - v82;
v92 = -1 + 0;
v93 = v19 (v91, v92);
history[history_index++] = (int)v93;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}
