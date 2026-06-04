#include <stdlib.h>
extern signed short v1 (unsigned int, unsigned int);
extern signed short (*v2) (unsigned int, unsigned int);
extern signed char v3 (signed int, unsigned char, unsigned short);
extern signed char (*v4) (signed int, unsigned char, unsigned short);
signed char v5 (unsigned short, signed short);
signed char (*v6) (unsigned short, signed short) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern signed int v9 (unsigned short, signed int);
extern signed int (*v10) (unsigned short, signed int);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern unsigned char v13 (unsigned short, signed int, unsigned char, unsigned short);
extern unsigned char (*v14) (unsigned short, signed int, unsigned char, unsigned short);
signed int v15 (signed char);
signed int (*v16) (signed char) = v15;
static signed char v17 (unsigned short);
static signed char (*v18) (unsigned short) = v17;
extern void v19 (unsigned char, unsigned short, unsigned char);
extern void (*v20) (unsigned char, unsigned short, unsigned char);
unsigned int v21 (unsigned short);
unsigned int (*v22) (unsigned short) = v21;
extern void v23 (signed char, signed short, unsigned int, unsigned short);
extern void (*v24) (signed char, signed short, unsigned int, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed int v27 (signed int, signed short);
extern signed int (*v28) (signed int, signed short);
extern void v29 (signed int, unsigned short);
extern void (*v30) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v76 = 1;
unsigned int v75 = 5U;
unsigned char v74 = 4;

unsigned int v21 (unsigned short v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = -3;
unsigned char v79 = 1;
unsigned char v78 = 0;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v81;
signed char v82;
v81 = v77 - 5;
v82 = v17 (v81);
history[history_index++] = (int)v82;
}
break;
case 10: 
{
unsigned short v83;
signed char v84;
v83 = v77 + v77;
v84 = v17 (v83);
history[history_index++] = (int)v84;
}
break;
case 12: 
return 3U;
default: abort ();
}
}
}
}

static signed char v17 (unsigned short v85)
{
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -3;
unsigned short v87 = 5;
unsigned int v86 = 7U;
trace++;
switch (trace)
{
case 7: 
{
signed int v89;
unsigned short v90;
v89 = 1 + -2;
v90 = 0 - 3;
v29 (v89, v90);
}
break;
case 9: 
return -2;
case 11: 
return -2;
default: abort ();
}
}
}
}

signed int v15 (signed char v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned int v94 = 0U;
signed short v93 = -3;
signed int v92 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned short v95, signed short v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = 0;
unsigned short v98 = 6;
signed char v97 = -2;
trace++;
switch (trace)
{
case 3: 
return 1;
default: abort ();
}
}
}
}
