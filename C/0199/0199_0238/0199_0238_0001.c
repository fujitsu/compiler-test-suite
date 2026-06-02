#include <stdlib.h>
signed int v1 (unsigned char);
signed int (*v2) (unsigned char) = v1;
extern unsigned char v3 (unsigned int, signed short, signed int);
extern unsigned char (*v4) (unsigned int, signed short, signed int);
unsigned char v5 (unsigned short, unsigned int, unsigned int);
unsigned char (*v6) (unsigned short, unsigned int, unsigned int) = v5;
unsigned int v7 (signed char, signed int, unsigned short, unsigned int);
unsigned int (*v8) (signed char, signed int, unsigned short, unsigned int) = v7;
static signed char v9 (void);
static signed char (*v10) (void) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
unsigned short v13 (signed char);
unsigned short (*v14) (signed char) = v13;
extern unsigned short v15 (signed char, unsigned char);
extern unsigned short (*v16) (signed char, unsigned char);
extern void v17 (unsigned int, signed int, unsigned short, unsigned char);
extern void (*v18) (unsigned int, signed int, unsigned short, unsigned char);
extern signed char v19 (signed int, signed char, unsigned short, unsigned char);
extern signed char (*v20) (signed int, signed char, unsigned short, unsigned char);
extern void v21 (unsigned char, unsigned int, unsigned int);
extern void (*v22) (unsigned char, unsigned int, unsigned int);
extern unsigned short v23 (unsigned int, unsigned char);
extern unsigned short (*v24) (unsigned int, unsigned char);
extern void v25 (unsigned int, unsigned short, unsigned char);
extern void (*v26) (unsigned int, unsigned short, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned short v29 (signed short, signed char, unsigned short, signed short);
extern unsigned short (*v30) (signed short, signed char, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v53 = 2;
unsigned char v52 = 2;
unsigned int v51 = 1U;

unsigned short v13 (signed char v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned short v57 = 0;
signed short v56 = 1;
signed int v55 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v9 (void)
{
{
for (;;) {
signed int v60 = 0;
signed short v59 = 2;
unsigned int v58 = 5U;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v61;
unsigned short v62;
unsigned char v63;
v61 = v58 - 1U;
v62 = 1 - 4;
v63 = 3 + 0;
v25 (v61, v62, v63);
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}

unsigned int v7 (signed char v64, signed int v65, unsigned short v66, unsigned int v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed short v70 = -4;
signed short v69 = 0;
unsigned short v68 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v71, unsigned int v72, unsigned int v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = 1;
unsigned short v75 = 1;
unsigned int v74 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned char v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 1;
unsigned short v79 = 4;
unsigned char v78 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v81;
v81 = v27 ();
history[history_index++] = (int)v81;
}
break;
case 2: 
{
unsigned int v82;
unsigned short v83;
unsigned char v84;
v82 = 3U - 5U;
v83 = v79 - v79;
v84 = 0 + v80;
v25 (v82, v83, v84);
}
break;
case 4: 
{
signed int v85;
signed char v86;
unsigned short v87;
unsigned char v88;
signed char v89;
v85 = -1 + 1;
v86 = -3 + -4;
v87 = v79 + 2;
v88 = v78 + v78;
v89 = v19 (v85, v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 6: 
{
signed short v90;
v90 = v27 ();
history[history_index++] = (int)v90;
}
break;
case 8: 
{
signed char v91;
v91 = v9 ();
history[history_index++] = (int)v91;
}
break;
case 12: 
return -2;
case 14: 
return -2;
default: abort ();
}
}
}
}
