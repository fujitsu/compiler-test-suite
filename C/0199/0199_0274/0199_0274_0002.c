#include <stdlib.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
extern signed char v3 (void);
extern signed char (*v4) (void);
signed int v5 (unsigned int, unsigned char, signed short, unsigned char);
signed int (*v6) (unsigned int, unsigned char, signed short, unsigned char) = v5;
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern void v11 (unsigned int, signed int, signed char);
extern void (*v12) (unsigned int, signed int, signed char);
unsigned int v13 (signed char);
unsigned int (*v14) (signed char) = v13;
unsigned short v15 (unsigned char, unsigned int, signed int);
unsigned short (*v16) (unsigned char, unsigned int, signed int) = v15;
static signed int v17 (unsigned int, unsigned int, signed short);
static signed int (*v18) (unsigned int, unsigned int, signed short) = v17;
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed int v21 (signed char, unsigned int, unsigned short, signed short);
extern signed int (*v22) (signed char, unsigned int, unsigned short, signed short);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern signed char v25 (unsigned int, unsigned int);
extern signed char (*v26) (unsigned int, unsigned int);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern void v29 (signed char, unsigned int, unsigned int, signed short);
extern void (*v30) (signed char, unsigned int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v57 = 2U;
signed short v56 = -2;
signed short v55 = 2;

static signed int v17 (unsigned int v58, unsigned int v59, signed short v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = -2;
unsigned char v62 = 2;
signed char v61 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed char v64;
unsigned int v65;
unsigned short v66;
signed short v67;
signed int v68;
v64 = -1 - v63;
v65 = 7U - v59;
v66 = 1 - 6;
v67 = -1 - v60;
v68 = v21 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v69, unsigned int v70, signed int v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = -1;
unsigned int v73 = 0U;
signed short v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed char v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 7;
unsigned short v77 = 5;
unsigned int v76 = 2U;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v79;
unsigned int v80;
signed short v81;
signed int v82;
v79 = v76 - v76;
v80 = v76 - v76;
v81 = -3 + 1;
v82 = v17 (v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 14: 
return v76;
default: abort ();
}
}
}
}

signed int v5 (unsigned int v83, unsigned char v84, signed short v85, unsigned char v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed int v89 = 0;
signed char v88 = 0;
unsigned int v87 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
