#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
static unsigned short v5 (signed char, unsigned short);
static unsigned short (*v6) (signed char, unsigned short) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
signed short v9 (unsigned char, signed short, signed int, signed short);
signed short (*v10) (unsigned char, signed short, signed int, signed short) = v9;
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern signed int v13 (unsigned int, unsigned int, unsigned short);
extern signed int (*v14) (unsigned int, unsigned int, unsigned short);
static void v15 (unsigned char, signed short, signed char, signed short);
static void (*v16) (unsigned char, signed short, signed char, signed short) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned int v19 (signed short);
extern unsigned int (*v20) (signed short);
extern unsigned int v21 (unsigned int, signed int, signed int);
extern unsigned int (*v22) (unsigned int, signed int, signed int);
signed int v23 (unsigned char, signed short, signed int);
signed int (*v24) (unsigned char, signed short, signed int) = v23;
signed short v25 (signed int);
signed short (*v26) (signed int) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v42 = 5U;
signed short v41 = 0;
unsigned short v40 = 7;

signed short v25 (signed int v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 4U;
signed int v45 = -3;
unsigned char v44 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (unsigned char v47, signed short v48, signed int v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed int v52 = -3;
unsigned char v51 = 6;
unsigned short v50 = 2;
trace++;
switch (trace)
{
case 8: 
{
signed short v53;
unsigned char v54;
v53 = v48 + 3;
v54 = v11 (v53);
history[history_index++] = (int)v54;
}
break;
case 12: 
return v52;
default: abort ();
}
}
}
}

static void v15 (unsigned char v55, signed short v56, signed char v57, signed short v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 4U;
unsigned char v60 = 6;
unsigned short v59 = 1;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

signed short v9 (unsigned char v62, signed short v63, signed int v64, signed short v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 2U;
unsigned short v67 = 5;
unsigned short v66 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v5 (signed char v69, unsigned short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 3;
unsigned char v72 = 2;
unsigned char v71 = 2;
trace++;
switch (trace)
{
case 1: 
return 5;
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
signed short v76 = 1;
signed short v75 = -3;
signed int v74 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed char v77;
unsigned short v78;
unsigned short v79;
v77 = -3 + 1;
v78 = 7 + 2;
v79 = v5 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 2: 
{
unsigned char v80;
signed short v81;
signed char v82;
signed short v83;
v80 = 3 - 0;
v81 = v75 + v76;
v82 = -2 + -2;
v83 = v75 + v76;
v15 (v80, v81, v82, v83);
}
break;
case 4: 
{
unsigned short v84;
v84 = v7 ();
history[history_index++] = (int)v84;
}
break;
case 6: 
{
unsigned int v85;
unsigned int v86;
unsigned short v87;
signed int v88;
v85 = 3U + 7U;
v86 = 4U - 7U;
v87 = 1 - 3;
v88 = v13 (v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 14: 
return 3U;
default: abort ();
}
}
}
}
