#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, signed char);
extern unsigned char (*v2) (unsigned short, signed char, signed char);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
extern void v5 (signed int, signed int, unsigned short, signed int);
extern void (*v6) (signed int, signed int, unsigned short, signed int);
unsigned short v7 (signed int, signed int);
unsigned short (*v8) (signed int, signed int) = v7;
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern signed short v11 (signed int, signed short, unsigned short);
extern signed short (*v12) (signed int, signed short, unsigned short);
extern signed char v13 (unsigned short, unsigned short, signed char, unsigned short);
extern signed char (*v14) (unsigned short, unsigned short, signed char, unsigned short);
extern unsigned char v15 (signed int);
extern unsigned char (*v16) (signed int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (signed char, unsigned int);
extern unsigned int (*v20) (signed char, unsigned int);
signed int v21 (signed int, unsigned char, signed int);
signed int (*v22) (signed int, unsigned char, signed int) = v21;
static unsigned short v23 (unsigned short, unsigned short, unsigned char);
static unsigned short (*v24) (unsigned short, unsigned short, unsigned char) = v23;
extern unsigned short v25 (unsigned short, signed int, unsigned char, signed int);
extern unsigned short (*v26) (unsigned short, signed int, unsigned char, signed int);
unsigned short v27 (unsigned char, signed char, signed short, signed short);
unsigned short (*v28) (unsigned char, signed char, signed short, signed short) = v27;
extern unsigned char v29 (unsigned short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v50 = 1;
signed char v49 = -3;
signed int v48 = 3;

unsigned short v27 (unsigned char v51, signed char v52, signed short v53, signed short v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 4U;
signed short v56 = 2;
unsigned int v55 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v23 (unsigned short v58, unsigned short v59, unsigned char v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 1;
signed int v62 = -2;
unsigned int v61 = 1U;
trace++;
switch (trace)
{
case 7: 
return v59;
case 9: 
{
unsigned short v64;
unsigned short v65;
signed char v66;
unsigned short v67;
signed char v68;
v64 = v58 - v59;
v65 = 5 - v59;
v66 = 3 + -2;
v67 = v63 - 5;
v68 = v13 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

signed int v21 (signed int v69, unsigned char v70, signed int v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = 1;
unsigned short v73 = 1;
unsigned short v72 = 7;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v75;
unsigned short v76;
unsigned char v77;
unsigned short v78;
v75 = 0 - v72;
v76 = 7 + v72;
v77 = 5 + 6;
v78 = v23 (v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 8: 
{
unsigned short v79;
unsigned short v80;
unsigned char v81;
unsigned short v82;
v79 = v73 - v73;
v80 = v73 + 2;
v81 = 7 + 7;
v82 = v23 (v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 12: 
return v74;
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
signed char v85 = -3;
signed int v84 = -4;
unsigned short v83 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed int v86, signed int v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 5;
unsigned short v89 = 1;
signed char v88 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
