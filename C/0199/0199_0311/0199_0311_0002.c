#include <stdlib.h>
extern unsigned short v1 (signed char);
extern unsigned short (*v2) (signed char);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern signed char v5 (signed int, unsigned int, signed int);
extern signed char (*v6) (signed int, unsigned int, signed int);
extern unsigned int v7 (unsigned char, signed char);
extern unsigned int (*v8) (unsigned char, signed char);
extern signed int v9 (unsigned int, signed short, unsigned int);
extern signed int (*v10) (unsigned int, signed short, unsigned int);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (unsigned short, signed char);
extern unsigned short (*v16) (unsigned short, signed char);
extern unsigned char v17 (unsigned char, unsigned int);
extern unsigned char (*v18) (unsigned char, unsigned int);
signed short v19 (unsigned int, signed char, unsigned int);
signed short (*v20) (unsigned int, signed char, unsigned int) = v19;
extern unsigned char v21 (unsigned char, signed char, unsigned char);
extern unsigned char (*v22) (unsigned char, signed char, unsigned char);
signed char v23 (signed char);
signed char (*v24) (signed char) = v23;
void v25 (signed char, signed char, signed short);
void (*v26) (signed char, signed char, signed short) = v25;
static unsigned char v27 (unsigned char, signed char, unsigned char, unsigned char);
static unsigned char (*v28) (unsigned char, signed char, unsigned char, unsigned char) = v27;
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v67 = -1;
unsigned int v66 = 2U;
signed short v65 = 0;

static unsigned char v27 (unsigned char v68, signed char v69, unsigned char v70, unsigned char v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned char v74 = 5;
unsigned char v73 = 5;
unsigned short v72 = 0;
trace++;
switch (trace)
{
case 5: 
return v71;
case 7: 
return v73;
case 11: 
return v71;
default: abort ();
}
}
}
}

void v25 (signed char v75, signed char v76, signed short v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 6;
signed int v79 = 0;
signed short v78 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed char v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 5;
unsigned short v83 = 2;
unsigned int v82 = 2U;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v85;
signed char v86;
unsigned char v87;
unsigned char v88;
unsigned char v89;
v85 = v84 - 2;
v86 = v81 + v81;
v87 = 6 - 7;
v88 = v84 + 7;
v89 = v27 (v85, v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 6: 
{
unsigned char v90;
signed char v91;
unsigned char v92;
unsigned char v93;
unsigned char v94;
v90 = 7 + v84;
v91 = -1 - v81;
v92 = 3 - v84;
v93 = 3 + 3;
v94 = v27 (v90, v91, v92, v93);
history[history_index++] = (int)v94;
}
break;
case 8: 
return 3;
case 10: 
{
unsigned char v95;
signed char v96;
unsigned char v97;
unsigned char v98;
unsigned char v99;
v95 = v84 - v84;
v96 = -2 - -3;
v97 = v84 + 7;
v98 = v84 - 0;
v99 = v27 (v95, v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

signed short v19 (unsigned int v100, signed char v101, unsigned int v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = -1;
signed char v104 = -2;
unsigned short v103 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
