#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
signed short v3 (signed char);
signed short (*v4) (signed char) = v3;
signed char v5 (signed char);
signed char (*v6) (signed char) = v5;
extern unsigned int v7 (unsigned int, signed short, signed int);
extern unsigned int (*v8) (unsigned int, signed short, signed int);
signed int v9 (signed char);
signed int (*v10) (signed char) = v9;
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
extern unsigned short v13 (unsigned short, signed int, unsigned int, unsigned char);
extern unsigned short (*v14) (unsigned short, signed int, unsigned int, unsigned char);
static signed char v15 (signed int, unsigned char);
static signed char (*v16) (signed int, unsigned char) = v15;
extern signed int v17 (signed int);
extern signed int (*v18) (signed int);
signed char v19 (unsigned char);
signed char (*v20) (unsigned char) = v19;
extern signed char v21 (signed char, unsigned char);
extern signed char (*v22) (signed char, unsigned char);
extern unsigned int v23 (signed short, unsigned short);
extern unsigned int (*v24) (signed short, unsigned short);
extern unsigned int v25 (signed int, unsigned int, unsigned char);
extern unsigned int (*v26) (signed int, unsigned int, unsigned char);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern signed char v29 (signed int, unsigned int, signed short);
extern signed char (*v30) (signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v59 = 1;
signed char v58 = 3;
signed int v57 = -4;

signed char v19 (unsigned char v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = 1;
signed char v62 = 2;
unsigned char v61 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v15 (signed int v64, unsigned char v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = 3;
signed int v67 = 3;
signed short v66 = 3;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v69;
unsigned int v70;
v69 = 4 - 2;
v70 = v11 (v69);
history[history_index++] = (int)v70;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

signed int v9 (signed char v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = 1;
signed char v73 = 3;
unsigned short v72 = 4;
trace++;
switch (trace)
{
case 9: 
{
signed short v75;
unsigned short v76;
unsigned int v77;
v75 = 1 - -3;
v76 = 0 + v72;
v77 = v23 (v75, v76);
history[history_index++] = (int)v77;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

signed char v5 (signed char v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 5;
signed int v80 = 0;
unsigned int v79 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed char v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 6U;
signed char v84 = -4;
signed int v83 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned int v88 = 2U;
signed int v87 = 0;
unsigned int v86 = 3U;
trace++;
switch (trace)
{
case 0: 
{
signed int v89;
unsigned int v90;
unsigned char v91;
unsigned int v92;
v89 = v87 - -2;
v90 = 6U - 0U;
v91 = 7 + 6;
v92 = v25 (v89, v90, v91);
history[history_index++] = (int)v92;
}
break;
case 4: 
{
signed short v93;
unsigned short v94;
unsigned int v95;
v93 = 1 + 3;
v94 = 3 - 6;
v95 = v23 (v93, v94);
history[history_index++] = (int)v95;
}
break;
case 6: 
{
signed int v96;
unsigned char v97;
signed char v98;
v96 = v87 - -4;
v97 = 0 - 3;
v98 = v15 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}
