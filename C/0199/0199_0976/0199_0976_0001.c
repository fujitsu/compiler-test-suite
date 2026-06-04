#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
signed short v3 (void);
signed short (*v4) (void) = v3;
extern unsigned short v5 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned short (*v6) (unsigned char, unsigned short, unsigned short, unsigned char);
unsigned char v7 (signed short, signed short);
unsigned char (*v8) (signed short, signed short) = v7;
extern signed short v9 (signed char, signed char, signed short);
extern signed short (*v10) (signed char, signed char, signed short);
extern unsigned int v11 (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned char, unsigned short, unsigned int);
signed short v13 (void);
signed short (*v14) (void) = v13;
extern unsigned int v15 (signed char, signed int, signed int);
extern unsigned int (*v16) (signed char, signed int, signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern void v21 (unsigned short, unsigned int, signed int);
extern void (*v22) (unsigned short, unsigned int, signed int);
extern unsigned short v23 (signed char, signed int, unsigned int, unsigned int);
extern unsigned short (*v24) (signed char, signed int, unsigned int, unsigned int);
signed short v25 (signed char, signed short, signed int);
signed short (*v26) (signed char, signed short, signed int) = v25;
signed int v27 (void);
signed int (*v28) (void) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v48 = 1;
signed short v47 = 0;
signed short v46 = -2;

signed int v27 (void)
{
{
for (;;) {
unsigned char v51 = 5;
signed short v50 = 3;
unsigned short v49 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v25 (signed char v52, signed short v53, signed int v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 0;
signed char v56 = 1;
signed char v55 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
signed char v60 = 0;
signed char v59 = 0;
unsigned short v58 = 0;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v61;
v61 = v17 ();
history[history_index++] = (int)v61;
}
break;
case 6: 
{
unsigned int v62;
v62 = v17 ();
history[history_index++] = (int)v62;
}
break;
case 8: 
{
signed char v63;
signed int v64;
signed int v65;
unsigned int v66;
v63 = v59 + v59;
v64 = -2 - 3;
v65 = -1 - -4;
v66 = v15 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 12: 
return -1;
default: abort ();
}
}
}
}

unsigned char v7 (signed short v67, signed short v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 6;
signed char v70 = 1;
unsigned short v69 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
unsigned char v74 = 0;
unsigned char v73 = 1;
unsigned short v72 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
