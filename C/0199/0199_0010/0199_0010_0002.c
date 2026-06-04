#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
void v3 (unsigned int, signed short, signed char);
void (*v4) (unsigned int, signed short, signed char) = v3;
unsigned short v5 (unsigned int);
unsigned short (*v6) (unsigned int) = v5;
extern unsigned short v7 (signed char);
extern unsigned short (*v8) (signed char);
extern unsigned int v9 (signed short, unsigned short, signed short, signed int);
extern unsigned int (*v10) (signed short, unsigned short, signed short, signed int);
extern signed char v11 (signed int, signed short, unsigned char, unsigned int);
extern signed char (*v12) (signed int, signed short, unsigned char, unsigned int);
extern signed char v13 (signed int, unsigned short, signed short, unsigned int);
extern signed char (*v14) (signed int, unsigned short, signed short, unsigned int);
extern void v15 (signed char, unsigned char, signed short);
extern void (*v16) (signed char, unsigned char, signed short);
extern signed short v17 (unsigned short, signed char, signed int);
extern signed short (*v18) (unsigned short, signed char, signed int);
signed int v19 (void);
signed int (*v20) (void) = v19;
unsigned int v21 (unsigned char, signed short);
unsigned int (*v22) (unsigned char, signed short) = v21;
extern unsigned short v23 (signed short, signed short, unsigned short, unsigned int);
extern unsigned short (*v24) (signed short, signed short, unsigned short, unsigned int);
static unsigned short v25 (signed short, unsigned int, unsigned int);
static unsigned short (*v26) (signed short, unsigned int, unsigned int) = v25;
extern unsigned short v27 (signed int, unsigned char, unsigned int);
extern unsigned short (*v28) (signed int, unsigned char, unsigned int);
extern void v29 (signed short, unsigned int, signed char);
extern void (*v30) (signed short, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v60 = 7;
unsigned int v59 = 6U;
signed int v58 = 0;

static unsigned short v25 (signed short v61, unsigned int v62, unsigned int v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = -3;
signed short v65 = -3;
unsigned short v64 = 0;
trace++;
switch (trace)
{
case 4: 
return 7;
case 8: 
return v64;
default: abort ();
}
}
}
}

unsigned int v21 (unsigned char v67, signed short v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 5;
unsigned int v70 = 6U;
signed int v69 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
signed char v74 = 3;
unsigned short v73 = 2;
unsigned short v72 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned int v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 7;
unsigned int v77 = 2U;
unsigned char v76 = 4;
trace++;
switch (trace)
{
case 3: 
{
signed short v79;
unsigned int v80;
unsigned int v81;
unsigned short v82;
v79 = 0 - -2;
v80 = v77 - v77;
v81 = v75 - v75;
v82 = v25 (v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 5: 
{
signed short v83;
signed short v84;
unsigned short v85;
unsigned int v86;
unsigned short v87;
v83 = 3 + -4;
v84 = 3 - -4;
v85 = 0 + v78;
v86 = v75 - v77;
v87 = v23 (v83, v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 7: 
{
signed short v88;
unsigned int v89;
unsigned int v90;
unsigned short v91;
v88 = -1 + -2;
v89 = v77 + v75;
v90 = 4U - v75;
v91 = v25 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 9: 
return 5;
default: abort ();
}
}
}
}

void v3 (unsigned int v92, signed short v93, signed char v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = 1;
unsigned int v96 = 5U;
unsigned int v95 = 7U;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}
