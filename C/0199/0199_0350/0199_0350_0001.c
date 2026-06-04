#include <stdlib.h>
extern unsigned short v1 (signed short, signed short, unsigned int, signed int);
extern unsigned short (*v2) (signed short, signed short, unsigned int, signed int);
extern signed short v3 (signed int);
extern signed short (*v4) (signed int);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
signed short v7 (signed int, signed int, unsigned char, unsigned short);
signed short (*v8) (signed int, signed int, unsigned char, unsigned short) = v7;
extern unsigned int v11 (signed int, unsigned int);
extern unsigned int (*v12) (signed int, unsigned int);
extern signed short v13 (signed short, signed char, unsigned short);
extern signed short (*v14) (signed short, signed char, unsigned short);
extern void v15 (signed short, signed char);
extern void (*v16) (signed short, signed char);
extern unsigned int v19 (signed char, unsigned int);
extern unsigned int (*v20) (signed char, unsigned int);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
signed char v23 (signed short);
signed char (*v24) (signed short) = v23;
extern unsigned int v25 (signed short, unsigned short, unsigned int);
extern unsigned int (*v26) (signed short, unsigned short, unsigned int);
extern signed char v27 (unsigned int, signed char);
extern signed char (*v28) (unsigned int, signed char);
unsigned int v29 (unsigned short, unsigned short, signed int, signed int);
unsigned int (*v30) (unsigned short, unsigned short, signed int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v59 = 3;
signed char v58 = -2;
signed char v57 = 3;

unsigned int v29 (unsigned short v60, unsigned short v61, signed int v62, signed int v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned char v66 = 0;
unsigned short v65 = 2;
signed int v64 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed short v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = -2;
unsigned short v69 = 3;
unsigned int v68 = 1U;
trace++;
switch (trace)
{
case 1: 
return -2;
case 9: 
return -4;
default: abort ();
}
}
}
}

signed short v7 (signed int v71, signed int v72, unsigned char v73, unsigned short v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = 0;
signed int v76 = -4;
signed char v75 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
unsigned int v80 = 6U;
signed short v79 = -3;
unsigned char v78 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
