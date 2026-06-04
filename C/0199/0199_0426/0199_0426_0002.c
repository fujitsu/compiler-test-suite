#include <stdlib.h>
extern signed char v3 (signed char, signed char, signed int, unsigned short);
extern signed char (*v4) (signed char, signed char, signed int, unsigned short);
extern signed int v5 (unsigned char, unsigned int, unsigned short, signed int);
extern signed int (*v6) (unsigned char, unsigned int, unsigned short, signed int);
extern void v7 (signed char, unsigned int);
extern void (*v8) (signed char, unsigned int);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern unsigned int v11 (unsigned int, signed int, signed short, unsigned char);
extern unsigned int (*v12) (unsigned int, signed int, signed short, unsigned char);
unsigned int v13 (signed int);
unsigned int (*v14) (signed int) = v13;
unsigned char v15 (signed int, signed int, signed short, unsigned short);
unsigned char (*v16) (signed int, signed int, signed short, unsigned short) = v15;
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
extern signed char v19 (unsigned short, unsigned short, signed int);
extern signed char (*v20) (unsigned short, unsigned short, signed int);
extern unsigned int v21 (unsigned char, signed int);
extern unsigned int (*v22) (unsigned char, signed int);
unsigned int v23 (signed int);
unsigned int (*v24) (signed int) = v23;
extern signed short v25 (signed short, signed short, unsigned int);
extern signed short (*v26) (signed short, signed short, unsigned int);
unsigned char v27 (unsigned int);
unsigned char (*v28) (unsigned int) = v27;
extern signed short v29 (signed char, unsigned int, unsigned char, unsigned int);
extern signed short (*v30) (signed char, unsigned int, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v64 = -4;
signed short v63 = 0;
unsigned int v62 = 6U;

unsigned char v27 (unsigned int v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
unsigned char v68 = 4;
signed short v67 = 1;
signed int v66 = -3;
trace++;
switch (trace)
{
case 1: 
return 2;
default: abort ();
}
}
}
}

unsigned int v23 (signed int v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
unsigned short v72 = 4;
signed int v71 = 1;
signed char v70 = -1;
trace++;
switch (trace)
{
case 9: 
{
signed short v73;
signed short v74;
unsigned int v75;
signed short v76;
v73 = -1 + 0;
v74 = 1 - 1;
v75 = 2U + 4U;
v76 = v25 (v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 11: 
return 6U;
default: abort ();
}
}
}
}

unsigned char v15 (signed int v77, signed int v78, signed short v79, unsigned short v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 2U;
signed short v82 = -2;
unsigned int v81 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed int v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
signed char v87 = -1;
unsigned short v86 = 4;
signed int v85 = 0;
trace++;
switch (trace)
{
case 3: 
return 0U;
case 5: 
return 3U;
default: abort ();
}
}
}
}
