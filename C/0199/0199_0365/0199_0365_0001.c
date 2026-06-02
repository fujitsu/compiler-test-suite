#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern signed short v3 (signed int);
extern signed short (*v4) (signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (signed int);
extern signed int (*v8) (signed int);
static signed short v9 (void);
static signed short (*v10) (void) = v9;
static unsigned int v11 (unsigned short);
static unsigned int (*v12) (unsigned short) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
void v15 (signed short);
void (*v16) (signed short) = v15;
extern signed short v17 (signed char, signed short, signed char, unsigned int);
extern signed short (*v18) (signed char, signed short, signed char, unsigned int);
extern unsigned short v19 (unsigned int, signed short);
extern unsigned short (*v20) (unsigned int, signed short);
extern unsigned int v21 (unsigned int, unsigned char, signed int);
extern unsigned int (*v22) (unsigned int, unsigned char, signed int);
extern signed short v23 (void);
extern signed short (*v24) (void);
static signed int v25 (unsigned char, unsigned char);
static signed int (*v26) (unsigned char, unsigned char) = v25;
extern signed char v27 (signed int, signed int);
extern signed char (*v28) (signed int, signed int);
static unsigned char v29 (unsigned char, unsigned char, signed char);
static unsigned char (*v30) (unsigned char, unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v50 = 2;
signed int v49 = 0;
unsigned char v48 = 4;

static unsigned char v29 (unsigned char v51, unsigned char v52, signed char v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed int v56 = 3;
unsigned short v55 = 2;
unsigned short v54 = 6;
trace++;
switch (trace)
{
case 11: 
return v51;
default: abort ();
}
}
}
}

static signed int v25 (unsigned char v57, unsigned char v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed char v61 = -4;
unsigned short v60 = 0;
signed char v59 = 3;
trace++;
switch (trace)
{
case 6: 
return -3;
case 8: 
return -1;
case 10: 
{
unsigned char v62;
unsigned char v63;
signed char v64;
unsigned char v65;
v62 = 3 - 5;
v63 = v58 + v58;
v64 = 1 - -3;
v65 = v29 (v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

void v15 (signed short v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed char v69 = 1;
unsigned short v68 = 7;
signed int v67 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v11 (unsigned short v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = -4;
unsigned int v72 = 4U;
unsigned char v71 = 3;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v74;
unsigned char v75;
signed int v76;
v74 = v71 - v71;
v75 = v71 - v71;
v76 = v25 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 7: 
{
unsigned char v77;
unsigned char v78;
signed int v79;
v77 = v71 + v71;
v78 = v71 - v71;
v79 = v25 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 9: 
{
unsigned char v80;
unsigned char v81;
signed int v82;
v80 = 0 - 0;
v81 = v71 + v71;
v82 = v25 (v80, v81);
history[history_index++] = (int)v82;
}
break;
case 13: 
return 7U;
default: abort ();
}
}
}
}

static signed short v9 (void)
{
{
for (;;) {
signed int v85 = -2;
signed char v84 = 2;
signed char v83 = -3;
trace++;
switch (trace)
{
case 3: 
return 1;
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed int v88 = -4;
unsigned int v87 = 7U;
unsigned int v86 = 4U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v89;
signed short v90;
unsigned short v91;
v89 = v86 - v87;
v90 = 0 + 1;
v91 = v19 (v89, v90);
history[history_index++] = (int)v91;
}
break;
case 2: 
{
signed short v92;
v92 = v9 ();
history[history_index++] = (int)v92;
}
break;
case 4: 
{
unsigned short v93;
unsigned int v94;
v93 = 1 + 1;
v94 = v11 (v93);
history[history_index++] = (int)v94;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
