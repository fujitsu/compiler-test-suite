#include <stdlib.h>
extern void v1 (signed int, unsigned char, signed int);
extern void (*v2) (signed int, unsigned char, signed int);
unsigned int v3 (signed short, unsigned char);
unsigned int (*v4) (signed short, unsigned char) = v3;
signed char v5 (unsigned int, signed short);
signed char (*v6) (unsigned int, signed short) = v5;
extern unsigned short v7 (unsigned int, unsigned short, signed char, unsigned int);
extern unsigned short (*v8) (unsigned int, unsigned short, signed char, unsigned int);
signed int v9 (signed short);
signed int (*v10) (signed short) = v9;
extern unsigned short v11 (signed char, unsigned short, unsigned short);
extern unsigned short (*v12) (signed char, unsigned short, unsigned short);
unsigned short v13 (signed char);
unsigned short (*v14) (signed char) = v13;
extern unsigned short v15 (signed int, unsigned int, signed int, signed int);
extern unsigned short (*v16) (signed int, unsigned int, signed int, signed int);
static signed char v17 (void);
static signed char (*v18) (void) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v21 (unsigned char);
extern void (*v22) (unsigned char);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed short v27 (signed char, unsigned short, unsigned int, unsigned int);
extern signed short (*v28) (signed char, unsigned short, unsigned int, unsigned int);
extern signed int v29 (unsigned short, signed int);
extern signed int (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v53 = -1;
unsigned int v52 = 1U;
unsigned int v51 = 1U;

static signed char v17 (void)
{
{
for (;;) {
signed short v56 = 2;
signed int v55 = -4;
signed int v54 = 0;
trace++;
switch (trace)
{
case 2: 
return 1;
case 6: 
{
signed int v57;
unsigned char v58;
signed int v59;
v57 = 0 - v55;
v58 = 5 - 7;
v59 = v54 - v55;
v1 (v57, v58, v59);
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}

unsigned short v13 (signed char v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = -2;
signed int v62 = -1;
unsigned short v61 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = -2;
signed char v66 = 2;
signed int v65 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned int v68, signed short v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned short v72 = 4;
signed char v71 = -1;
signed char v70 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed char v73;
v73 = v17 ();
history[history_index++] = (int)v73;
}
break;
case 3: 
{
signed int v74;
unsigned char v75;
v74 = -3 + -3;
v75 = v23 (v74);
history[history_index++] = (int)v75;
}
break;
case 5: 
{
signed char v76;
v76 = v17 ();
history[history_index++] = (int)v76;
}
break;
case 15: 
return 0;
default: abort ();
}
}
}
}

unsigned int v3 (signed short v77, unsigned char v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 2U;
signed short v80 = 0;
unsigned char v79 = 6;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v82;
signed int v83;
signed int v84;
v82 = 5 + 4;
v83 = 2 + 3;
v84 = v29 (v82, v83);
history[history_index++] = (int)v84;
}
break;
case 10: 
{
unsigned short v85;
signed int v86;
signed int v87;
v85 = 4 + 5;
v86 = 2 + 0;
v87 = v29 (v85, v86);
history[history_index++] = (int)v87;
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}
