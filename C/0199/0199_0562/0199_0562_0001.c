#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
unsigned short v7 (unsigned char, unsigned char);
unsigned short (*v8) (unsigned char, unsigned char) = v7;
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern unsigned char v11 (signed char, signed char, signed int, unsigned short);
extern unsigned char (*v12) (signed char, signed char, signed int, unsigned short);
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
static unsigned char v15 (signed char, signed short, unsigned char);
static unsigned char (*v16) (signed char, signed short, unsigned char) = v15;
extern void v17 (signed int, signed int);
extern void (*v18) (signed int, signed int);
extern signed int v19 (signed char, signed int, signed short, unsigned int);
extern signed int (*v20) (signed char, signed int, signed short, unsigned int);
signed char v21 (unsigned int, unsigned int, signed char, signed short);
signed char (*v22) (unsigned int, unsigned int, signed char, signed short) = v21;
signed short v23 (void);
signed short (*v24) (void) = v23;
extern unsigned char v25 (unsigned int, signed int, signed short, unsigned int);
extern unsigned char (*v26) (unsigned int, signed int, signed short, unsigned int);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern unsigned char v29 (unsigned char, signed short, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v50 = 6;
signed char v49 = 2;
unsigned short v48 = 5;

signed int v27 (void)
{
{
for (;;) {
unsigned int v53 = 0U;
signed char v52 = -2;
unsigned short v51 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
signed char v56 = 1;
unsigned short v55 = 4;
signed short v54 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned int v57, unsigned int v58, signed char v59, signed short v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = 3;
signed short v62 = -1;
unsigned short v61 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v15 (signed char v64, signed short v65, unsigned char v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 5U;
signed char v68 = 2;
unsigned int v67 = 1U;
trace++;
switch (trace)
{
case 1: 
{
signed int v70;
signed int v71;
v70 = -3 - 1;
v71 = -3 - -2;
v17 (v70, v71);
}
break;
case 3: 
{
signed int v72;
signed int v73;
v72 = -3 - 2;
v73 = 1 - -3;
v17 (v72, v73);
}
break;
case 5: 
{
signed int v74;
signed int v75;
v74 = 2 - -3;
v75 = 3 + -4;
v17 (v74, v75);
}
break;
case 7: 
{
signed int v76;
signed int v77;
v76 = 0 + 1;
v77 = -1 - 1;
v17 (v76, v77);
}
break;
case 9: 
{
signed int v78;
signed int v79;
v78 = -3 + -1;
v79 = 1 + 0;
v17 (v78, v79);
}
break;
case 11: 
return 5;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned char v80, unsigned char v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 0U;
signed char v83 = 2;
unsigned int v82 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
signed char v87 = -1;
unsigned char v86 = 6;
signed int v85 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed char v88;
signed short v89;
unsigned char v90;
unsigned char v91;
v88 = 3 + v87;
v89 = -2 - 2;
v90 = 0 - 3;
v91 = v15 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}
