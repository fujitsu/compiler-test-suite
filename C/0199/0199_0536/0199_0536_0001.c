#include <stdlib.h>
signed char v1 (unsigned char, unsigned short, signed char, signed int);
signed char (*v2) (unsigned char, unsigned short, signed char, signed int) = v1;
extern unsigned short v3 (signed char, unsigned char, unsigned short, signed char);
extern unsigned short (*v4) (signed char, unsigned char, unsigned short, signed char);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
unsigned char v7 (unsigned short);
unsigned char (*v8) (unsigned short) = v7;
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (signed short, unsigned char);
extern signed char (*v16) (signed short, unsigned char);
extern unsigned short v17 (signed int, signed int, signed int, signed int);
extern unsigned short (*v18) (signed int, signed int, signed int, signed int);
extern unsigned short v19 (unsigned int, signed short, signed char, unsigned short);
extern unsigned short (*v20) (unsigned int, signed short, signed char, unsigned short);
signed int v21 (signed short);
signed int (*v22) (signed short) = v21;
extern signed int v23 (unsigned int, signed int, unsigned int);
extern signed int (*v24) (unsigned int, signed int, unsigned int);
extern unsigned int v25 (signed char, unsigned short);
extern unsigned int (*v26) (signed char, unsigned short);
extern unsigned char v27 (unsigned int, signed int, unsigned int);
extern unsigned char (*v28) (unsigned int, signed int, unsigned int);
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v52 = -3;
unsigned short v51 = 1;
signed int v50 = -1;

signed int v21 (signed short v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = 1;
unsigned short v55 = 7;
signed char v54 = 0;
trace++;
switch (trace)
{
case 9: 
return 0;
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
signed char v59 = -3;
unsigned char v58 = 4;
unsigned short v57 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 5;
signed int v62 = 1;
signed short v61 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned char v64, unsigned short v65, signed char v66, signed int v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 4U;
unsigned int v69 = 7U;
signed char v68 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v71;
signed char v72;
v71 = 2 + v64;
v72 = v66 + 3;
v5 (v71, v72);
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
