#include <stdlib.h>
signed int v1 (signed short);
signed int (*v2) (signed short) = v1;
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
extern signed short v7 (unsigned int, signed char, signed int);
extern signed short (*v8) (unsigned int, signed char, signed int);
static unsigned short v9 (void);
static unsigned short (*v10) (void) = v9;
static unsigned char v11 (signed short, unsigned char, signed char);
static unsigned char (*v12) (signed short, unsigned char, signed char) = v11;
extern signed char v13 (signed int, signed short);
extern signed char (*v14) (signed int, signed short);
extern unsigned int v15 (unsigned int, unsigned char);
extern unsigned int (*v16) (unsigned int, unsigned char);
extern signed char v17 (unsigned short, unsigned int, unsigned char);
extern signed char (*v18) (unsigned short, unsigned int, unsigned char);
extern signed char v19 (signed char, signed char);
extern signed char (*v20) (signed char, signed char);
extern void v21 (unsigned char, signed int);
extern void (*v22) (unsigned char, signed int);
unsigned char v23 (unsigned char, signed int);
unsigned char (*v24) (unsigned char, signed int) = v23;
extern signed char v25 (unsigned int, signed char);
extern signed char (*v26) (unsigned int, signed char);
extern void v29 (unsigned int, signed int);
extern void (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v54 = 1;
signed int v53 = -4;
unsigned short v52 = 0;

unsigned char v23 (unsigned char v55, signed int v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = 3;
signed short v58 = 3;
signed char v57 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v11 (signed short v60, unsigned char v61, signed char v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 4;
signed char v64 = 1;
unsigned char v63 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v66;
unsigned char v67;
unsigned int v68;
v66 = 0U + 4U;
v67 = v63 - v63;
v68 = v15 (v66, v67);
history[history_index++] = (int)v68;
}
break;
case 9: 
{
signed int v69;
signed short v70;
signed char v71;
v69 = -1 + -3;
v70 = 1 - -1;
v71 = v13 (v69, v70);
history[history_index++] = (int)v71;
}
break;
case 13: 
return v61;
case 17: 
return v63;
default: abort ();
}
}
}
}

static unsigned short v9 (void)
{
{
for (;;) {
signed short v74 = -3;
signed char v73 = -2;
signed char v72 = -2;
trace++;
switch (trace)
{
case 8: 
{
signed short v75;
unsigned char v76;
signed char v77;
unsigned char v78;
v75 = v74 - v74;
v76 = 1 - 5;
v77 = v73 + -4;
v78 = v11 (v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 14: 
return 7;
default: abort ();
}
}
}
}

signed int v1 (signed short v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 5;
unsigned int v81 = 3U;
signed int v80 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v83;
signed char v84;
signed char v85;
v83 = v81 - v81;
v84 = -3 + -3;
v85 = v25 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 2: 
{
signed short v86;
unsigned char v87;
signed char v88;
unsigned char v89;
v86 = v79 - v79;
v87 = 7 + 3;
v88 = 0 - -1;
v89 = v11 (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 7: 
{
unsigned short v90;
v90 = v9 ();
history[history_index++] = (int)v90;
}
break;
case 15: 
return v80;
case 18: 
return -4;
default: abort ();
}
}
}
}
