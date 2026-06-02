#include <stdlib.h>
extern unsigned char v3 (unsigned short, signed short, signed char);
extern unsigned char (*v4) (unsigned short, signed short, signed char);
extern signed short v5 (unsigned char, signed short, signed short, signed int);
extern signed short (*v6) (unsigned char, signed short, signed short, signed int);
extern unsigned char v7 (unsigned char, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned int);
signed short v9 (signed short, signed short, signed int);
signed short (*v10) (signed short, signed short, signed int) = v9;
extern unsigned short v11 (signed short, signed char, unsigned int);
extern unsigned short (*v12) (signed short, signed char, unsigned int);
extern unsigned short v13 (signed int, unsigned int, signed char, signed int);
extern unsigned short (*v14) (signed int, unsigned int, signed char, signed int);
extern unsigned short v15 (unsigned short, signed short, unsigned short, signed int);
extern unsigned short (*v16) (unsigned short, signed short, unsigned short, signed int);
extern signed int v17 (unsigned char, signed int, signed char);
extern signed int (*v18) (unsigned char, signed int, signed char);
unsigned short v19 (signed int, unsigned int, unsigned char);
unsigned short (*v20) (signed int, unsigned int, unsigned char) = v19;
extern signed short v21 (unsigned char, unsigned short);
extern signed short (*v22) (unsigned char, unsigned short);
unsigned char v23 (unsigned short, signed char, unsigned char);
unsigned char (*v24) (unsigned short, signed char, unsigned char) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed char v27 (unsigned char, unsigned char);
extern signed char (*v28) (unsigned char, unsigned char);
static signed int v29 (signed short, unsigned char);
static signed int (*v30) (signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v70 = -1;
unsigned short v69 = 7;
unsigned int v68 = 6U;

static signed int v29 (signed short v71, unsigned char v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 2;
unsigned char v74 = 1;
unsigned char v73 = 0;
trace++;
switch (trace)
{
case 2: 
return -4;
case 4: 
return -2;
default: abort ();
}
}
}
}

unsigned char v23 (unsigned short v76, signed char v77, unsigned char v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = 3;
unsigned char v80 = 5;
signed char v79 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed int v82, unsigned int v83, unsigned char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned int v87 = 2U;
unsigned int v86 = 7U;
signed int v85 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed short v88;
unsigned char v89;
signed int v90;
v88 = 2 - -1;
v89 = v84 - 2;
v90 = v29 (v88, v89);
history[history_index++] = (int)v90;
}
break;
case 3: 
{
signed short v91;
unsigned char v92;
signed int v93;
v91 = -4 - -4;
v92 = 2 + v84;
v93 = v29 (v91, v92);
history[history_index++] = (int)v93;
}
break;
case 5: 
return 7;
default: abort ();
}
}
}
}

signed short v9 (signed short v94, signed short v95, signed int v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 5;
signed int v98 = -2;
signed int v97 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
