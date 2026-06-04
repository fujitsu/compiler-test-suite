#include <stdlib.h>
void v1 (unsigned int);
void (*v2) (unsigned int) = v1;
static void v3 (signed int, unsigned int, signed short);
static void (*v4) (signed int, unsigned int, signed short) = v3;
extern unsigned char v5 (signed int, signed short, unsigned short);
extern unsigned char (*v6) (signed int, signed short, unsigned short);
static unsigned short v7 (void);
static unsigned short (*v8) (void) = v7;
extern signed short v9 (unsigned char, unsigned short, unsigned int, unsigned int);
extern signed short (*v10) (unsigned char, unsigned short, unsigned int, unsigned int);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
signed char v13 (unsigned char, unsigned short);
signed char (*v14) (unsigned char, unsigned short) = v13;
extern void v15 (signed short, unsigned char);
extern void (*v16) (signed short, unsigned char);
unsigned int v17 (unsigned short, signed int);
unsigned int (*v18) (unsigned short, signed int) = v17;
extern signed int v19 (signed char, unsigned short);
extern signed int (*v20) (signed char, unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
void v23 (unsigned int, unsigned char, unsigned char);
void (*v24) (unsigned int, unsigned char, unsigned char) = v23;
signed short v25 (signed int, signed int, signed char);
signed short (*v26) (signed int, signed int, signed char) = v25;
unsigned short v27 (signed int, signed short);
unsigned short (*v28) (signed int, signed short) = v27;
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v49 = 3;
signed char v48 = 3;
signed char v47 = -4;

unsigned short v27 (signed int v50, signed short v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 7;
unsigned int v53 = 1U;
signed int v52 = -1;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v55;
v55 = v7 ();
history[history_index++] = (int)v55;
}
break;
case 5: 
{
unsigned short v56;
v56 = v7 ();
history[history_index++] = (int)v56;
}
break;
case 7: 
{
unsigned short v57;
v57 = v7 ();
history[history_index++] = (int)v57;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

signed short v25 (signed int v58, signed int v59, signed char v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 5;
signed short v62 = 0;
signed char v61 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned int v64, unsigned char v65, unsigned char v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = 2;
unsigned short v68 = 2;
unsigned short v67 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v70, signed int v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -1;
signed char v73 = 1;
unsigned int v72 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned char v75, unsigned short v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -1;
unsigned short v78 = 6;
unsigned int v77 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v7 (void)
{
{
for (;;) {
unsigned short v82 = 1;
unsigned int v81 = 1U;
unsigned char v80 = 2;
trace++;
switch (trace)
{
case 4: 
return 3;
case 6: 
return v82;
case 8: 
{
unsigned char v83;
unsigned short v84;
unsigned int v85;
unsigned int v86;
signed short v87;
v83 = 4 - v80;
v84 = 1 + v82;
v85 = 1U + 6U;
v86 = 5U + 1U;
v87 = v9 (v83, v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 10: 
return v82;
default: abort ();
}
}
}
}

static void v3 (signed int v88, unsigned int v89, signed short v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed int v93 = 0;
unsigned char v92 = 1;
signed char v91 = -3;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v94;
unsigned short v95;
unsigned int v96;
unsigned int v97;
signed short v98;
v94 = 5 - v92;
v95 = 2 - 4;
v96 = 7U + 5U;
v97 = v89 - v89;
v98 = v9 (v94, v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

void v1 (unsigned int v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
signed int v102 = -4;
signed char v101 = 2;
unsigned short v100 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed int v103;
unsigned int v104;
signed short v105;
v103 = v102 - -1;
v104 = 1U + 5U;
v105 = 0 + 0;
v3 (v103, v104, v105);
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
