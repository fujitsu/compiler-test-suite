#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short);
extern unsigned int (*v2) (unsigned short, signed short);
unsigned int v3 (unsigned char, unsigned int, unsigned char);
unsigned int (*v4) (unsigned char, unsigned int, unsigned char) = v3;
signed short v5 (void);
signed short (*v6) (void) = v5;
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern signed char v9 (unsigned int, unsigned int, signed short, signed short);
extern signed char (*v10) (unsigned int, unsigned int, signed short, signed short);
extern signed char v11 (signed int, unsigned short);
extern signed char (*v12) (signed int, unsigned short);
extern unsigned char v13 (unsigned short, unsigned short, unsigned int);
extern unsigned char (*v14) (unsigned short, unsigned short, unsigned int);
extern signed int v15 (unsigned char, unsigned int, unsigned char);
extern signed int (*v16) (unsigned char, unsigned int, unsigned char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
unsigned char v19 (signed char, signed int, signed char);
unsigned char (*v20) (signed char, signed int, signed char) = v19;
extern signed int v21 (unsigned int, unsigned char, signed int);
extern signed int (*v22) (unsigned int, unsigned char, signed int);
static signed int v23 (unsigned short, signed int, signed char);
static signed int (*v24) (unsigned short, signed int, signed char) = v23;
extern signed char v25 (signed char, signed char);
extern signed char (*v26) (signed char, signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
static unsigned short v29 (signed char, unsigned int, unsigned char, unsigned short);
static unsigned short (*v30) (signed char, unsigned int, unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v47 = 0;
unsigned int v46 = 3U;
unsigned char v45 = 2;

static unsigned short v29 (signed char v48, unsigned int v49, unsigned char v50, unsigned short v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = -3;
unsigned char v53 = 6;
signed short v52 = -2;
trace++;
switch (trace)
{
case 3: 
return v51;
case 5: 
return v51;
default: abort ();
}
}
}
}

static signed int v23 (unsigned short v55, signed int v56, signed char v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 4;
unsigned short v59 = 7;
signed char v58 = 2;
trace++;
switch (trace)
{
case 2: 
{
signed char v61;
unsigned int v62;
unsigned char v63;
unsigned short v64;
unsigned short v65;
v61 = v58 - -2;
v62 = 3U - 3U;
v63 = 5 + 5;
v64 = v60 + v59;
v65 = v29 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 4: 
{
signed char v66;
unsigned int v67;
unsigned char v68;
unsigned short v69;
unsigned short v70;
v66 = v57 + v57;
v67 = 4U + 5U;
v68 = 5 - 1;
v69 = v55 - v60;
v70 = v29 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 6: 
return v56;
default: abort ();
}
}
}
}

unsigned char v19 (signed char v71, signed int v72, signed char v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 0U;
unsigned short v75 = 0;
unsigned char v74 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
unsigned int v79 = 2U;
unsigned short v78 = 1;
unsigned char v77 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v80, unsigned int v81, unsigned char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned char v85 = 1;
signed short v84 = -3;
unsigned char v83 = 5;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v86;
signed int v87;
signed char v88;
signed int v89;
v86 = 3 - 4;
v87 = 1 + 0;
v88 = -3 - -4;
v89 = v23 (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 7: 
{
unsigned int v90;
v90 = v27 ();
history[history_index++] = (int)v90;
}
break;
case 9: 
{
unsigned int v91;
v91 = v27 ();
history[history_index++] = (int)v91;
}
break;
case 11: 
return 3U;
default: abort ();
}
}
}
}
