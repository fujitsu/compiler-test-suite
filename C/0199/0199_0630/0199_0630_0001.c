#include <stdlib.h>
unsigned char v1 (signed short, signed short);
unsigned char (*v2) (signed short, signed short) = v1;
extern signed short v3 (unsigned short, signed char);
extern signed short (*v4) (unsigned short, signed char);
unsigned int v5 (unsigned short, signed char, unsigned char, signed char);
unsigned int (*v6) (unsigned short, signed char, unsigned char, signed char) = v5;
unsigned int v7 (unsigned short, unsigned int, unsigned short);
unsigned int (*v8) (unsigned short, unsigned int, unsigned short) = v7;
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
unsigned int v11 (signed int, signed char);
unsigned int (*v12) (signed int, signed char) = v11;
extern unsigned short v13 (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned int, signed char, unsigned char, unsigned int);
extern signed int v15 (signed short);
extern signed int (*v16) (signed short);
signed int v17 (signed short, signed char, unsigned int);
signed int (*v18) (signed short, signed char, unsigned int) = v17;
extern unsigned char v19 (signed int, unsigned int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned int, unsigned char);
static unsigned int v21 (unsigned int);
static unsigned int (*v22) (unsigned int) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
static signed int v25 (void);
static signed int (*v26) (void) = v25;
extern unsigned int v27 (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned int (*v28) (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v48 = 1U;
unsigned char v47 = 5;
unsigned char v46 = 3;

static signed int v25 (void)
{
{
for (;;) {
unsigned char v51 = 7;
unsigned char v50 = 3;
signed int v49 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v52;
unsigned int v53;
v52 = 6 - 6;
v53 = v29 (v52);
history[history_index++] = (int)v53;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

static unsigned int v21 (unsigned int v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 4U;
signed int v56 = 0;
signed int v55 = -1;
trace++;
switch (trace)
{
case 6: 
return v57;
case 8: 
return v54;
case 10: 
return v57;
default: abort ();
}
}
}
}

signed int v17 (signed short v58, signed char v59, unsigned int v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 5;
unsigned short v62 = 2;
unsigned char v61 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed int v64, signed char v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned char v68 = 3;
signed short v67 = 3;
unsigned char v66 = 4;
trace++;
switch (trace)
{
case 3: 
return 6U;
case 5: 
{
unsigned int v69;
unsigned int v70;
v69 = 7U - 6U;
v70 = v21 (v69);
history[history_index++] = (int)v70;
}
break;
case 7: 
{
unsigned int v71;
unsigned int v72;
v71 = 2U - 6U;
v72 = v21 (v71);
history[history_index++] = (int)v72;
}
break;
case 9: 
{
unsigned int v73;
unsigned int v74;
v73 = 2U + 4U;
v74 = v21 (v73);
history[history_index++] = (int)v74;
}
break;
case 11: 
return 5U;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v75, unsigned int v76, unsigned short v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = -1;
signed short v79 = 2;
signed char v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v81, signed char v82, unsigned char v83, signed char v84)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 5U;
signed char v86 = -2;
unsigned short v85 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed short v88, signed short v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = 1;
unsigned int v91 = 4U;
signed char v90 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v93;
v93 = v25 ();
history[history_index++] = (int)v93;
}
break;
case 14: 
return 5;
default: abort ();
}
}
}
}
