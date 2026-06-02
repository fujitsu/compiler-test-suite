#include <stdlib.h>
extern signed char v1 (signed int, unsigned int, signed char, signed short);
extern signed char (*v2) (signed int, unsigned int, signed char, signed short);
signed char v3 (void);
signed char (*v4) (void) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (signed char, signed short);
extern signed short (*v8) (signed char, signed short);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern unsigned char v11 (unsigned int, signed char, unsigned char);
extern unsigned char (*v12) (unsigned int, signed char, unsigned char);
extern signed char v13 (signed int, signed char);
extern signed char (*v14) (signed int, signed char);
unsigned short v15 (signed int, signed short, signed short);
unsigned short (*v16) (signed int, signed short, signed short) = v15;
extern unsigned int v17 (unsigned int, unsigned short);
extern unsigned int (*v18) (unsigned int, unsigned short);
void v19 (unsigned int, signed int);
void (*v20) (unsigned int, signed int) = v19;
extern signed char v21 (void);
extern signed char (*v22) (void);
signed short v23 (signed int);
signed short (*v24) (signed int) = v23;
extern unsigned int v25 (signed int, unsigned char, signed short);
extern unsigned int (*v26) (signed int, unsigned char, signed short);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern void v29 (unsigned int, signed int, signed short);
extern void (*v30) (unsigned int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v75 = -1;
unsigned short v74 = 1;
signed char v73 = 1;

signed short v23 (signed int v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned int v79 = 7U;
signed short v78 = 1;
signed short v77 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned int v80, signed int v81)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned short v84 = 0;
signed int v83 = 1;
unsigned short v82 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed char v85;
v85 = v21 ();
history[history_index++] = (int)v85;
}
break;
case 5: 
{
signed char v86;
v86 = v21 ();
history[history_index++] = (int)v86;
}
break;
case 7: 
{
signed char v87;
v87 = v21 ();
history[history_index++] = (int)v87;
}
break;
case 9: 
{
signed char v88;
v88 = v21 ();
history[history_index++] = (int)v88;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v15 (signed int v89, signed short v90, signed short v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed char v94 = -1;
unsigned short v93 = 7;
signed char v92 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
signed char v97 = -1;
unsigned char v96 = 3;
unsigned short v95 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
