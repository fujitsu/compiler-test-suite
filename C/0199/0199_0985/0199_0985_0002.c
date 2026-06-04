#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed int v5 (signed short, unsigned char, signed short);
extern signed int (*v6) (signed short, unsigned char, signed short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned int);
extern signed char v11 (signed char, signed char, unsigned int);
extern signed char (*v12) (signed char, signed char, unsigned int);
void v13 (signed int, unsigned char, unsigned char, signed int);
void (*v14) (signed int, unsigned char, unsigned char, signed int) = v13;
signed short v15 (void);
signed short (*v16) (void) = v15;
extern signed short v17 (signed short, signed short, unsigned short);
extern signed short (*v18) (signed short, signed short, unsigned short);
signed char v19 (signed char, unsigned short);
signed char (*v20) (signed char, unsigned short) = v19;
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
signed short v29 (unsigned int, signed char, unsigned char, signed int);
signed short (*v30) (unsigned int, signed char, unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v60 = -3;
signed short v59 = 1;
signed char v58 = 0;

signed short v29 (unsigned int v61, signed char v62, unsigned char v63, signed int v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = 3;
unsigned int v66 = 6U;
unsigned char v65 = 5;
trace++;
switch (trace)
{
case 3: 
return v67;
case 5: 
return -3;
case 7: 
return 2;
default: abort ();
}
}
}
}

signed char v19 (signed char v68, unsigned short v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 0U;
signed char v71 = -3;
signed short v70 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
unsigned char v75 = 5;
signed char v74 = -3;
signed int v73 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed int v76, unsigned char v77, unsigned char v78, signed int v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 4U;
signed int v81 = 2;
signed int v80 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
signed int v85 = 2;
unsigned int v84 = 5U;
signed int v83 = 0;
trace++;
switch (trace)
{
case 0: 
return;
case 1: 
{
unsigned short v86;
unsigned int v87;
v86 = 2 - 2;
v87 = v23 (v86);
history[history_index++] = (int)v87;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
