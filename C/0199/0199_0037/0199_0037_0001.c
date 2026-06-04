#include <stdlib.h>
unsigned int v1 (unsigned short, signed short);
unsigned int (*v2) (unsigned short, signed short) = v1;
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
extern void v5 (signed char, signed char, signed int);
extern void (*v6) (signed char, signed char, signed int);
unsigned char v7 (signed short, unsigned short, unsigned int, signed short);
unsigned char (*v8) (signed short, unsigned short, unsigned int, signed short) = v7;
extern void v9 (unsigned char, signed char, signed short);
extern void (*v10) (unsigned char, signed char, signed short);
unsigned char v11 (unsigned char, unsigned short, signed short);
unsigned char (*v12) (unsigned char, unsigned short, signed short) = v11;
extern signed char v13 (unsigned short, signed short, unsigned char, signed int);
extern signed char (*v14) (unsigned short, signed short, unsigned char, signed int);
extern void v15 (unsigned short, signed char, unsigned int, unsigned char);
extern void (*v16) (unsigned short, signed char, unsigned int, unsigned char);
extern signed int v17 (void);
extern signed int (*v18) (void);
unsigned int v19 (unsigned int, unsigned int, signed int, unsigned char);
unsigned int (*v20) (unsigned int, unsigned int, signed int, unsigned char) = v19;
unsigned int v23 (unsigned char, signed char, unsigned int, signed int);
unsigned int (*v24) (unsigned char, signed char, unsigned int, signed int) = v23;
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
extern void v29 (signed short, signed int);
extern void (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v55 = 0;
signed char v54 = 1;
signed char v53 = -1;

unsigned int v23 (unsigned char v56, signed char v57, unsigned int v58, signed int v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = -3;
signed short v61 = 1;
signed int v60 = 0;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v63;
signed char v64;
v63 = v58 + 2U;
v64 = v25 (v63);
history[history_index++] = (int)v64;
}
break;
case 10: 
return v58;
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v65, unsigned int v66, signed int v67, unsigned char v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = -4;
unsigned int v70 = 1U;
unsigned int v69 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned char v72, unsigned short v73, signed short v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned int v77 = 0U;
signed char v76 = -3;
unsigned short v75 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed short v78, unsigned short v79, unsigned int v80, signed short v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 4;
unsigned int v83 = 5U;
signed short v82 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v85, signed short v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 4;
unsigned char v88 = 6;
unsigned int v87 = 7U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v90;
signed short v91;
unsigned char v92;
signed int v93;
signed char v94;
v90 = v89 + 1;
v91 = -3 - 2;
v92 = v88 + v88;
v93 = -4 - 0;
v94 = v13 (v90, v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 4: 
{
unsigned char v95;
signed char v96;
signed short v97;
v95 = v88 + v88;
v96 = 0 + 3;
v97 = -1 + -1;
v9 (v95, v96, v97);
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}
