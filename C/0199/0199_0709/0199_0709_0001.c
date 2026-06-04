#include <stdlib.h>
extern signed int v3 (signed short, unsigned int, unsigned char);
extern signed int (*v4) (signed short, unsigned int, unsigned char);
extern unsigned char v5 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v6) (unsigned char, unsigned short, unsigned short);
unsigned short v7 (unsigned short);
unsigned short (*v8) (unsigned short) = v7;
extern void v9 (signed char, signed int, unsigned int);
extern void (*v10) (signed char, signed int, unsigned int);
extern signed short v11 (unsigned int, signed short, signed int, unsigned char);
extern signed short (*v12) (unsigned int, signed short, signed int, unsigned char);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
static unsigned int v15 (unsigned short, signed short, signed short, unsigned int);
static unsigned int (*v16) (unsigned short, signed short, signed short, unsigned int) = v15;
extern unsigned int v17 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned int (*v18) (unsigned char, unsigned int, unsigned short, signed char);
signed short v19 (signed int, signed char);
signed short (*v20) (signed int, signed char) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned short v23 (unsigned int, signed short);
extern unsigned short (*v24) (unsigned int, signed short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
static void v27 (unsigned char, unsigned int, unsigned short);
static void (*v28) (unsigned char, unsigned int, unsigned short) = v27;
extern signed int v29 (unsigned int, unsigned short);
extern signed int (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v56 = 1;
signed char v55 = -1;
signed short v54 = -1;

static void v27 (unsigned char v57, unsigned int v58, unsigned short v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned short v62 = 5;
signed short v61 = 3;
unsigned char v60 = 0;
trace++;
switch (trace)
{
case 8: 
return;
default: abort ();
}
}
}
}

signed short v19 (signed int v63, signed char v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = -1;
signed short v66 = -4;
signed int v65 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v15 (unsigned short v68, signed short v69, signed short v70, unsigned int v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = 1;
unsigned char v73 = 3;
signed int v72 = 0;
trace++;
switch (trace)
{
case 6: 
return v71;
case 10: 
return v71;
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
signed int v77 = -1;
signed short v76 = -1;
unsigned short v75 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = 2;
unsigned short v80 = 2;
signed int v79 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v82;
signed short v83;
signed short v84;
unsigned int v85;
unsigned int v86;
v82 = v78 + 4;
v83 = 1 + 3;
v84 = -2 + -4;
v85 = 1U + 3U;
v86 = v15 (v82, v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 7: 
{
unsigned char v87;
unsigned int v88;
unsigned short v89;
v87 = 1 + 6;
v88 = 6U - 5U;
v89 = v80 - 0;
v27 (v87, v88, v89);
}
break;
case 9: 
{
unsigned short v90;
signed short v91;
signed short v92;
unsigned int v93;
unsigned int v94;
v90 = v78 + v80;
v91 = 0 + 1;
v92 = 1 + -4;
v93 = 6U - 7U;
v94 = v15 (v90, v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 11: 
return v80;
default: abort ();
}
}
}
}
