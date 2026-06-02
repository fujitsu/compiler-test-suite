#include <stdlib.h>
extern signed char v1 (signed short, unsigned char, signed char);
extern signed char (*v2) (signed short, unsigned char, signed char);
extern unsigned char v3 (signed int, unsigned char);
extern unsigned char (*v4) (signed int, unsigned char);
extern unsigned char v5 (unsigned short, signed short, signed char);
extern unsigned char (*v6) (unsigned short, signed short, signed char);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern void v11 (signed int, signed short, unsigned short);
extern void (*v12) (signed int, signed short, unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed short v15 (signed char, signed short, unsigned char);
extern signed short (*v16) (signed char, signed short, unsigned char);
signed short v19 (unsigned short, signed char, signed char, unsigned int);
signed short (*v20) (unsigned short, signed char, signed char, unsigned int) = v19;
extern signed short v21 (signed char, signed int, unsigned char);
extern signed short (*v22) (signed char, signed int, unsigned char);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern void v25 (signed int);
extern void (*v26) (signed int);
signed short v27 (unsigned int);
signed short (*v28) (unsigned int) = v27;
extern signed char v29 (unsigned short, unsigned char, signed int);
extern signed char (*v30) (unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v56 = 1;
signed char v55 = 3;
signed int v54 = -4;

signed short v27 (unsigned int v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
unsigned char v60 = 6;
signed int v59 = -2;
unsigned short v58 = 5;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v61;
v61 = v9 ();
history[history_index++] = (int)v61;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

unsigned char v23 (void)
{
{
for (;;) {
signed int v64 = 0;
unsigned char v63 = 7;
signed short v62 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed int v65;
unsigned char v66;
unsigned char v67;
v65 = v64 - -2;
v66 = 1 + v63;
v67 = v3 (v65, v66);
history[history_index++] = (int)v67;
}
break;
case 3: 
return v63;
default: abort ();
}
}
}
}

signed short v19 (unsigned short v68, signed char v69, signed char v70, unsigned int v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = -4;
unsigned char v73 = 7;
unsigned short v72 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
unsigned char v77 = 4;
unsigned int v76 = 2U;
signed short v75 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
