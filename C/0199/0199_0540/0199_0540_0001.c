#include <stdlib.h>
extern signed char v3 (unsigned short, signed char, unsigned char);
extern signed char (*v4) (unsigned short, signed char, unsigned char);
extern signed char v5 (unsigned short, signed char, unsigned int, signed short);
extern signed char (*v6) (unsigned short, signed char, unsigned int, signed short);
extern signed short v7 (signed short, unsigned short, signed int);
extern signed short (*v8) (signed short, unsigned short, signed int);
signed char v9 (void);
signed char (*v10) (void) = v9;
extern signed short v11 (signed char);
extern signed short (*v12) (signed char);
signed int v13 (unsigned int);
signed int (*v14) (unsigned int) = v13;
extern signed char v15 (signed int, signed short, signed char, signed int);
extern signed char (*v16) (signed int, signed short, signed char, signed int);
static unsigned char v17 (signed int, signed short, signed char);
static unsigned char (*v18) (signed int, signed short, signed char) = v17;
extern signed int v19 (signed short, unsigned short);
extern signed int (*v20) (signed short, unsigned short);
extern unsigned int v21 (signed char, signed int, unsigned short);
extern unsigned int (*v22) (signed char, signed int, unsigned short);
extern unsigned char v23 (unsigned char, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned char, unsigned char, unsigned char);
extern void v25 (signed char, signed short, unsigned short);
extern void (*v26) (signed char, signed short, unsigned short);
void v27 (signed char, unsigned short, unsigned char, unsigned int);
void (*v28) (signed char, unsigned short, unsigned char, unsigned int) = v27;
extern unsigned short v29 (unsigned char, unsigned char, signed short, unsigned int);
extern unsigned short (*v30) (unsigned char, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v61 = -2;
signed short v60 = 0;
signed short v59 = 2;

void v27 (signed char v62, unsigned short v63, unsigned char v64, unsigned int v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = -3;
unsigned int v67 = 2U;
unsigned char v66 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v17 (signed int v69, signed short v70, signed char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned char v74 = 2;
unsigned short v73 = 1;
unsigned int v72 = 1U;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v75;
unsigned char v76;
unsigned char v77;
unsigned char v78;
v75 = 0 - v74;
v76 = 7 + v74;
v77 = v74 + v74;
v78 = v23 (v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 7: 
{
unsigned char v79;
unsigned char v80;
unsigned char v81;
unsigned char v82;
v79 = v74 - 2;
v80 = 7 - 4;
v81 = 2 + 0;
v82 = v23 (v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 9: 
{
unsigned char v83;
unsigned char v84;
unsigned char v85;
unsigned char v86;
v83 = v74 + 6;
v84 = 3 + v74;
v85 = 1 + 7;
v86 = v23 (v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 11: 
return v74;
default: abort ();
}
}
}
}

signed int v13 (unsigned int v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = 1;
signed char v89 = 1;
signed int v88 = 0;
trace++;
switch (trace)
{
case 1: 
return v88;
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
unsigned int v93 = 1U;
signed int v92 = 3;
unsigned int v91 = 7U;
trace++;
switch (trace)
{
case 4: 
{
signed int v94;
signed short v95;
signed char v96;
unsigned char v97;
v94 = 3 + 3;
v95 = -1 - -3;
v96 = -2 - 1;
v97 = v17 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}
