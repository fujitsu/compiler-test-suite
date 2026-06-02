#include <stdlib.h>
extern unsigned short v1 (unsigned short);
extern unsigned short (*v2) (unsigned short);
extern signed char v3 (signed short, unsigned char, signed int, signed int);
extern signed char (*v4) (signed short, unsigned char, signed int, signed int);
extern unsigned short v5 (unsigned char, signed char, signed short);
extern unsigned short (*v6) (unsigned char, signed char, signed short);
extern void v7 (signed char, signed char, unsigned int);
extern void (*v8) (signed char, signed char, unsigned int);
unsigned short v9 (unsigned short, unsigned char, unsigned int);
unsigned short (*v10) (unsigned short, unsigned char, unsigned int) = v9;
extern signed char v11 (signed char, signed char, unsigned int, signed int);
extern signed char (*v12) (signed char, signed char, unsigned int, signed int);
unsigned char v13 (signed int);
unsigned char (*v14) (signed int) = v13;
extern unsigned int v15 (signed short);
extern unsigned int (*v16) (signed short);
extern signed short v17 (signed int, unsigned char);
extern signed short (*v18) (signed int, unsigned char);
extern signed int v19 (void);
extern signed int (*v20) (void);
signed char v21 (unsigned int, unsigned char, unsigned char);
signed char (*v22) (unsigned int, unsigned char, unsigned char) = v21;
extern unsigned short v23 (unsigned char, signed char, unsigned int);
extern unsigned short (*v24) (unsigned char, signed char, unsigned int);
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
static unsigned short v27 (signed short);
static unsigned short (*v28) (signed short) = v27;
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v65 = -2;
unsigned short v64 = 2;
unsigned int v63 = 5U;

unsigned int v29 (void)
{
{
for (;;) {
unsigned int v68 = 5U;
signed int v67 = 0;
unsigned int v66 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v27 (signed short v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed char v72 = -2;
unsigned int v71 = 5U;
unsigned short v70 = 6;
trace++;
switch (trace)
{
case 8: 
return v70;
default: abort ();
}
}
}
}

signed char v21 (unsigned int v73, unsigned char v74, unsigned char v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed short v78 = 1;
signed char v77 = 1;
signed char v76 = 0;
trace++;
switch (trace)
{
case 7: 
{
signed short v79;
unsigned short v80;
v79 = v78 + 1;
v80 = v27 (v79);
history[history_index++] = (int)v80;
}
break;
case 9: 
return v77;
default: abort ();
}
}
}
}

unsigned char v13 (signed int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = 1;
signed int v83 = 3;
signed int v82 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v85;
signed char v86;
unsigned int v87;
v85 = 1 + 2;
v86 = -2 - -1;
v87 = 7U + 7U;
v7 (v85, v86, v87);
}
break;
case 3: 
{
signed char v88;
unsigned short v89;
v88 = -4 + -1;
v89 = v25 (v88);
history[history_index++] = (int)v89;
}
break;
case 5: 
{
signed char v90;
signed char v91;
unsigned int v92;
v90 = -2 + 1;
v91 = -2 - 1;
v92 = 2U + 5U;
v7 (v90, v91, v92);
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v93, unsigned char v94, unsigned int v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 4;
signed int v97 = -4;
unsigned char v96 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
