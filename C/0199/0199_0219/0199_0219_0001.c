#include <stdlib.h>
void v1 (unsigned int);
void (*v2) (unsigned int) = v1;
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
signed short v5 (void);
signed short (*v6) (void) = v5;
signed char v7 (signed int, signed short, unsigned short, signed int);
signed char (*v8) (signed int, signed short, unsigned short, signed int) = v7;
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned short v11 (unsigned int, signed char);
extern unsigned short (*v12) (unsigned int, signed char);
signed char v13 (unsigned int, unsigned short, signed short, unsigned int);
signed char (*v14) (unsigned int, unsigned short, signed short, unsigned int) = v13;
extern void v15 (signed int);
extern void (*v16) (signed int);
signed int v17 (unsigned short, unsigned short, unsigned char);
signed int (*v18) (unsigned short, unsigned short, unsigned char) = v17;
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned int v23 (unsigned char, signed int, signed short);
extern unsigned int (*v24) (unsigned char, signed int, signed short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned char v27 (signed char, unsigned int, unsigned int, unsigned int);
unsigned char (*v28) (signed char, unsigned int, unsigned int, unsigned int) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v47 = -3;
signed short v46 = 3;
signed short v45 = 0;

unsigned char v27 (signed char v48, unsigned int v49, unsigned int v50, unsigned int v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = -4;
unsigned int v53 = 6U;
unsigned char v52 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
unsigned short v57 = 5;
unsigned int v56 = 5U;
unsigned short v55 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned short v58, unsigned short v59, unsigned char v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 1U;
unsigned short v62 = 5;
unsigned short v61 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned int v64, unsigned short v65, signed short v66, unsigned int v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned char v70 = 3;
signed char v69 = -1;
signed char v68 = 0;
trace++;
switch (trace)
{
case 2: 
return 2;
case 7: 
return v68;
case 9: 
return v68;
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed short v73 = 2;
unsigned int v72 = 7U;
signed char v71 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v74;
signed int v75;
signed short v76;
unsigned int v77;
v74 = 3 - 0;
v75 = -1 + 0;
v76 = v73 - 1;
v77 = v23 (v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 11: 
return 5;
default: abort ();
}
}
}
}

signed char v7 (signed int v78, signed short v79, unsigned short v80, signed int v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = 3;
signed short v83 = -2;
unsigned char v82 = 0;
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
unsigned int v87 = 2U;
signed char v86 = -4;
unsigned int v85 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned int v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
signed char v91 = -1;
signed char v90 = -2;
signed short v89 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v92;
signed int v93;
signed short v94;
unsigned int v95;
v92 = 2 - 5;
v93 = -3 - 2;
v94 = -3 + -4;
v95 = v23 (v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
