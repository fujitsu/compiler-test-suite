#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
extern signed int v5 (signed short, signed int, unsigned short);
extern signed int (*v6) (signed short, signed int, unsigned short);
signed char v7 (signed char, unsigned int);
signed char (*v8) (signed char, unsigned int) = v7;
signed int v11 (signed int, signed int);
signed int (*v12) (signed int, signed int) = v11;
void v13 (void);
void (*v14) (void) = v13;
unsigned short v15 (unsigned int, signed short);
unsigned short (*v16) (unsigned int, signed short) = v15;
extern signed char v17 (unsigned short, unsigned char);
extern signed char (*v18) (unsigned short, unsigned char);
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
extern signed char v21 (unsigned int, unsigned int, unsigned char, signed int);
extern signed char (*v22) (unsigned int, unsigned int, unsigned char, signed int);
extern unsigned char v23 (unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned char, unsigned char);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v46 = 1;
signed int v45 = 2;
signed short v44 = -3;

unsigned int v25 (void)
{
{
for (;;) {
signed char v49 = 2;
unsigned int v48 = 6U;
unsigned short v47 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned int v50, signed short v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 0;
signed short v53 = -2;
unsigned short v52 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
signed int v57 = 3;
unsigned char v56 = 2;
unsigned char v55 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed int v58, signed int v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = 3;
unsigned int v61 = 3U;
unsigned short v60 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed char v63, unsigned int v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 7;
unsigned int v66 = 1U;
signed int v65 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v68;
unsigned int v69;
unsigned char v70;
signed int v71;
signed char v72;
v68 = 2U - v66;
v69 = 4U - v66;
v70 = 7 - 7;
v71 = -1 + v65;
v72 = v21 (v68, v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 17: 
return -4;
default: abort ();
}
}
}
}
