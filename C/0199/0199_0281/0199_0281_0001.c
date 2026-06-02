#include <stdlib.h>
signed int v1 (unsigned short, unsigned int, unsigned short);
signed int (*v2) (unsigned short, unsigned int, unsigned short) = v1;
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern unsigned int v5 (signed short, unsigned int);
extern unsigned int (*v6) (signed short, unsigned int);
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
extern void v9 (signed char, unsigned int, signed char);
extern void (*v10) (signed char, unsigned int, signed char);
unsigned short v11 (unsigned char);
unsigned short (*v12) (unsigned char) = v11;
extern unsigned int v13 (unsigned short, signed char);
extern unsigned int (*v14) (unsigned short, signed char);
extern signed char v15 (signed short, unsigned int, signed int, signed char);
extern signed char (*v16) (signed short, unsigned int, signed int, signed char);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned char v19 (signed int, unsigned short, signed short);
extern unsigned char (*v20) (signed int, unsigned short, signed short);
signed char v21 (unsigned short);
signed char (*v22) (unsigned short) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
unsigned short v25 (signed int, unsigned int, signed int);
unsigned short (*v26) (signed int, unsigned int, signed int) = v25;
extern unsigned char v27 (signed int, signed short);
extern unsigned char (*v28) (signed int, signed short);
extern signed char v29 (unsigned int, unsigned char, signed char, unsigned int);
extern signed char (*v30) (unsigned int, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v68 = -2;
unsigned int v67 = 0U;
unsigned short v66 = 2;

unsigned short v25 (signed int v69, unsigned int v70, signed int v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = 0;
signed char v73 = 1;
unsigned short v72 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (unsigned short v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 2;
signed short v77 = -2;
unsigned short v76 = 1;
trace++;
switch (trace)
{
case 5: 
return -2;
case 9: 
{
v17 ();
}
break;
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 7;
unsigned char v81 = 6;
signed int v80 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned short v83, unsigned int v84, unsigned short v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 4;
unsigned int v87 = 3U;
unsigned char v86 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v89;
unsigned int v90;
unsigned int v91;
v89 = -2 - 1;
v90 = 2U + v87;
v91 = v5 (v89, v90);
history[history_index++] = (int)v91;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
