#include <stdlib.h>
extern void v1 (unsigned short, signed short, signed char, unsigned short);
extern void (*v2) (unsigned short, signed short, signed char, unsigned short);
extern signed char v3 (signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned int);
extern unsigned char v5 (signed int, signed int, signed char, unsigned short);
extern unsigned char (*v6) (signed int, signed int, signed char, unsigned short);
extern unsigned char v7 (signed short, signed char);
extern unsigned char (*v8) (signed short, signed char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern void v11 (signed char, unsigned int, signed short);
extern void (*v12) (signed char, unsigned int, signed short);
unsigned char v13 (signed int, unsigned short);
unsigned char (*v14) (signed int, unsigned short) = v13;
extern signed short v15 (unsigned int, unsigned short);
extern signed short (*v16) (unsigned int, unsigned short);
signed int v17 (unsigned char, unsigned char, signed short, signed int);
signed int (*v18) (unsigned char, unsigned char, signed short, signed int) = v17;
extern unsigned short v19 (unsigned int);
extern unsigned short (*v20) (unsigned int);
signed int v21 (signed short);
signed int (*v22) (signed short) = v21;
extern void v23 (unsigned int, unsigned int, unsigned short, unsigned int);
extern void (*v24) (unsigned int, unsigned int, unsigned short, unsigned int);
extern void v25 (signed int, signed int, signed int, unsigned char);
extern void (*v26) (signed int, signed int, signed int, unsigned char);
unsigned int v27 (unsigned int);
unsigned int (*v28) (unsigned int) = v27;
static signed int v29 (unsigned char);
static signed int (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v52 = -3;
unsigned short v51 = 1;
unsigned char v50 = 3;

static signed int v29 (unsigned char v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
unsigned short v56 = 6;
unsigned char v55 = 6;
signed char v54 = -3;
trace++;
switch (trace)
{
case 2: 
return 1;
case 4: 
return -4;
case 6: 
return 0;
case 8: 
return -3;
case 10: 
return 1;
default: abort ();
}
}
}
}

unsigned int v27 (unsigned int v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
signed short v60 = 3;
signed char v59 = 0;
signed char v58 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed short v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
signed int v64 = -1;
signed int v63 = 0;
unsigned int v62 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (unsigned char v65, unsigned char v66, signed short v67, signed int v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = -1;
signed short v70 = -4;
unsigned char v69 = 4;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v72;
signed int v73;
v72 = v66 - v66;
v73 = v29 (v72);
history[history_index++] = (int)v73;
}
break;
case 3: 
{
unsigned char v74;
signed int v75;
v74 = v66 - v69;
v75 = v29 (v74);
history[history_index++] = (int)v75;
}
break;
case 5: 
{
unsigned char v76;
signed int v77;
v76 = v65 + v65;
v77 = v29 (v76);
history[history_index++] = (int)v77;
}
break;
case 7: 
{
unsigned char v78;
signed int v79;
v78 = v69 - v65;
v79 = v29 (v78);
history[history_index++] = (int)v79;
}
break;
case 9: 
{
unsigned char v80;
signed int v81;
v80 = v66 - v65;
v81 = v29 (v80);
history[history_index++] = (int)v81;
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}

unsigned char v13 (signed int v82, unsigned short v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 4;
unsigned int v85 = 2U;
signed char v84 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
