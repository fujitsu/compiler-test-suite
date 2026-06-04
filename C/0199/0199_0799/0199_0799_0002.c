#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern void v3 (void);
extern void (*v4) (void);
void v5 (unsigned int);
void (*v6) (unsigned int) = v5;
extern unsigned char v7 (unsigned char, signed char, signed short, signed short);
extern unsigned char (*v8) (unsigned char, signed char, signed short, signed short);
signed short v9 (unsigned short, signed int, unsigned short, signed short);
signed short (*v10) (unsigned short, signed int, unsigned short, signed short) = v9;
extern void v11 (void);
extern void (*v12) (void);
unsigned short v13 (signed short);
unsigned short (*v14) (signed short) = v13;
signed int v17 (void);
signed int (*v18) (void) = v17;
extern unsigned int v19 (signed char, signed int);
extern unsigned int (*v20) (signed char, signed int);
extern signed short v21 (signed char, unsigned short, unsigned int);
extern signed short (*v22) (signed char, unsigned short, unsigned int);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern signed short v25 (unsigned short, signed short, unsigned int, signed short);
extern signed short (*v26) (unsigned short, signed short, unsigned int, signed short);
extern signed int v27 (signed int, signed int);
extern signed int (*v28) (signed int, signed int);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v54 = -4;
signed short v53 = -3;
signed short v52 = 2;

void v29 (void)
{
{
for (;;) {
signed short v57 = 2;
signed int v56 = 0;
unsigned char v55 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (void)
{
{
for (;;) {
unsigned short v60 = 0;
unsigned short v59 = 7;
unsigned short v58 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
unsigned int v63 = 7U;
unsigned char v62 = 0;
signed char v61 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 7U;
signed int v66 = -2;
unsigned int v65 = 7U;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v68;
signed short v69;
unsigned int v70;
signed short v71;
signed short v72;
v68 = 0 + 0;
v69 = v64 - -4;
v70 = 3U + 6U;
v71 = -4 - -2;
v72 = v25 (v68, v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 4: 
{
unsigned short v73;
signed short v74;
unsigned int v75;
signed short v76;
signed short v77;
v73 = 5 - 7;
v74 = -1 - 0;
v75 = v65 + 4U;
v76 = v64 + 3;
v77 = v25 (v73, v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 6: 
{
unsigned short v78;
signed short v79;
unsigned int v80;
signed short v81;
signed short v82;
v78 = 6 + 2;
v79 = v64 + v64;
v80 = v67 - v67;
v81 = 2 - 1;
v82 = v25 (v78, v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 8: 
return 5;
default: abort ();
}
}
}
}

signed short v9 (unsigned short v83, signed int v84, unsigned short v85, signed short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 1;
unsigned char v88 = 3;
unsigned short v87 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v90)
{
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = 1;
signed char v92 = -3;
unsigned int v91 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
