#include <stdlib.h>
unsigned short v1 (signed short, unsigned char);
unsigned short (*v2) (signed short, unsigned char) = v1;
extern signed short v3 (unsigned char, unsigned char);
extern signed short (*v4) (unsigned char, unsigned char);
static unsigned short v5 (signed short, signed int, unsigned char, unsigned int);
static unsigned short (*v6) (signed short, signed int, unsigned char, unsigned int) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
static unsigned char v9 (void);
static unsigned char (*v10) (void) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v15 (unsigned char, unsigned char, unsigned char);
extern void (*v16) (unsigned char, unsigned char, unsigned char);
extern void v17 (signed int, signed short);
extern void (*v18) (signed int, signed short);
extern unsigned char v19 (unsigned int, unsigned int, unsigned short, signed char);
extern unsigned char (*v20) (unsigned int, unsigned int, unsigned short, signed char);
extern void v21 (unsigned int, signed short, signed char, unsigned char);
extern void (*v22) (unsigned int, signed short, signed char, unsigned char);
extern unsigned short v23 (signed short, unsigned int, signed short, signed int);
extern unsigned short (*v24) (signed short, unsigned int, signed short, signed int);
static signed char v25 (void);
static signed char (*v26) (void) = v25;
signed int v27 (void);
signed int (*v28) (void) = v27;
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v76 = -4;
signed char v75 = -1;
signed int v74 = 3;

unsigned char v29 (void)
{
{
for (;;) {
unsigned int v79 = 3U;
unsigned short v78 = 3;
signed char v77 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (void)
{
{
for (;;) {
signed short v82 = -4;
unsigned char v81 = 2;
unsigned int v80 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v25 (void)
{
{
for (;;) {
unsigned int v85 = 3U;
unsigned short v84 = 6;
unsigned char v83 = 0;
trace++;
switch (trace)
{
case 10: 
return -4;
default: abort ();
}
}
}
}

static unsigned char v9 (void)
{
{
for (;;) {
signed char v88 = -1;
unsigned int v87 = 4U;
unsigned char v86 = 6;
trace++;
switch (trace)
{
case 9: 
{
signed char v89;
v89 = v25 ();
history[history_index++] = (int)v89;
}
break;
case 11: 
return 4;
default: abort ();
}
}
}
}

static unsigned short v5 (signed short v90, signed int v91, unsigned char v92, unsigned int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = -4;
signed int v95 = 3;
unsigned short v94 = 1;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v97;
v97 = v9 ();
history[history_index++] = (int)v97;
}
break;
case 12: 
return v94;
default: abort ();
}
}
}
}

unsigned short v1 (signed short v98, unsigned char v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 2U;
signed char v101 = 0;
unsigned char v100 = 0;
trace++;
switch (trace)
{
case 0: 
return 5;
case 1: 
{
unsigned char v103;
v103 = v13 ();
history[history_index++] = (int)v103;
}
break;
case 3: 
{
unsigned char v104;
v104 = v13 ();
history[history_index++] = (int)v104;
}
break;
case 5: 
{
unsigned char v105;
unsigned char v106;
unsigned char v107;
v105 = v100 - v99;
v106 = v99 - v100;
v107 = 2 - v99;
v15 (v105, v106, v107);
}
break;
case 7: 
{
signed short v108;
signed int v109;
unsigned char v110;
unsigned int v111;
unsigned short v112;
v108 = v98 + 3;
v109 = -2 - 2;
v110 = v99 - v100;
v111 = v102 + 0U;
v112 = v5 (v108, v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}
