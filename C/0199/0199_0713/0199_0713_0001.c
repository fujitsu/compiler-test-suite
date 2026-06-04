#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned char, signed short);
extern unsigned char (*v2) (signed char, unsigned char, signed short);
extern signed int v3 (signed char, signed short, unsigned char);
extern signed int (*v4) (signed char, signed short, unsigned char);
static signed int v5 (signed char, unsigned short);
static signed int (*v6) (signed char, unsigned short) = v5;
extern signed short v7 (unsigned int, signed char);
extern signed short (*v8) (unsigned int, signed char);
signed char v9 (unsigned short, unsigned char);
signed char (*v10) (unsigned short, unsigned char) = v9;
static unsigned char v11 (unsigned int, unsigned int, signed int);
static unsigned char (*v12) (unsigned int, unsigned int, signed int) = v11;
extern signed int v13 (signed int, unsigned int);
extern signed int (*v14) (signed int, unsigned int);
extern signed int v15 (signed int, signed short);
extern signed int (*v16) (signed int, signed short);
extern unsigned int v17 (signed int, signed int);
extern unsigned int (*v18) (signed int, signed int);
extern signed short v19 (unsigned char, unsigned int);
extern signed short (*v20) (unsigned char, unsigned int);
extern signed short v21 (signed short, unsigned char, signed int);
extern signed short (*v22) (signed short, unsigned char, signed int);
signed short v23 (unsigned int, signed short);
signed short (*v24) (unsigned int, signed short) = v23;
extern signed int v25 (signed int, unsigned short);
extern signed int (*v26) (signed int, unsigned short);
extern unsigned short v27 (unsigned short, unsigned short, unsigned char, signed short);
extern unsigned short (*v28) (unsigned short, unsigned short, unsigned char, signed short);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v63 = 3;
signed int v62 = -1;
unsigned short v61 = 3;

signed short v23 (unsigned int v64, signed short v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = 3;
unsigned int v67 = 6U;
unsigned short v66 = 3;
trace++;
switch (trace)
{
case 5: 
{
signed char v69;
unsigned short v70;
signed int v71;
v69 = 0 + 3;
v70 = v66 + v66;
v71 = v5 (v69, v70);
history[history_index++] = (int)v71;
}
break;
case 15: 
return 1;
default: abort ();
}
}
}
}

static unsigned char v11 (unsigned int v72, unsigned int v73, signed int v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 0;
unsigned short v76 = 3;
signed short v75 = 3;
trace++;
switch (trace)
{
case 7: 
{
signed char v78;
v78 = v29 ();
history[history_index++] = (int)v78;
}
break;
case 9: 
{
signed int v79;
signed int v80;
unsigned int v81;
v79 = 2 + -2;
v80 = v74 - v74;
v81 = v17 (v79, v80);
history[history_index++] = (int)v81;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

signed char v9 (unsigned short v82, unsigned char v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 0;
signed char v85 = 3;
unsigned int v84 = 3U;
trace++;
switch (trace)
{
case 1: 
return v85;
case 3: 
return v85;
default: abort ();
}
}
}
}

static signed int v5 (signed char v87, unsigned short v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed char v91 = 0;
signed char v90 = -2;
signed char v89 = 2;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v92;
unsigned int v93;
signed int v94;
unsigned char v95;
v92 = 5U + 4U;
v93 = 6U + 0U;
v94 = -4 - 2;
v95 = v11 (v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}
