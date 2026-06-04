#include <stdlib.h>
unsigned char v1 (signed int, signed int);
unsigned char (*v2) (signed int, signed int) = v1;
extern signed char v3 (signed int, signed char);
extern signed char (*v4) (signed int, signed char);
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
signed int v7 (unsigned char, signed char, unsigned int);
signed int (*v8) (unsigned char, signed char, unsigned int) = v7;
unsigned short v9 (unsigned char, signed short, signed int, signed char);
unsigned short (*v10) (unsigned char, signed short, signed int, signed char) = v9;
extern signed char v11 (signed short, unsigned char, signed short);
extern signed char (*v12) (signed short, unsigned char, signed short);
extern unsigned char v13 (signed short);
extern unsigned char (*v14) (signed short);
extern signed char v15 (signed char, signed int, signed char);
extern signed char (*v16) (signed char, signed int, signed char);
extern signed int v17 (unsigned short, unsigned int, signed int);
extern signed int (*v18) (unsigned short, unsigned int, signed int);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (signed short);
extern signed char (*v24) (signed short);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v27 (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned short (*v28) (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v63 = 5U;
unsigned int v62 = 7U;
signed short v61 = -2;

unsigned int v19 (void)
{
{
for (;;) {
signed int v66 = -3;
signed int v65 = -1;
unsigned int v64 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v67, signed short v68, signed int v69, signed char v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = 3;
signed short v72 = 2;
signed char v71 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned char v74, signed char v75, unsigned int v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned char v79 = 7;
unsigned int v78 = 6U;
unsigned int v77 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed int v80, signed int v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 3;
signed int v83 = -2;
signed int v82 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v85;
v85 = v29 ();
history[history_index++] = (int)v85;
}
break;
case 6: 
{
signed short v86;
signed char v87;
v86 = -4 - 1;
v87 = v23 (v86);
history[history_index++] = (int)v87;
}
break;
case 8: 
{
signed short v88;
signed char v89;
v88 = 0 - -3;
v89 = v23 (v88);
history[history_index++] = (int)v89;
}
break;
case 14: 
return 4;
default: abort ();
}
}
}
}
