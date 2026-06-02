#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
static unsigned char v7 (void);
static unsigned char (*v8) (void) = v7;
extern signed int v9 (signed short, unsigned short, unsigned int);
extern signed int (*v10) (signed short, unsigned short, unsigned int);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned char v13 (unsigned char, signed short, signed short, unsigned char);
extern unsigned char (*v14) (unsigned char, signed short, signed short, unsigned char);
unsigned char v15 (signed char, unsigned int, unsigned short);
unsigned char (*v16) (signed char, unsigned int, unsigned short) = v15;
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
extern unsigned char v21 (signed char, unsigned char);
extern unsigned char (*v22) (signed char, unsigned char);
extern unsigned int v23 (unsigned char, signed int, unsigned int);
extern unsigned int (*v24) (unsigned char, signed int, unsigned int);
unsigned char v25 (signed int, signed char);
unsigned char (*v26) (signed int, signed char) = v25;
extern signed char v27 (signed short, unsigned short);
extern signed char (*v28) (signed short, unsigned short);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v66 = -3;
unsigned short v65 = 4;
signed char v64 = 1;

unsigned char v25 (signed int v67, signed char v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = -2;
unsigned int v70 = 3U;
signed short v69 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed char v72, unsigned int v73, unsigned short v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed int v77 = -2;
unsigned int v76 = 7U;
signed int v75 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v7 (void)
{
{
for (;;) {
unsigned short v80 = 5;
unsigned int v79 = 2U;
signed int v78 = -3;
trace++;
switch (trace)
{
case 3: 
{
signed char v81;
unsigned char v82;
unsigned char v83;
v81 = 0 - -1;
v82 = 3 + 7;
v83 = v21 (v81, v82);
history[history_index++] = (int)v83;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned short v86 = 2;
signed short v85 = 3;
signed char v84 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v87;
v87 = v11 ();
history[history_index++] = (int)v87;
}
break;
case 2: 
{
unsigned char v88;
v88 = v7 ();
history[history_index++] = (int)v88;
}
break;
case 14: 
return 5;
default: abort ();
}
}
}
}
