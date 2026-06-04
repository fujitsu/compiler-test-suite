#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
void v3 (signed char, unsigned short);
void (*v4) (signed char, unsigned short) = v3;
extern signed char v5 (signed short, signed char, signed char, unsigned char);
extern signed char (*v6) (signed short, signed char, signed char, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
signed char v9 (signed char, signed char);
signed char (*v10) (signed char, signed char) = v9;
extern signed short v11 (signed int, unsigned int);
extern signed short (*v12) (signed int, unsigned int);
extern signed short v15 (unsigned short, unsigned char, unsigned short);
extern signed short (*v16) (unsigned short, unsigned char, unsigned short);
signed short v17 (signed int, unsigned int, signed short);
signed short (*v18) (signed int, unsigned int, signed short) = v17;
extern unsigned int v19 (unsigned char, unsigned int, signed char, unsigned short);
extern unsigned int (*v20) (unsigned char, unsigned int, signed char, unsigned short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed char v23 (signed char, unsigned short, unsigned char);
extern signed char (*v24) (signed char, unsigned short, unsigned char);
signed short v25 (unsigned short, unsigned char, signed int);
signed short (*v26) (unsigned short, unsigned char, signed int) = v25;
extern signed char v29 (signed short, unsigned int, signed short);
extern signed char (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v59 = 5;
signed int v58 = -2;
signed char v57 = -2;

signed short v25 (unsigned short v60, unsigned char v61, signed int v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 1;
signed short v64 = -2;
signed int v63 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed int v66, unsigned int v67, signed short v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 7;
signed char v70 = -1;
signed int v69 = -4;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v72;
v72 = v21 ();
history[history_index++] = (int)v72;
}
break;
case 13: 
return -3;
default: abort ();
}
}
}
}

signed char v9 (signed char v73, signed char v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = 1;
signed short v76 = -1;
unsigned short v75 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed char v78, unsigned short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 1;
unsigned short v81 = 2;
unsigned short v80 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
signed char v85 = -2;
signed char v84 = -1;
signed char v83 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed short v86;
unsigned int v87;
signed short v88;
signed char v89;
v86 = -2 - -2;
v87 = 3U + 1U;
v88 = -4 - 0;
v89 = v29 (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 2: 
{
signed short v90;
unsigned int v91;
signed short v92;
signed char v93;
v90 = -2 + -4;
v91 = 1U - 1U;
v92 = 1 + -4;
v93 = v29 (v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 4: 
{
signed short v94;
v94 = v7 ();
history[history_index++] = (int)v94;
}
break;
case 16: 
return 5;
default: abort ();
}
}
}
}
