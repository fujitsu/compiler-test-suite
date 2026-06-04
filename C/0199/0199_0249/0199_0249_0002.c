#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed int v5 (unsigned short, unsigned short, unsigned short, unsigned char);
extern signed int (*v6) (unsigned short, unsigned short, unsigned short, unsigned char);
extern signed short v7 (signed short, signed char, unsigned int, signed char);
extern signed short (*v8) (signed short, signed char, unsigned int, signed char);
extern unsigned int v9 (signed short, unsigned char, signed int, signed short);
extern unsigned int (*v10) (signed short, unsigned char, signed int, signed short);
extern unsigned char v11 (signed char, unsigned short);
extern unsigned char (*v12) (signed char, unsigned short);
static void v13 (void);
static void (*v14) (void) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
signed short v21 (unsigned short, signed int, signed int);
signed short (*v22) (unsigned short, signed int, signed int) = v21;
extern signed char v23 (signed int, signed short, signed short, unsigned short);
extern signed char (*v24) (signed int, signed short, signed short, unsigned short);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern void v27 (unsigned int, unsigned char);
extern void (*v28) (unsigned int, unsigned char);
extern unsigned char v29 (unsigned short, unsigned int, signed int);
extern unsigned char (*v30) (unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v75 = 3;
unsigned int v74 = 1U;
signed short v73 = -2;

signed short v21 (unsigned short v76, signed int v77, signed int v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 7U;
signed char v80 = 0;
unsigned short v79 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
signed short v84 = -2;
signed short v83 = 1;
signed char v82 = -2;
trace++;
switch (trace)
{
case 4: 
return 7;
case 6: 
return 7;
default: abort ();
}
}
}
}

static void v13 (void)
{
{
for (;;) {
signed short v87 = 2;
signed char v86 = 2;
unsigned short v85 = 0;
trace++;
switch (trace)
{
case 9: 
return;
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
unsigned short v90 = 5;
signed char v89 = 2;
signed int v88 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v91;
signed char v92;
v91 = 4 + v90;
v92 = v17 (v91);
history[history_index++] = (int)v92;
}
break;
case 2: 
{
unsigned short v93;
signed char v94;
v93 = 0 + 2;
v94 = v17 (v93);
history[history_index++] = (int)v94;
}
break;
case 8: 
{
v13 ();
}
break;
case 10: 
{
unsigned short v95;
unsigned short v96;
unsigned short v97;
unsigned char v98;
signed int v99;
v95 = 3 + v90;
v96 = v90 + v90;
v97 = 7 - 4;
v98 = 6 + 2;
v99 = v5 (v95, v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 12: 
return v89;
default: abort ();
}
}
}
}
