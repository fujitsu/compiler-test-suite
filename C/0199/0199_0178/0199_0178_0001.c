#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern unsigned int v5 (signed char, signed short, signed char, unsigned short);
extern unsigned int (*v6) (signed char, signed short, signed char, unsigned short);
signed short v7 (unsigned char, signed char);
signed short (*v8) (unsigned char, signed char) = v7;
extern unsigned short v9 (unsigned short, unsigned char);
extern unsigned short (*v10) (unsigned short, unsigned char);
extern unsigned char v11 (signed char, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v12) (signed char, unsigned char, unsigned int, unsigned int);
extern signed char v13 (signed char, signed short, signed short);
extern signed char (*v14) (signed char, signed short, signed short);
extern signed char v15 (signed int, unsigned short);
extern signed char (*v16) (signed int, unsigned short);
extern unsigned int v17 (unsigned short);
extern unsigned int (*v18) (unsigned short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned int v25 (unsigned short, signed int);
extern unsigned int (*v26) (unsigned short, signed int);
extern unsigned char v27 (signed short, signed int);
extern unsigned char (*v28) (signed short, signed int);
static unsigned char v29 (unsigned int, signed char, signed char);
static unsigned char (*v30) (unsigned int, signed char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v64 = -2;
unsigned char v63 = 7;
signed char v62 = -2;

static unsigned char v29 (unsigned int v65, signed char v66, signed char v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned short v70 = 6;
signed int v69 = 2;
unsigned int v68 = 3U;
trace++;
switch (trace)
{
case 3: 
return 1;
default: abort ();
}
}
}
}

signed short v7 (unsigned char v71, signed char v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = -3;
unsigned short v74 = 1;
unsigned char v73 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned char v78 = 6;
unsigned short v77 = 1;
unsigned short v76 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed short v79;
signed int v80;
unsigned char v81;
v79 = 2 - 3;
v80 = 1 - 3;
v81 = v27 (v79, v80);
history[history_index++] = (int)v81;
}
break;
case 2: 
{
unsigned int v82;
signed char v83;
signed char v84;
unsigned char v85;
v82 = 6U + 3U;
v83 = -1 + 3;
v84 = 1 + -4;
v85 = v29 (v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 4: 
{
signed int v86;
unsigned short v87;
signed char v88;
v86 = -3 - -4;
v87 = v76 - v76;
v88 = v15 (v86, v87);
history[history_index++] = (int)v88;
}
break;
case 6: 
{
unsigned short v89;
unsigned char v90;
unsigned short v91;
v89 = 4 + v77;
v90 = v78 + 0;
v91 = v9 (v89, v90);
history[history_index++] = (int)v91;
}
break;
case 14: 
return v76;
default: abort ();
}
}
}
}
