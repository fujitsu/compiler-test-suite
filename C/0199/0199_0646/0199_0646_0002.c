#include <stdlib.h>
extern signed short v1 (signed char, signed int);
extern signed short (*v2) (signed char, signed int);
unsigned char v3 (unsigned char, unsigned int);
unsigned char (*v4) (unsigned char, unsigned int) = v3;
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern unsigned short v7 (signed short, unsigned char, signed short);
extern unsigned short (*v8) (signed short, unsigned char, signed short);
unsigned int v9 (signed short, unsigned int);
unsigned int (*v10) (signed short, unsigned int) = v9;
unsigned char v11 (unsigned int);
unsigned char (*v12) (unsigned int) = v11;
extern unsigned int v13 (signed char, signed short, signed short);
extern unsigned int (*v14) (signed char, signed short, signed short);
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (signed int, unsigned int);
extern unsigned int (*v18) (signed int, unsigned int);
extern unsigned char v19 (unsigned int);
extern unsigned char (*v20) (unsigned int);
signed char v21 (signed char, unsigned short, signed short, unsigned short);
signed char (*v22) (signed char, unsigned short, signed short, unsigned short) = v21;
extern signed short v23 (signed char, signed int, signed char);
extern signed short (*v24) (signed char, signed int, signed char);
extern signed short v25 (unsigned int, signed int);
extern signed short (*v26) (unsigned int, signed int);
extern signed char v27 (signed int, unsigned short, signed short, unsigned char);
extern signed char (*v28) (signed int, unsigned short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v69 = 2;
unsigned short v68 = 0;
unsigned short v67 = 7;

signed char v21 (signed char v70, unsigned short v71, signed short v72, unsigned short v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = -3;
signed int v75 = 0;
signed short v74 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v77;
signed int v78;
signed short v79;
v77 = 4U - 4U;
v78 = v75 - v76;
v79 = v25 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 3: 
return v70;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 5U;
unsigned char v82 = 3;
unsigned short v81 = 3;
trace++;
switch (trace)
{
case 5: 
{
v15 ();
}
break;
case 15: 
return 4;
default: abort ();
}
}
}
}

unsigned int v9 (signed short v84, unsigned int v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 4;
signed char v87 = -1;
unsigned char v86 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed char v91 = -3;
unsigned char v90 = 5;
unsigned int v89 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v92, unsigned int v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 5U;
signed short v95 = 0;
unsigned int v94 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
