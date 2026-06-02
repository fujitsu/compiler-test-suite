#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern unsigned int v3 (unsigned char, unsigned int, signed int, unsigned short);
extern unsigned int (*v4) (unsigned char, unsigned int, signed int, unsigned short);
extern unsigned int v5 (unsigned int, unsigned char, unsigned short);
extern unsigned int (*v6) (unsigned int, unsigned char, unsigned short);
extern signed short v7 (unsigned short, unsigned char, signed short, signed int);
extern signed short (*v8) (unsigned short, unsigned char, signed short, signed int);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (unsigned int, signed int, signed int);
extern unsigned char (*v12) (unsigned int, signed int, signed int);
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
extern unsigned int v15 (signed char, signed short, unsigned int);
extern unsigned int (*v16) (signed char, signed short, unsigned int);
void v17 (unsigned short, unsigned int, signed int, unsigned short);
void (*v18) (unsigned short, unsigned int, signed int, unsigned short) = v17;
extern void v19 (unsigned char, signed char, signed int);
extern void (*v20) (unsigned char, signed char, signed int);
extern signed char v21 (unsigned int, unsigned char, unsigned char);
extern signed char (*v22) (unsigned int, unsigned char, unsigned char);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
static signed int v27 (signed int, signed int, signed char);
static signed int (*v28) (signed int, signed int, signed char) = v27;
extern signed short v29 (unsigned int, unsigned short, signed short, unsigned int);
extern signed short (*v30) (unsigned int, unsigned short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v66 = 2U;
unsigned char v65 = 3;
unsigned char v64 = 4;

static signed int v27 (signed int v67, signed int v68, signed char v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
signed int v72 = -1;
unsigned short v71 = 1;
signed short v70 = 2;
trace++;
switch (trace)
{
case 3: 
return -4;
default: abort ();
}
}
}
}

void v17 (unsigned short v73, unsigned int v74, signed int v75, unsigned short v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = 1;
unsigned short v78 = 5;
signed short v77 = 3;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v80;
unsigned char v81;
unsigned char v82;
signed char v83;
v80 = 3U + 0U;
v81 = 3 - 7;
v82 = 5 - 1;
v83 = v21 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
signed int v86 = -1;
signed int v85 = -1;
unsigned char v84 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v87;
unsigned short v88;
signed short v89;
unsigned int v90;
signed short v91;
v87 = 1U + 4U;
v88 = 5 + 0;
v89 = 1 + 1;
v90 = 6U - 2U;
v91 = v29 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 2: 
{
signed int v92;
signed int v93;
signed char v94;
signed int v95;
v92 = 1 - v86;
v93 = v85 - v85;
v94 = 2 + 1;
v95 = v27 (v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 4: 
{
unsigned int v96;
unsigned short v97;
v96 = 6U + 7U;
v97 = v13 (v96);
history[history_index++] = (int)v97;
}
break;
case 6: 
{
signed short v98;
unsigned short v99;
v98 = 0 + 2;
v99 = v25 (v98);
history[history_index++] = (int)v99;
}
break;
case 8: 
{
v9 ();
}
break;
case 14: 
return v86;
default: abort ();
}
}
}
}
