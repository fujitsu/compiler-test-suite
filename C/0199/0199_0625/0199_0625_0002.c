#include <stdlib.h>
extern signed char v1 (signed short);
extern signed char (*v2) (signed short);
extern unsigned short v3 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned short (*v4) (unsigned char, unsigned int, unsigned short, signed char);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
unsigned char v7 (unsigned short, signed int);
unsigned char (*v8) (unsigned short, signed int) = v7;
signed short v9 (signed char);
signed short (*v10) (signed char) = v9;
extern signed int v11 (unsigned short, unsigned int, signed short, signed short);
extern signed int (*v12) (unsigned short, unsigned int, signed short, signed short);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern signed short v15 (unsigned char, unsigned char, signed int, unsigned short);
extern signed short (*v16) (unsigned char, unsigned char, signed int, unsigned short);
extern signed int v17 (signed char, unsigned char);
extern signed int (*v18) (signed char, unsigned char);
signed int v19 (signed short, signed char);
signed int (*v20) (signed short, signed char) = v19;
signed short v21 (signed int, unsigned int);
signed short (*v22) (signed int, unsigned int) = v21;
unsigned char v23 (unsigned short, unsigned int, signed char);
unsigned char (*v24) (unsigned short, unsigned int, signed char) = v23;
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern unsigned char v27 (signed int, unsigned char, signed short, unsigned short);
extern unsigned char (*v28) (signed int, unsigned char, signed short, unsigned short);
static unsigned char v29 (void);
static unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v59 = 3;
unsigned int v58 = 6U;
signed short v57 = 0;

static unsigned char v29 (void)
{
{
for (;;) {
signed short v62 = -1;
signed short v61 = -1;
signed short v60 = -3;
trace++;
switch (trace)
{
case 4: 
return 1;
case 6: 
return 1;
case 8: 
return 4;
case 10: 
return 6;
default: abort ();
}
}
}
}

unsigned int v25 (void)
{
{
for (;;) {
unsigned short v65 = 6;
unsigned short v64 = 7;
signed int v63 = -1;
trace++;
switch (trace)
{
case 1: 
return 3U;
case 3: 
{
unsigned char v66;
v66 = v29 ();
history[history_index++] = (int)v66;
}
break;
case 5: 
{
unsigned char v67;
v67 = v29 ();
history[history_index++] = (int)v67;
}
break;
case 7: 
{
unsigned char v68;
v68 = v29 ();
history[history_index++] = (int)v68;
}
break;
case 9: 
{
unsigned char v69;
v69 = v29 ();
history[history_index++] = (int)v69;
}
break;
case 11: 
return 4U;
default: abort ();
}
}
}
}

unsigned char v23 (unsigned short v70, unsigned int v71, signed char v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 4;
unsigned int v74 = 6U;
unsigned int v73 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed int v76, unsigned int v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = -2;
signed char v79 = -4;
unsigned short v78 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed short v81, signed char v82)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = 1;
signed short v84 = -2;
unsigned short v83 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed char v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = -3;
signed int v88 = 0;
signed int v87 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v90, signed int v91)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = 2;
unsigned char v93 = 5;
unsigned int v92 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
