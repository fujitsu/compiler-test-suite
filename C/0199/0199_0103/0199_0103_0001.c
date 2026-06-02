#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern unsigned short v5 (unsigned int, unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned int, unsigned int, unsigned short);
void v7 (signed int, unsigned char);
void (*v8) (signed int, unsigned char) = v7;
signed int v9 (unsigned char, unsigned short, signed char, unsigned int);
signed int (*v10) (unsigned char, unsigned short, signed char, unsigned int) = v9;
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned int v13 (unsigned char, signed short, unsigned short);
extern unsigned int (*v14) (unsigned char, signed short, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed int v17 (unsigned short, signed short);
extern signed int (*v18) (unsigned short, signed short);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
signed char v21 (signed short, unsigned char, signed char, unsigned char);
signed char (*v22) (signed short, unsigned char, signed char, unsigned char) = v21;
static void v23 (unsigned short, signed short, unsigned char, unsigned char);
static void (*v24) (unsigned short, signed short, unsigned char, unsigned char) = v23;
extern unsigned int v25 (signed short, unsigned int, signed int, unsigned short);
extern unsigned int (*v26) (signed short, unsigned int, signed int, unsigned short);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v49 = 1;
signed int v48 = 0;
unsigned short v47 = 2;

static void v23 (unsigned short v50, signed short v51, unsigned char v52, unsigned char v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned short v56 = 3;
signed char v55 = -2;
unsigned short v54 = 5;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v57;
v57 = v29 ();
history[history_index++] = (int)v57;
}
break;
case 5: 
{
unsigned int v58;
v58 = v29 ();
history[history_index++] = (int)v58;
}
break;
case 7: 
{
unsigned int v59;
v59 = v29 ();
history[history_index++] = (int)v59;
}
break;
case 9: 
return;
default: abort ();
}
}
}
}

signed char v21 (signed short v60, unsigned char v61, signed char v62, unsigned char v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 3;
unsigned short v65 = 0;
signed short v64 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned char v67, unsigned short v68, signed char v69, unsigned int v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 0U;
unsigned int v72 = 7U;
unsigned short v71 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed int v74, unsigned char v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 5;
signed short v77 = -3;
unsigned char v76 = 4;
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
unsigned int v81 = 3U;
unsigned short v80 = 7;
unsigned char v79 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed int v82;
signed int v83;
v82 = -2 + 0;
v83 = v3 (v82);
history[history_index++] = (int)v83;
}
break;
case 2: 
{
unsigned short v84;
signed short v85;
unsigned char v86;
unsigned char v87;
v84 = 7 - v80;
v85 = 1 - 3;
v86 = 0 - 3;
v87 = 6 + 5;
v23 (v84, v85, v86, v87);
}
break;
case 10: 
{
unsigned short v88;
signed short v89;
signed int v90;
v88 = 0 - 7;
v89 = -3 - -1;
v90 = v17 (v88, v89);
history[history_index++] = (int)v90;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
