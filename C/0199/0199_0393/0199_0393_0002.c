#include <stdlib.h>
extern void v1 (unsigned char);
extern void (*v2) (unsigned char);
extern signed char v3 (unsigned int, unsigned int, unsigned char);
extern signed char (*v4) (unsigned int, unsigned int, unsigned char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (signed short, unsigned int, signed short, signed int);
extern unsigned short (*v8) (signed short, unsigned int, signed short, signed int);
signed char v9 (unsigned int, unsigned int, unsigned int, signed short);
signed char (*v10) (unsigned int, unsigned int, unsigned int, signed short) = v9;
extern void v11 (unsigned int, unsigned int, unsigned short, signed short);
extern void (*v12) (unsigned int, unsigned int, unsigned short, signed short);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
unsigned char v17 (unsigned char);
unsigned char (*v18) (unsigned char) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (unsigned char, signed short);
extern unsigned int (*v22) (unsigned char, signed short);
unsigned short v23 (unsigned int);
unsigned short (*v24) (unsigned int) = v23;
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern signed int v27 (unsigned short);
extern signed int (*v28) (unsigned short);
extern unsigned int v29 (signed int, signed int);
extern unsigned int (*v30) (signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v74 = 0;
unsigned short v73 = 7;
signed char v72 = -3;

unsigned short v23 (unsigned int v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = -2;
unsigned char v77 = 4;
signed short v76 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned char v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = 1;
unsigned int v81 = 0U;
signed char v80 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned int v83, unsigned int v84, unsigned int v85, signed short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 1U;
unsigned char v88 = 4;
unsigned char v87 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed short v90;
v90 = v5 ();
history[history_index++] = (int)v90;
}
break;
case 3: 
{
signed short v91;
v91 = v5 ();
history[history_index++] = (int)v91;
}
break;
case 15: 
return -4;
default: abort ();
}
}
}
}
