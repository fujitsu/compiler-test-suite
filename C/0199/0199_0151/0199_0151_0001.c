#include <stdlib.h>
signed char v1 (unsigned short);
signed char (*v2) (unsigned short) = v1;
unsigned int v3 (signed short);
unsigned int (*v4) (signed short) = v3;
extern unsigned char v5 (unsigned char, unsigned char, signed int);
extern unsigned char (*v6) (unsigned char, unsigned char, signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
signed short v9 (unsigned short, unsigned char);
signed short (*v10) (unsigned short, unsigned char) = v9;
extern void v11 (signed short, signed int, signed short, unsigned int);
extern void (*v12) (signed short, signed int, signed short, unsigned int);
extern signed short v13 (void);
extern signed short (*v14) (void);
unsigned int v15 (unsigned char, signed char, signed int, unsigned short);
unsigned int (*v16) (unsigned char, signed char, signed int, unsigned short) = v15;
void v17 (void);
void (*v18) (void) = v17;
extern void v21 (signed char);
extern void (*v22) (signed char);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
signed int v29 (signed short);
signed int (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v40 = 1;
signed int v39 = 0;
signed char v38 = -2;

signed int v29 (signed short v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = 1;
signed char v43 = 1;
unsigned short v42 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
signed int v47 = 2;
signed short v46 = 3;
unsigned short v45 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned char v48, signed char v49, signed int v50, unsigned short v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 6;
signed int v53 = -3;
unsigned char v52 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned short v55, unsigned char v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned char v59 = 4;
unsigned char v58 = 1;
unsigned int v57 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 6;
unsigned short v62 = 5;
unsigned short v61 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 1;
signed int v66 = 3;
unsigned int v65 = 5U;
trace++;
switch (trace)
{
case 0: 
{
signed short v68;
signed int v69;
signed short v70;
unsigned int v71;
v68 = 3 - 1;
v69 = v66 + v66;
v70 = 1 - -2;
v71 = v65 + 1U;
v11 (v68, v69, v70, v71);
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
