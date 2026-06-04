#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern unsigned char v3 (signed int, unsigned char, unsigned char);
extern unsigned char (*v4) (signed int, unsigned char, unsigned char);
extern unsigned int v5 (unsigned int);
extern unsigned int (*v6) (unsigned int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned short v9 (signed int, signed int, signed char);
extern unsigned short (*v10) (signed int, signed int, signed char);
extern signed short v11 (unsigned short, unsigned short);
extern signed short (*v12) (unsigned short, unsigned short);
extern unsigned int v13 (unsigned char, unsigned int, unsigned short, signed char);
extern unsigned int (*v14) (unsigned char, unsigned int, unsigned short, signed char);
extern signed short v15 (unsigned int, unsigned char, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char, unsigned char);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
signed short v19 (unsigned int);
signed short (*v20) (unsigned int) = v19;
void v21 (void);
void (*v22) (void) = v21;
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern void v29 (unsigned short, unsigned char, signed int);
extern void (*v30) (unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v66 = -3;
unsigned char v65 = 3;
signed char v64 = 2;

unsigned char v23 (void)
{
{
for (;;) {
unsigned char v69 = 6;
signed int v68 = 2;
signed short v67 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (void)
{
{
for (;;) {
unsigned char v72 = 6;
unsigned char v71 = 6;
signed char v70 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned int v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed short v76 = 0;
unsigned short v75 = 3;
signed char v74 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed int v79 = -2;
signed int v78 = -4;
unsigned short v77 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v80;
unsigned int v81;
v80 = 5U - 6U;
v81 = v5 (v80);
history[history_index++] = (int)v81;
}
break;
case 2: 
{
unsigned char v82;
unsigned int v83;
unsigned short v84;
signed char v85;
unsigned int v86;
v82 = 5 + 3;
v83 = 7U - 0U;
v84 = 1 + 1;
v85 = -1 + 3;
v86 = v13 (v82, v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 10: 
{
signed int v87;
unsigned char v88;
unsigned char v89;
unsigned char v90;
v87 = v79 + v78;
v88 = 3 - 6;
v89 = 2 + 7;
v90 = v3 (v87, v88, v89);
history[history_index++] = (int)v90;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
