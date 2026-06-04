#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern unsigned short v5 (signed char, signed int, unsigned char);
extern unsigned short (*v6) (signed char, signed int, unsigned char);
unsigned char v7 (unsigned char);
unsigned char (*v8) (unsigned char) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed short v15 (signed int, unsigned short, unsigned int);
extern signed short (*v16) (signed int, unsigned short, unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
signed int v27 (signed short);
signed int (*v28) (signed short) = v27;
signed short v29 (signed int, unsigned char, signed short, signed char);
signed short (*v30) (signed int, unsigned char, signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v57 = 1;
unsigned int v56 = 5U;
signed int v55 = 1;

signed short v29 (signed int v58, unsigned char v59, signed short v60, signed char v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 2U;
unsigned int v63 = 4U;
unsigned short v62 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (signed short v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = 3;
signed char v67 = 3;
unsigned int v66 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (void)
{
{
for (;;) {
signed short v71 = -2;
unsigned int v70 = 2U;
unsigned int v69 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
unsigned char v75 = 7;
unsigned short v74 = 0;
unsigned char v73 = 7;
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
signed short v78 = -3;
unsigned char v77 = 4;
signed char v76 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed char v79;
signed int v80;
unsigned char v81;
unsigned short v82;
v79 = 2 + 2;
v80 = -3 - 1;
v81 = 2 + v77;
v82 = v5 (v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 19: 
return 3;
default: abort ();
}
}
}
}
