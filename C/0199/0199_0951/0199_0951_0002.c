#include <stdlib.h>
extern unsigned char v1 (signed int, signed char, signed int);
extern unsigned char (*v2) (signed int, signed char, signed int);
unsigned int v3 (unsigned short);
unsigned int (*v4) (unsigned short) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (void);
extern signed int (*v8) (void);
void v9 (signed int, unsigned char, unsigned char);
void (*v10) (signed int, unsigned char, unsigned char) = v9;
unsigned int v11 (signed char);
unsigned int (*v12) (signed char) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (signed int, unsigned char, unsigned int);
extern signed char (*v16) (signed int, unsigned char, unsigned int);
extern void v17 (signed short, unsigned char, unsigned short);
extern void (*v18) (signed short, unsigned char, unsigned short);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned char v21 (signed int, unsigned char, unsigned int);
extern unsigned char (*v22) (signed int, unsigned char, unsigned int);
extern void v23 (unsigned char, signed short);
extern void (*v24) (unsigned char, signed short);
extern unsigned char v25 (unsigned int);
extern unsigned char (*v26) (unsigned int);
extern signed int v27 (unsigned short, unsigned int);
extern signed int (*v28) (unsigned short, unsigned int);
signed short v29 (unsigned int, signed char, unsigned int);
signed short (*v30) (unsigned int, signed char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v69 = 2;
unsigned char v68 = 5;
signed char v67 = -2;

signed short v29 (unsigned int v70, signed char v71, unsigned int v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 3;
unsigned short v74 = 0;
unsigned short v73 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed char v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = 1;
unsigned char v78 = 3;
signed short v77 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v80, unsigned char v81, unsigned char v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed char v85 = -3;
unsigned short v84 = 7;
signed char v83 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v86)
{
history[history_index++] = (int)v86;
{
for (;;) {
unsigned char v89 = 4;
unsigned short v88 = 7;
unsigned short v87 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed char v90;
v90 = v5 ();
history[history_index++] = (int)v90;
}
break;
case 5: 
{
signed char v91;
v91 = v5 ();
history[history_index++] = (int)v91;
}
break;
case 7: 
{
unsigned int v92;
unsigned char v93;
v92 = 4U + 6U;
v93 = v25 (v92);
history[history_index++] = (int)v93;
}
break;
case 13: 
return 7U;
default: abort ();
}
}
}
}
