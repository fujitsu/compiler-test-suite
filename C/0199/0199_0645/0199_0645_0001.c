#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed int v3 (unsigned char, signed int, unsigned short, unsigned char);
extern signed int (*v4) (unsigned char, signed int, unsigned short, unsigned char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned short v7 (signed short, signed int, unsigned char);
unsigned short (*v8) (signed short, signed int, unsigned char) = v7;
signed int v9 (signed char, signed char, signed char, unsigned char);
signed int (*v10) (signed char, signed char, signed char, unsigned char) = v9;
signed char v11 (signed int);
signed char (*v12) (signed int) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern signed short v15 (signed short, signed char, signed short);
extern signed short (*v16) (signed short, signed char, signed short);
signed short v17 (void);
signed short (*v18) (void) = v17;
extern unsigned int v19 (unsigned short, unsigned short, signed int);
extern unsigned int (*v20) (unsigned short, unsigned short, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
unsigned int v23 (signed char, signed int, signed int, signed char);
unsigned int (*v24) (signed char, signed int, signed int, signed char) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned short v27 (signed int, signed int, unsigned short);
extern unsigned short (*v28) (signed int, signed int, unsigned short);
unsigned int v29 (unsigned int, signed char, signed short);
unsigned int (*v30) (unsigned int, signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v50 = 6;
signed int v49 = 0;
signed int v48 = -2;

unsigned int v29 (unsigned int v51, signed char v52, signed short v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 5;
unsigned int v55 = 5U;
unsigned short v54 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed char v57, signed int v58, signed int v59, signed char v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = 3;
unsigned int v62 = 2U;
signed int v61 = -1;
trace++;
switch (trace)
{
case 7: 
{
signed int v64;
signed int v65;
unsigned short v66;
unsigned short v67;
v64 = v61 - v61;
v65 = v59 + -2;
v66 = 2 + 7;
v67 = v27 (v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 13: 
return 0U;
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
signed char v70 = -4;
signed short v69 = 1;
unsigned int v68 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed int v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
unsigned int v74 = 0U;
unsigned char v73 = 7;
unsigned short v72 = 4;
trace++;
switch (trace)
{
case 9: 
return 3;
case 11: 
return -4;
default: abort ();
}
}
}
}

signed int v9 (signed char v75, signed char v76, signed char v77, unsigned char v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = -4;
unsigned int v80 = 7U;
signed short v79 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v82, signed int v83, unsigned char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 5U;
unsigned int v86 = 2U;
signed int v85 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed int v88;
v88 = v13 ();
history[history_index++] = (int)v88;
}
break;
case 5: 
{
signed int v89;
v89 = v13 ();
history[history_index++] = (int)v89;
}
break;
case 15: 
return 2;
default: abort ();
}
}
}
}
