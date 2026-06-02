#include <stdlib.h>
extern void v1 (signed int, signed short);
extern void (*v2) (signed int, signed short);
extern signed int v3 (signed int, unsigned char, unsigned short);
extern signed int (*v4) (signed int, unsigned char, unsigned short);
extern signed short v5 (void);
extern signed short (*v6) (void);
signed short v7 (unsigned short);
signed short (*v8) (unsigned short) = v7;
signed char v9 (signed char);
signed char (*v10) (signed char) = v9;
extern unsigned int v11 (signed short, unsigned char);
extern unsigned int (*v12) (signed short, unsigned char);
extern unsigned char v13 (signed char, signed short, signed char);
extern unsigned char (*v14) (signed char, signed short, signed char);
signed char v15 (unsigned int, signed int, signed int, signed int);
signed char (*v16) (unsigned int, signed int, signed int, signed int) = v15;
extern signed char v17 (signed int, signed short, unsigned short);
extern signed char (*v18) (signed int, signed short, unsigned short);
unsigned int v19 (unsigned short, signed char);
unsigned int (*v20) (unsigned short, signed char) = v19;
extern unsigned char v21 (unsigned char);
extern unsigned char (*v22) (unsigned char);
extern unsigned char v23 (signed int, unsigned short, signed char, unsigned char);
extern unsigned char (*v24) (signed int, unsigned short, signed char, unsigned char);
unsigned short v25 (unsigned char, signed short, signed int, unsigned int);
unsigned short (*v26) (unsigned char, signed short, signed int, unsigned int) = v25;
signed char v27 (unsigned char);
signed char (*v28) (unsigned char) = v27;
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v46 = -2;
signed char v45 = 1;
unsigned char v44 = 0;

unsigned short v29 (void)
{
{
for (;;) {
unsigned short v49 = 1;
signed char v48 = 1;
signed char v47 = -1;
trace++;
switch (trace)
{
case 1: 
return v49;
case 7: 
return v49;
default: abort ();
}
}
}
}

signed char v27 (unsigned char v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
unsigned short v53 = 0;
unsigned int v52 = 7U;
unsigned char v51 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (unsigned char v54, signed short v55, signed int v56, unsigned int v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = -4;
unsigned int v59 = 6U;
signed char v58 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v61, signed char v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 0;
signed int v64 = 1;
unsigned char v63 = 3;
trace++;
switch (trace)
{
case 4: 
{
signed int v66;
signed short v67;
unsigned short v68;
signed char v69;
v66 = -2 - v64;
v67 = v65 - 2;
v68 = v61 - v61;
v69 = v17 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 6: 
{
unsigned short v70;
v70 = v29 ();
history[history_index++] = (int)v70;
}
break;
case 8: 
{
signed int v71;
signed short v72;
unsigned short v73;
signed char v74;
v71 = -4 + v64;
v72 = 0 + 1;
v73 = 7 + 6;
v74 = v17 (v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 10: 
{
signed int v75;
signed short v76;
unsigned short v77;
signed char v78;
v75 = v64 + v64;
v76 = -1 - -2;
v77 = 3 - v61;
v78 = v17 (v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 12: 
return 3U;
case 14: 
return 2U;
case 16: 
return 5U;
default: abort ();
}
}
}
}

signed char v15 (unsigned int v79, signed int v80, signed int v81, signed int v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 5;
signed char v84 = -3;
unsigned int v83 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed char v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = 2;
signed short v88 = -3;
unsigned int v87 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = 3;
signed char v92 = 0;
signed char v91 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
