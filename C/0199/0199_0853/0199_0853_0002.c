#include <stdlib.h>
signed char v1 (unsigned char);
signed char (*v2) (unsigned char) = v1;
extern unsigned short v3 (signed char, signed short, signed int, unsigned short);
extern unsigned short (*v4) (signed char, signed short, signed int, unsigned short);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
signed short v7 (void);
signed short (*v8) (void) = v7;
static unsigned short v9 (void);
static unsigned short (*v10) (void) = v9;
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
static unsigned char v13 (signed int, unsigned short, unsigned int);
static unsigned char (*v14) (signed int, unsigned short, unsigned int) = v13;
extern unsigned int v15 (signed short);
extern unsigned int (*v16) (signed short);
extern signed short v17 (signed short, signed int, unsigned int, unsigned char);
extern signed short (*v18) (signed short, signed int, unsigned int, unsigned char);
extern signed int v19 (signed int, unsigned int, signed int);
extern signed int (*v20) (signed int, unsigned int, signed int);
extern signed short v21 (unsigned short);
extern signed short (*v22) (unsigned short);
extern signed int v23 (unsigned char, unsigned int, signed short, unsigned short);
extern signed int (*v24) (unsigned char, unsigned int, signed short, unsigned short);
extern signed char v25 (unsigned char, unsigned char, signed short);
extern signed char (*v26) (unsigned char, unsigned char, signed short);
extern unsigned char v27 (unsigned short, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned int);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v69 = 3;
unsigned char v68 = 1;
unsigned int v67 = 6U;

static unsigned char v13 (signed int v70, unsigned short v71, unsigned int v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 7U;
signed int v74 = 3;
unsigned short v73 = 7;
trace++;
switch (trace)
{
case 3: 
return 3;
default: abort ();
}
}
}
}

static unsigned short v9 (void)
{
{
for (;;) {
unsigned int v78 = 5U;
unsigned int v77 = 2U;
signed int v76 = -3;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v79;
unsigned short v80;
v79 = 3 + 1;
v80 = v29 (v79);
history[history_index++] = (int)v80;
}
break;
case 11: 
return 7;
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
unsigned int v83 = 6U;
unsigned short v82 = 4;
signed short v81 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned char v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = -3;
signed char v86 = -4;
unsigned int v85 = 7U;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v88;
unsigned char v89;
signed short v90;
signed char v91;
v88 = 6 - 1;
v89 = 7 + 4;
v90 = 1 + 0;
v91 = v25 (v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 2: 
{
signed int v92;
unsigned short v93;
unsigned int v94;
unsigned char v95;
v92 = v87 - v87;
v93 = 0 + 1;
v94 = 2U - 2U;
v95 = v13 (v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 4: 
{
unsigned char v96;
unsigned int v97;
signed short v98;
unsigned short v99;
signed int v100;
v96 = v84 + 0;
v97 = v85 + 2U;
v98 = 3 + 0;
v99 = 0 - 6;
v100 = v23 (v96, v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 8: 
{
unsigned short v101;
v101 = v9 ();
history[history_index++] = (int)v101;
}
break;
case 12: 
return v86;
default: abort ();
}
}
}
}
