#include <stdlib.h>
extern signed char v1 (unsigned short, unsigned int);
extern signed char (*v2) (unsigned short, unsigned int);
extern unsigned char v3 (unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
signed int v7 (unsigned int, signed short, unsigned short, signed char);
signed int (*v8) (unsigned int, signed short, unsigned short, signed char) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (unsigned short, unsigned char);
extern unsigned int (*v12) (unsigned short, unsigned char);
extern unsigned char v13 (unsigned int, unsigned int, signed char);
extern unsigned char (*v14) (unsigned int, unsigned int, signed char);
signed char v15 (signed int, signed short, unsigned int, unsigned char);
signed char (*v16) (signed int, signed short, unsigned int, unsigned char) = v15;
static signed char v17 (unsigned char, unsigned char, signed short, signed short);
static signed char (*v18) (unsigned char, unsigned char, signed short, signed short) = v17;
extern unsigned short v19 (signed short, signed int);
extern unsigned short (*v20) (signed short, signed int);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed short v23 (unsigned short, unsigned char);
extern signed short (*v24) (unsigned short, unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
signed int v29 (unsigned char, unsigned int, signed int);
signed int (*v30) (unsigned char, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v56 = -4;
signed short v55 = 1;
unsigned short v54 = 6;

signed int v29 (unsigned char v57, unsigned int v58, signed int v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 3;
unsigned int v61 = 6U;
signed int v60 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v17 (unsigned char v63, unsigned char v64, signed short v65, signed short v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 0U;
unsigned int v68 = 0U;
unsigned short v67 = 5;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v70;
v70 = v25 ();
history[history_index++] = (int)v70;
}
break;
case 10: 
{
unsigned char v71;
v71 = v25 ();
history[history_index++] = (int)v71;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

signed char v15 (signed int v72, signed short v73, unsigned int v74, unsigned char v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned char v78 = 3;
signed int v77 = -2;
signed char v76 = 3;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v79;
unsigned char v80;
signed short v81;
signed short v82;
signed char v83;
v79 = v78 - v78;
v80 = v78 + v78;
v81 = -1 - 2;
v82 = 2 - v73;
v83 = v17 (v79, v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

signed int v7 (unsigned int v84, signed short v85, unsigned short v86, signed char v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned short v90 = 1;
unsigned char v89 = 4;
unsigned int v88 = 7U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v91;
v91 = v25 ();
history[history_index++] = (int)v91;
}
break;
case 3: 
{
unsigned char v92;
v92 = v25 ();
history[history_index++] = (int)v92;
}
break;
case 5: 
return 2;
default: abort ();
}
}
}
}
