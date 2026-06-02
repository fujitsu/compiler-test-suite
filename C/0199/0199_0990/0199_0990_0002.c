#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
extern signed char v9 (signed short);
extern signed char (*v10) (signed short);
extern signed int v11 (unsigned char, signed char, signed char, signed short);
extern signed int (*v12) (unsigned char, signed char, signed char, signed short);
extern unsigned int v13 (signed int, signed int);
extern unsigned int (*v14) (signed int, signed int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned short v17 (signed short, unsigned char);
extern unsigned short (*v18) (signed short, unsigned char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed int v21 (unsigned short, unsigned int);
extern signed int (*v22) (unsigned short, unsigned int);
static signed short v23 (signed short, signed int, signed int);
static signed short (*v24) (signed short, signed int, signed int) = v23;
signed int v25 (signed short, unsigned char);
signed int (*v26) (signed short, unsigned char) = v25;
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
signed int v29 (signed int, signed short, unsigned short, unsigned char);
signed int (*v30) (signed int, signed short, unsigned short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v68 = 7;
unsigned char v67 = 0;
unsigned char v66 = 2;

signed int v29 (signed int v69, signed short v70, unsigned short v71, unsigned char v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 2;
unsigned short v74 = 3;
unsigned int v73 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (signed short v76, unsigned char v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = 3;
signed int v79 = 3;
signed char v78 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v23 (signed short v81, signed int v82, signed int v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed int v86 = -3;
unsigned char v85 = 1;
signed short v84 = -4;
trace++;
switch (trace)
{
case 3: 
return v81;
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
signed int v89 = 0;
signed short v88 = 0;
unsigned int v87 = 6U;
trace++;
switch (trace)
{
case 0: 
{
signed short v90;
unsigned char v91;
unsigned short v92;
v90 = -4 + v88;
v91 = 2 - 0;
v92 = v17 (v90, v91);
history[history_index++] = (int)v92;
}
break;
case 2: 
{
signed short v93;
signed int v94;
signed int v95;
signed short v96;
v93 = v88 - 1;
v94 = v89 + 2;
v95 = -3 - v89;
v96 = v23 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 4: 
{
signed int v97;
v97 = v15 ();
history[history_index++] = (int)v97;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
