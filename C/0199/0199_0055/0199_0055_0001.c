#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
signed int v3 (signed int, unsigned char);
signed int (*v4) (signed int, unsigned char) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
unsigned char v7 (unsigned int, signed char, signed short);
unsigned char (*v8) (unsigned int, signed char, signed short) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned short v11 (signed short, signed short);
extern unsigned short (*v12) (signed short, signed short);
signed short v13 (unsigned short, unsigned int);
signed short (*v14) (unsigned short, unsigned int) = v13;
static signed char v15 (unsigned int, unsigned int);
static signed char (*v16) (unsigned int, unsigned int) = v15;
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern void v19 (signed char, signed short, signed int, signed char);
extern void (*v20) (signed char, signed short, signed int, signed char);
extern signed short v21 (signed int, unsigned char, unsigned short);
extern signed short (*v22) (signed int, unsigned char, unsigned short);
static unsigned int v23 (signed short, signed char);
static unsigned int (*v24) (signed short, signed char) = v23;
signed short v25 (unsigned char, signed char, unsigned int);
signed short (*v26) (unsigned char, signed char, unsigned int) = v25;
extern signed int v27 (unsigned short, signed int, signed short, signed short);
extern signed int (*v28) (unsigned short, signed int, signed short, signed short);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v56 = 2;
unsigned char v55 = 0;
unsigned int v54 = 6U;

signed short v25 (unsigned char v57, signed char v58, unsigned int v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = 1;
signed short v61 = -1;
unsigned short v60 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v23 (signed short v63, signed char v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 0;
signed char v66 = -1;
unsigned short v65 = 3;
trace++;
switch (trace)
{
case 2: 
return 1U;
case 4: 
return 0U;
case 6: 
return 0U;
case 8: 
return 1U;
case 10: 
return 4U;
default: abort ();
}
}
}
}

static signed char v15 (unsigned int v68, unsigned int v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned char v72 = 2;
signed char v71 = 2;
unsigned short v70 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed short v73;
signed char v74;
unsigned int v75;
v73 = 1 - 3;
v74 = v71 - v71;
v75 = v23 (v73, v74);
history[history_index++] = (int)v75;
}
break;
case 3: 
{
signed short v76;
signed char v77;
unsigned int v78;
v76 = -4 - 2;
v77 = 0 - v71;
v78 = v23 (v76, v77);
history[history_index++] = (int)v78;
}
break;
case 5: 
{
signed short v79;
signed char v80;
unsigned int v81;
v79 = -4 - -3;
v80 = -3 - v71;
v81 = v23 (v79, v80);
history[history_index++] = (int)v81;
}
break;
case 7: 
{
signed short v82;
signed char v83;
unsigned int v84;
v82 = 3 - 2;
v83 = 1 + v71;
v84 = v23 (v82, v83);
history[history_index++] = (int)v84;
}
break;
case 9: 
{
signed short v85;
signed char v86;
unsigned int v87;
v85 = 3 + 3;
v86 = 3 + -1;
v87 = v23 (v85, v86);
history[history_index++] = (int)v87;
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}

signed short v13 (unsigned short v88, unsigned int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = 2;
signed char v91 = -1;
unsigned short v90 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v93, signed char v94, signed short v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = -2;
signed int v97 = 1;
signed short v96 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v99, unsigned char v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned short v103 = 5;
unsigned char v102 = 7;
signed short v101 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
signed char v106 = 1;
unsigned char v105 = 4;
signed char v104 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v107;
unsigned int v108;
signed char v109;
v107 = 1U - 0U;
v108 = 6U - 2U;
v109 = v15 (v107, v108);
history[history_index++] = (int)v109;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
