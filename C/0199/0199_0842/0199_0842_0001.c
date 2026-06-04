#include <stdlib.h>
void v1 (unsigned char);
void (*v2) (unsigned char) = v1;
extern signed short v3 (signed char, signed int);
extern signed short (*v4) (signed char, signed int);
static unsigned int v5 (unsigned short);
static unsigned int (*v6) (unsigned short) = v5;
extern unsigned short v7 (signed int);
extern unsigned short (*v8) (signed int);
extern void v9 (void);
extern void (*v10) (void);
static unsigned char v11 (signed char, signed int);
static unsigned char (*v12) (signed char, signed int) = v11;
extern void v13 (unsigned int, signed int);
extern void (*v14) (unsigned int, signed int);
extern unsigned char v15 (signed short, unsigned int);
extern unsigned char (*v16) (signed short, unsigned int);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern unsigned int v19 (unsigned int, unsigned int, signed char);
extern unsigned int (*v20) (unsigned int, unsigned int, signed char);
unsigned short v21 (signed char, unsigned char, signed short, signed char);
unsigned short (*v22) (signed char, unsigned char, signed short, signed char) = v21;
extern unsigned char v23 (signed char);
extern unsigned char (*v24) (signed char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v27 (signed char, signed short, signed short, signed short);
extern void (*v28) (signed char, signed short, signed short, signed short);
extern void v29 (unsigned short);
extern void (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v51 = -3;
unsigned int v50 = 3U;
signed char v49 = -2;

unsigned short v21 (signed char v52, unsigned char v53, signed short v54, signed char v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 2;
unsigned short v57 = 7;
signed short v56 = -1;
trace++;
switch (trace)
{
case 2: 
return 0;
default: abort ();
}
}
}
}

static unsigned char v11 (signed char v59, signed int v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = 3;
signed int v62 = 3;
unsigned int v61 = 2U;
trace++;
switch (trace)
{
case 10: 
{
signed char v64;
unsigned char v65;
v64 = -4 - 0;
v65 = v23 (v64);
history[history_index++] = (int)v65;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}

static unsigned int v5 (unsigned short v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed char v69 = -1;
unsigned char v68 = 2;
signed int v67 = -2;
trace++;
switch (trace)
{
case 9: 
{
signed char v70;
signed int v71;
unsigned char v72;
v70 = v69 - v69;
v71 = 1 - -3;
v72 = v11 (v70, v71);
history[history_index++] = (int)v72;
}
break;
case 13: 
return 6U;
default: abort ();
}
}
}
}

void v1 (unsigned char v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 2U;
unsigned short v75 = 6;
unsigned int v74 = 6U;
trace++;
switch (trace)
{
case 0: 
{
signed char v77;
signed short v78;
signed short v79;
signed short v80;
v77 = 3 - 0;
v78 = 2 + 3;
v79 = -4 - -1;
v80 = 0 + -1;
v27 (v77, v78, v79, v80);
}
break;
case 4: 
{
unsigned int v81;
unsigned int v82;
signed char v83;
unsigned int v84;
v81 = v76 - 0U;
v82 = v76 + v76;
v83 = 2 + 3;
v84 = v19 (v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 6: 
{
unsigned int v85;
v85 = v25 ();
history[history_index++] = (int)v85;
}
break;
case 8: 
{
unsigned short v86;
unsigned int v87;
v86 = v75 + v75;
v87 = v5 (v86);
history[history_index++] = (int)v87;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
