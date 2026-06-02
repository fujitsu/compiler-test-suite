#include <stdlib.h>
extern void v1 (signed char, signed char, signed int, unsigned short);
extern void (*v2) (signed char, signed char, signed int, unsigned short);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
signed char v5 (unsigned int);
signed char (*v6) (unsigned int) = v5;
signed short v7 (void);
signed short (*v8) (void) = v7;
void v9 (unsigned short, unsigned int, signed short, unsigned short);
void (*v10) (unsigned short, unsigned int, signed short, unsigned short) = v9;
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern signed short v15 (signed int, signed char, signed int);
extern signed short (*v16) (signed int, signed char, signed int);
unsigned int v17 (signed short, unsigned short, unsigned int, unsigned char);
unsigned int (*v18) (signed short, unsigned short, unsigned int, unsigned char) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
static signed char v21 (unsigned char, signed char, unsigned char);
static signed char (*v22) (unsigned char, signed char, unsigned char) = v21;
extern signed char v23 (signed char, unsigned char, unsigned char, unsigned char);
extern signed char (*v24) (signed char, unsigned char, unsigned char, unsigned char);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v49 = 5;
unsigned char v48 = 2;
unsigned short v47 = 2;

signed char v25 (void)
{
{
for (;;) {
signed int v52 = -4;
unsigned int v51 = 3U;
unsigned int v50 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v21 (unsigned char v53, signed char v54, unsigned char v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 5;
signed short v57 = -3;
signed char v56 = 2;
trace++;
switch (trace)
{
case 2: 
return v56;
case 4: 
return v56;
case 6: 
{
v27 ();
}
break;
case 8: 
{
v27 ();
}
break;
case 10: 
{
v27 ();
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

unsigned int v17 (signed short v59, unsigned short v60, unsigned int v61, unsigned char v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = -2;
unsigned short v64 = 0;
unsigned char v63 = 5;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v66;
signed char v67;
unsigned char v68;
signed char v69;
v66 = v63 - v63;
v67 = -4 - -3;
v68 = v63 - v63;
v69 = v21 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 3: 
{
unsigned char v70;
signed char v71;
unsigned char v72;
signed char v73;
v70 = v63 + v62;
v71 = 1 + 3;
v72 = v62 + 2;
v73 = v21 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 5: 
{
unsigned char v74;
signed char v75;
unsigned char v76;
signed char v77;
v74 = 3 - 4;
v75 = -2 - 3;
v76 = 5 - v62;
v77 = v21 (v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 13: 
return 7U;
default: abort ();
}
}
}
}

void v9 (unsigned short v78, unsigned int v79, signed short v80, unsigned short v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = 0;
signed char v83 = 2;
signed int v82 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
signed char v87 = -3;
unsigned short v86 = 3;
signed short v85 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned int v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = -2;
signed short v90 = -2;
unsigned char v89 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
