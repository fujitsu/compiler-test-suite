#include <stdlib.h>
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern unsigned short v5 (signed short, unsigned char, unsigned char, signed char);
extern unsigned short (*v6) (signed short, unsigned char, unsigned char, signed char);
unsigned short v7 (signed char, unsigned short, signed short, unsigned int);
unsigned short (*v8) (signed char, unsigned short, signed short, unsigned int) = v7;
unsigned short v9 (signed short, signed char, unsigned char);
unsigned short (*v10) (signed short, signed char, unsigned char) = v9;
void v11 (signed int, signed int, signed short, unsigned short);
void (*v12) (signed int, signed int, signed short, unsigned short) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern unsigned int v17 (unsigned short, signed short, unsigned char);
extern unsigned int (*v18) (unsigned short, signed short, unsigned char);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern signed short v21 (signed int, signed int, unsigned int, signed char);
extern signed short (*v22) (signed int, signed int, unsigned int, signed char);
signed int v23 (unsigned short, signed short, unsigned int, unsigned int);
signed int (*v24) (unsigned short, signed short, unsigned int, unsigned int) = v23;
unsigned int v25 (unsigned short, unsigned short, signed int, unsigned char);
unsigned int (*v26) (unsigned short, unsigned short, signed int, unsigned char) = v25;
extern void v27 (unsigned int, unsigned int, unsigned int);
extern void (*v28) (unsigned int, unsigned int, unsigned int);
extern unsigned int v29 (unsigned int);
extern unsigned int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v66 = 6;
signed int v65 = 0;
unsigned short v64 = 2;

unsigned int v25 (unsigned short v67, unsigned short v68, signed int v69, unsigned char v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 7;
unsigned char v72 = 3;
signed char v71 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v74;
unsigned int v75;
unsigned int v76;
v74 = 6U - 5U;
v75 = 1U + 4U;
v76 = 4U + 5U;
v27 (v74, v75, v76);
}
break;
case 3: 
{
unsigned int v77;
unsigned int v78;
unsigned int v79;
v77 = 4U + 7U;
v78 = 0U + 1U;
v79 = 6U - 1U;
v27 (v77, v78, v79);
}
break;
case 5: 
{
unsigned int v80;
unsigned int v81;
unsigned int v82;
v80 = 2U + 4U;
v81 = 4U - 7U;
v82 = 2U + 5U;
v27 (v80, v81, v82);
}
break;
case 7: 
return 4U;
default: abort ();
}
}
}
}

signed int v23 (unsigned short v83, signed short v84, unsigned int v85, unsigned int v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 3;
unsigned short v88 = 6;
signed char v87 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
signed short v92 = -4;
unsigned int v91 = 6U;
unsigned short v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned int v95 = 1U;
unsigned int v94 = 7U;
unsigned short v93 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed int v96, signed int v97, signed short v98, unsigned short v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 5;
unsigned int v101 = 7U;
signed short v100 = 2;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v9 (signed short v103, signed char v104, unsigned char v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 3;
unsigned char v107 = 1;
unsigned int v106 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v109, unsigned short v110, signed short v111, unsigned int v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned short v115 = 4;
unsigned short v114 = 5;
signed char v113 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
