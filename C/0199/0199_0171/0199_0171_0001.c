#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern unsigned char v5 (unsigned short, signed short);
extern unsigned char (*v6) (unsigned short, signed short);
unsigned char v7 (unsigned int, signed int);
unsigned char (*v8) (unsigned int, signed int) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (void);
extern void (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
unsigned char v15 (signed int);
unsigned char (*v16) (signed int) = v15;
extern unsigned int v17 (unsigned short, unsigned char, signed short, unsigned char);
extern unsigned int (*v18) (unsigned short, unsigned char, signed short, unsigned char);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern void v21 (signed short, signed int);
extern void (*v22) (signed short, signed int);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern signed int v25 (signed char, signed char, signed int);
extern signed int (*v26) (signed char, signed char, signed int);
extern unsigned char v27 (signed char, signed short, unsigned int);
extern unsigned char (*v28) (signed char, signed short, unsigned int);
extern unsigned int v29 (signed short, unsigned char);
extern unsigned int (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v70 = 0;
unsigned char v69 = 4;
unsigned short v68 = 3;

unsigned int v23 (void)
{
{
for (;;) {
unsigned int v73 = 7U;
unsigned short v72 = 0;
unsigned char v71 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 6;
signed short v76 = 0;
unsigned char v75 = 5;
trace++;
switch (trace)
{
case 3: 
return 3;
case 9: 
return 4;
case 11: 
return 4;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v78, signed int v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 2;
unsigned int v81 = 4U;
signed char v80 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
unsigned int v85 = 5U;
signed short v84 = 0;
unsigned char v83 = 6;
trace++;
switch (trace)
{
case 1: 
{
signed char v86;
signed char v87;
signed int v88;
signed int v89;
v86 = -1 - -2;
v87 = -3 + -4;
v88 = -3 - -1;
v89 = v25 (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 5: 
{
signed char v90;
signed char v91;
signed int v92;
signed int v93;
v90 = 2 + -4;
v91 = -3 - 2;
v92 = -2 + -3;
v93 = v25 (v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 7: 
{
signed char v94;
signed char v95;
signed int v96;
signed int v97;
v94 = -2 + 0;
v95 = -1 + -1;
v96 = 3 + -4;
v97 = v25 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}
