#include <stdlib.h>
unsigned int v1 (signed char);
unsigned int (*v2) (signed char) = v1;
extern signed char v3 (unsigned int, signed int, signed int);
extern signed char (*v4) (unsigned int, signed int, signed int);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern unsigned short v13 (signed short, signed char, signed short, signed char);
extern unsigned short (*v14) (signed short, signed char, signed short, signed char);
static unsigned char v15 (signed int, unsigned short, unsigned int, signed short);
static unsigned char (*v16) (signed int, unsigned short, unsigned int, signed short) = v15;
unsigned char v17 (signed short);
unsigned char (*v18) (signed short) = v17;
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern signed short v25 (unsigned short, signed int, signed short);
extern signed short (*v26) (unsigned short, signed int, signed short);
signed int v27 (signed int, signed char, unsigned short, signed char);
signed int (*v28) (signed int, signed char, unsigned short, signed char) = v27;
unsigned int v29 (signed int, signed char);
unsigned int (*v30) (signed int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v51 = -4;
signed int v50 = -2;
unsigned short v49 = 2;

unsigned int v29 (signed int v52, signed char v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = 3;
signed short v55 = 2;
unsigned short v54 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (signed int v57, signed char v58, unsigned short v59, signed char v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 5U;
signed char v62 = -1;
signed int v61 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
unsigned short v66 = 4;
signed short v65 = -2;
signed short v64 = -1;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v67;
unsigned int v68;
v67 = 1U - 0U;
v68 = v23 (v67);
history[history_index++] = (int)v68;
}
break;
case 9: 
{
unsigned int v69;
unsigned int v70;
v69 = 0U - 2U;
v70 = v23 (v69);
history[history_index++] = (int)v70;
}
break;
case 11: 
return v66;
default: abort ();
}
}
}
}

unsigned char v17 (signed short v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
unsigned int v74 = 2U;
unsigned short v73 = 1;
signed short v72 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v15 (signed int v75, unsigned short v76, unsigned int v77, signed short v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = -2;
signed short v80 = -1;
signed char v79 = -2;
trace++;
switch (trace)
{
case 1: 
return 7;
default: abort ();
}
}
}
}

unsigned int v1 (signed char v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 2;
signed short v84 = -1;
signed short v83 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed int v86;
unsigned short v87;
unsigned int v88;
signed short v89;
unsigned char v90;
v86 = 3 - -1;
v87 = v85 + 5;
v88 = 1U + 3U;
v89 = -4 + v83;
v90 = v15 (v86, v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 2: 
{
unsigned short v91;
signed int v92;
signed short v93;
signed short v94;
v91 = 6 - v85;
v92 = 3 - -3;
v93 = -4 - -3;
v94 = v25 (v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 14: 
return 7U;
default: abort ();
}
}
}
}
