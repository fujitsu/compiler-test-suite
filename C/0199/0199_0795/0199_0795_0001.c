#include <stdlib.h>
signed int v1 (signed short, unsigned char, unsigned short, unsigned int);
signed int (*v2) (signed short, unsigned char, unsigned short, unsigned int) = v1;
static signed short v3 (unsigned int, signed char);
static signed short (*v4) (unsigned int, signed char) = v3;
extern unsigned char v5 (unsigned short, unsigned int, unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned short, unsigned int, unsigned char, unsigned char);
extern unsigned short v7 (signed char, unsigned short);
extern unsigned short (*v8) (signed char, unsigned short);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern void v11 (unsigned int, signed int, signed short);
extern void (*v12) (unsigned int, signed int, signed short);
static unsigned char v13 (void);
static unsigned char (*v14) (void) = v13;
extern signed short v15 (unsigned int, unsigned char, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char, unsigned char);
extern unsigned int v17 (signed short, signed char, signed short, signed short);
extern unsigned int (*v18) (signed short, signed char, signed short, signed short);
extern unsigned char v19 (unsigned char, unsigned int, signed int, unsigned short);
extern unsigned char (*v20) (unsigned char, unsigned int, signed int, unsigned short);
extern void v21 (signed char, signed int, signed int);
extern void (*v22) (signed char, signed int, signed int);
extern signed int v23 (signed short, unsigned short);
extern signed int (*v24) (signed short, unsigned short);
extern signed char v25 (unsigned int, unsigned char);
extern signed char (*v26) (unsigned int, unsigned char);
signed char v27 (signed int);
signed char (*v28) (signed int) = v27;
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v63 = -2;
signed char v62 = -4;
signed char v61 = 0;

unsigned short v29 (void)
{
{
for (;;) {
signed short v66 = -3;
unsigned char v65 = 1;
signed short v64 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v27 (signed int v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 3U;
signed char v69 = 1;
unsigned short v68 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v13 (void)
{
{
for (;;) {
unsigned short v73 = 5;
unsigned int v72 = 7U;
signed int v71 = 3;
trace++;
switch (trace)
{
case 3: 
return 4;
case 6: 
return 2;
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
unsigned int v76 = 0U;
unsigned int v75 = 1U;
signed int v74 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v3 (unsigned int v77, signed char v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 1U;
signed int v80 = -1;
signed char v79 = 1;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v82;
v82 = v13 ();
history[history_index++] = (int)v82;
}
break;
case 7: 
{
signed short v83;
signed char v84;
signed short v85;
signed short v86;
unsigned int v87;
v83 = -2 + -4;
v84 = v78 - v78;
v85 = 1 - -3;
v86 = -3 + 3;
v87 = v17 (v83, v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 13: 
return 3;
default: abort ();
}
}
}
}

signed int v1 (signed short v88, unsigned char v89, unsigned short v90, unsigned int v91)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = 3;
unsigned short v93 = 6;
signed char v92 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed short v95;
signed char v96;
signed short v97;
signed short v98;
unsigned int v99;
v95 = v94 - v88;
v96 = 0 - v92;
v97 = v94 - v88;
v98 = v94 - v94;
v99 = v17 (v95, v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 2: 
{
unsigned char v100;
v100 = v13 ();
history[history_index++] = (int)v100;
}
break;
case 4: 
{
unsigned int v101;
signed char v102;
signed short v103;
v101 = v91 + v91;
v102 = 3 - v92;
v103 = v3 (v101, v102);
history[history_index++] = (int)v103;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
