#include <stdlib.h>
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
unsigned int v5 (signed char);
unsigned int (*v6) (signed char) = v5;
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern unsigned int v9 (signed int, signed short, signed char);
extern unsigned int (*v10) (signed int, signed short, signed char);
unsigned char v11 (signed int);
unsigned char (*v12) (signed int) = v11;
extern unsigned char v13 (signed short);
extern unsigned char (*v14) (signed short);
extern unsigned short v15 (unsigned int);
extern unsigned short (*v16) (unsigned int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed int, signed char, unsigned int);
extern signed int (*v26) (signed int, signed char, unsigned int);
extern void v27 (unsigned short, signed int, unsigned char);
extern void (*v28) (unsigned short, signed int, unsigned char);
signed char v29 (unsigned char, signed short, signed short, unsigned int);
signed char (*v30) (unsigned char, signed short, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v62 = 2;
unsigned char v61 = 4;
signed char v60 = -2;

signed char v29 (unsigned char v63, signed short v64, signed short v65, unsigned int v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 0;
signed short v68 = -1;
unsigned int v67 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed int v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = -2;
signed char v72 = 1;
signed char v71 = 2;
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
signed short v76 = -1;
unsigned char v75 = 4;
unsigned char v74 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed char v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
unsigned short v80 = 3;
unsigned char v79 = 2;
signed short v78 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v81;
unsigned short v82;
v81 = 4U + 4U;
v82 = v15 (v81);
history[history_index++] = (int)v82;
}
break;
case 11: 
return 7U;
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
signed char v85 = 1;
unsigned int v84 = 0U;
signed char v83 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
