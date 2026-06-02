#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
unsigned short v3 (signed char, signed char, signed short);
unsigned short (*v4) (signed char, signed char, signed short) = v3;
signed char v5 (signed short, unsigned char);
signed char (*v6) (signed short, unsigned char) = v5;
extern signed int v7 (signed int, unsigned int, signed int);
extern signed int (*v8) (signed int, unsigned int, signed int);
extern unsigned short v9 (signed short, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v10) (signed short, unsigned short, unsigned short, unsigned int);
signed short v11 (signed char, signed short);
signed short (*v12) (signed char, signed short) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern signed short v15 (unsigned int, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
unsigned int v21 (signed char, signed short, signed int, signed int);
unsigned int (*v22) (signed char, signed short, signed int, signed int) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned char v25 (signed char, signed short, signed short);
extern unsigned char (*v26) (signed char, signed short, signed short);
signed short v27 (unsigned short, signed short, signed short, signed short);
signed short (*v28) (unsigned short, signed short, signed short, signed short) = v27;
extern signed char v29 (signed int, unsigned int, unsigned char, unsigned int);
extern signed char (*v30) (signed int, unsigned int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v50 = 0;
unsigned short v49 = 1;
unsigned char v48 = 5;

signed short v27 (unsigned short v51, signed short v52, signed short v53, signed short v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 1U;
signed short v56 = -4;
signed char v55 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed char v58, signed short v59, signed int v60, signed int v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = 2;
signed int v63 = -4;
signed int v62 = 3;
trace++;
switch (trace)
{
case 9: 
return 7U;
case 11: 
return 1U;
default: abort ();
}
}
}
}

signed short v11 (signed char v65, signed short v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 0U;
unsigned char v68 = 0;
unsigned short v67 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed short v70, unsigned char v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = 1;
signed short v73 = 0;
signed char v72 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed char v75, signed char v76, signed short v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned int v80 = 4U;
unsigned char v79 = 6;
unsigned int v78 = 2U;
trace++;
switch (trace)
{
case 3: 
{
signed char v81;
signed short v82;
signed short v83;
unsigned char v84;
v81 = v75 + v75;
v82 = -4 - -2;
v83 = v77 - v77;
v84 = v25 (v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 5: 
{
signed char v85;
signed short v86;
signed short v87;
unsigned char v88;
v85 = v76 - v75;
v86 = -4 - 0;
v87 = 3 + 2;
v88 = v25 (v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 7: 
{
unsigned int v89;
unsigned char v90;
signed short v91;
v89 = 1U - v78;
v90 = 6 - v79;
v91 = v15 (v89, v90);
history[history_index++] = (int)v91;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}
