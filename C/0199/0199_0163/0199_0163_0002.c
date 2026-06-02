#include <stdlib.h>
extern unsigned short v1 (signed char, unsigned char);
extern unsigned short (*v2) (signed char, unsigned char);
extern signed short v5 (signed short, signed char, signed int);
extern signed short (*v6) (signed short, signed char, signed int);
signed char v7 (signed short, signed int);
signed char (*v8) (signed short, signed int) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
unsigned short v13 (signed int);
unsigned short (*v14) (signed int) = v13;
unsigned short v15 (unsigned short, signed int, signed short);
unsigned short (*v16) (unsigned short, signed int, signed short) = v15;
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern void v19 (unsigned short, signed short, signed int);
extern void (*v20) (unsigned short, signed short, signed int);
static unsigned short v21 (signed char, unsigned short);
static unsigned short (*v22) (signed char, unsigned short) = v21;
extern signed int v23 (signed short, signed int);
extern signed int (*v24) (signed short, signed int);
signed short v25 (signed short, signed char, unsigned char, signed char);
signed short (*v26) (signed short, signed char, unsigned char, signed char) = v25;
extern signed char v27 (signed int, signed int);
extern signed char (*v28) (signed int, signed int);
extern unsigned int v29 (unsigned short, signed short);
extern unsigned int (*v30) (unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v64 = -3;
unsigned short v63 = 1;
unsigned char v62 = 3;

signed short v25 (signed short v65, signed char v66, unsigned char v67, signed char v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = -2;
unsigned char v70 = 0;
unsigned short v69 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v21 (signed char v72, unsigned short v73)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed short v76 = 0;
signed short v75 = -3;
unsigned int v74 = 2U;
trace++;
switch (trace)
{
case 7: 
return 5;
case 9: 
return v73;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v77, signed int v78, signed short v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 2U;
unsigned short v81 = 7;
signed short v80 = -3;
trace++;
switch (trace)
{
case 6: 
{
signed char v83;
unsigned short v84;
unsigned short v85;
v83 = 0 + 0;
v84 = v81 + v77;
v85 = v21 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 8: 
{
signed char v86;
unsigned short v87;
unsigned short v88;
v86 = 2 + -2;
v87 = v77 + v77;
v88 = v21 (v86, v87);
history[history_index++] = (int)v88;
}
break;
case 10: 
{
signed char v89;
unsigned short v90;
unsigned short v91;
v89 = 2 + 2;
v90 = v81 + v77;
v91 = v21 (v89, v90);
history[history_index++] = (int)v91;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}

unsigned short v13 (signed int v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 1;
unsigned short v94 = 0;
signed char v93 = -3;
trace++;
switch (trace)
{
case 1: 
return v94;
default: abort ();
}
}
}
}

signed char v7 (signed short v96, signed int v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = 0;
signed char v99 = -2;
signed int v98 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
