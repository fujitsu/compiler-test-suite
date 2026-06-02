#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
unsigned int v3 (signed char);
unsigned int (*v4) (signed char) = v3;
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (signed int, signed char);
extern signed int (*v8) (signed int, signed char);
extern void v9 (void);
extern void (*v10) (void);
unsigned char v11 (signed short);
unsigned char (*v12) (signed short) = v11;
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
unsigned char v17 (signed char, signed int, unsigned int);
unsigned char (*v18) (signed char, signed int, unsigned int) = v17;
void v19 (unsigned char);
void (*v20) (unsigned char) = v19;
extern void v21 (unsigned char, signed char);
extern void (*v22) (unsigned char, signed char);
extern unsigned char v23 (signed short, signed int, signed char, unsigned short);
extern unsigned char (*v24) (signed short, signed int, signed char, unsigned short);
static unsigned char v25 (unsigned int, signed int, signed char);
static unsigned char (*v26) (unsigned int, signed int, signed char) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v53 = -2;
unsigned int v52 = 7U;
unsigned char v51 = 6;

static unsigned char v25 (unsigned int v54, signed int v55, signed char v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 5U;
unsigned char v58 = 2;
signed int v57 = -4;
trace++;
switch (trace)
{
case 7: 
return 3;
case 11: 
return v58;
default: abort ();
}
}
}
}

void v19 (unsigned char v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = 0;
signed short v62 = -2;
signed char v61 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed char v64, signed int v65, unsigned int v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 2U;
signed short v68 = 2;
unsigned int v67 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed short v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 2;
unsigned char v72 = 1;
unsigned int v71 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed char v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = 3;
signed char v76 = 3;
unsigned char v75 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
unsigned int v80 = 5U;
signed short v79 = 3;
unsigned char v78 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v81;
unsigned char v82;
v81 = v78 - v78;
v82 = v13 (v81);
history[history_index++] = (int)v82;
}
break;
case 6: 
{
unsigned int v83;
signed int v84;
signed char v85;
unsigned char v86;
v83 = 3U + v80;
v84 = 1 + 1;
v85 = -4 - 3;
v86 = v25 (v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 8: 
{
signed char v87;
unsigned char v88;
v87 = -1 + -3;
v88 = v29 (v87);
history[history_index++] = (int)v88;
}
break;
case 10: 
{
unsigned int v89;
signed int v90;
signed char v91;
unsigned char v92;
v89 = v80 + v80;
v90 = 0 + -1;
v91 = -3 - -1;
v92 = v25 (v89, v90, v91);
history[history_index++] = (int)v92;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}
