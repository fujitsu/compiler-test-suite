#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
static unsigned short v7 (void);
static unsigned short (*v8) (void) = v7;
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
extern unsigned int v11 (signed char, unsigned int, signed int, signed char);
extern unsigned int (*v12) (signed char, unsigned int, signed int, signed char);
extern unsigned int v13 (unsigned int, signed int, unsigned char);
extern unsigned int (*v14) (unsigned int, signed int, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned char v17 (signed char, unsigned char, unsigned int);
extern unsigned char (*v18) (signed char, unsigned char, unsigned int);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned char v23 (unsigned char, unsigned short, signed int, unsigned char);
extern unsigned char (*v24) (unsigned char, unsigned short, signed int, unsigned char);
static unsigned char v25 (unsigned short);
static unsigned char (*v26) (unsigned short) = v25;
signed char v27 (signed char, unsigned short);
signed char (*v28) (signed char, unsigned short) = v27;
signed short v29 (signed char, signed short, signed char, signed short);
signed short (*v30) (signed char, signed short, signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v62 = 0;
unsigned short v61 = 7;
signed short v60 = 0;

signed short v29 (signed char v63, signed short v64, signed char v65, signed short v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 5U;
signed char v68 = -3;
signed short v67 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v27 (signed char v70, unsigned short v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -2;
signed int v73 = 0;
signed char v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v25 (unsigned short v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
signed int v78 = 3;
unsigned int v77 = 3U;
signed short v76 = 0;
trace++;
switch (trace)
{
case 10: 
return 2;
default: abort ();
}
}
}
}

static unsigned short v7 (void)
{
{
for (;;) {
signed short v81 = 1;
signed int v80 = -1;
signed short v79 = -3;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v82;
signed int v83;
unsigned char v84;
unsigned int v85;
v82 = 1U - 5U;
v83 = 1 + -2;
v84 = 7 + 3;
v85 = v13 (v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 9: 
{
unsigned short v86;
unsigned char v87;
v86 = 2 + 0;
v87 = v25 (v86);
history[history_index++] = (int)v87;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
signed int v90 = 0;
unsigned char v89 = 1;
signed char v88 = -3;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v91;
v91 = v21 ();
history[history_index++] = (int)v91;
}
break;
case 4: 
{
unsigned int v92;
v92 = v21 ();
history[history_index++] = (int)v92;
}
break;
case 6: 
{
unsigned short v93;
v93 = v7 ();
history[history_index++] = (int)v93;
}
break;
case 12: 
return 4U;
default: abort ();
}
}
}
}
