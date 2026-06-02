#include <stdlib.h>
extern signed char v1 (signed char, signed short);
extern signed char (*v2) (signed char, signed short);
extern void v3 (signed char, unsigned char, signed short, signed char);
extern void (*v4) (signed char, unsigned char, signed short, signed char);
extern void v5 (signed short, unsigned char, unsigned int);
extern void (*v6) (signed short, unsigned char, unsigned int);
void v7 (void);
void (*v8) (void) = v7;
unsigned int v9 (signed int, unsigned short, unsigned int);
unsigned int (*v10) (signed int, unsigned short, unsigned int) = v9;
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
signed short v15 (unsigned int, signed int, signed short);
signed short (*v16) (unsigned int, signed int, signed short) = v15;
extern signed short v17 (signed short, signed int);
extern signed short (*v18) (signed short, signed int);
extern unsigned char v19 (unsigned short, unsigned short);
extern unsigned char (*v20) (unsigned short, unsigned short);
void v21 (signed int, signed int, unsigned int);
void (*v22) (signed int, signed int, unsigned int) = v21;
static signed short v23 (unsigned short, unsigned short, unsigned char);
static signed short (*v24) (unsigned short, unsigned short, unsigned char) = v23;
extern void v25 (signed short, signed short, unsigned char);
extern void (*v26) (signed short, signed short, unsigned char);
extern signed short v27 (signed int, unsigned char, unsigned short);
extern signed short (*v28) (signed int, unsigned char, unsigned short);
unsigned short v29 (unsigned char, signed char);
unsigned short (*v30) (unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v41 = -4;
signed int v40 = -1;
unsigned char v39 = 0;

unsigned short v29 (unsigned char v42, signed char v43)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = 2;
unsigned int v45 = 2U;
signed char v44 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v23 (unsigned short v47, unsigned short v48, unsigned char v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 5U;
signed int v51 = 3;
unsigned short v50 = 6;
trace++;
switch (trace)
{
case 8: 
return 1;
default: abort ();
}
}
}
}

void v21 (signed int v53, signed int v54, unsigned int v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 0;
signed char v57 = 2;
signed int v56 = -1;
trace++;
switch (trace)
{
case 5: 
{
signed int v59;
unsigned char v60;
unsigned short v61;
signed short v62;
v59 = v53 - v53;
v60 = 1 - 6;
v61 = 5 - 1;
v62 = v27 (v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 7: 
{
unsigned short v63;
unsigned short v64;
unsigned char v65;
signed short v66;
v63 = v58 + v58;
v64 = 0 - v58;
v65 = 2 + 1;
v66 = v23 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 9: 
return;
default: abort ();
}
}
}
}

signed short v15 (unsigned int v67, signed int v68, signed short v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned short v72 = 4;
signed int v71 = -1;
signed int v70 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed int v73, unsigned short v74, unsigned int v75)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 2;
unsigned char v77 = 5;
signed short v76 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (void)
{
{
for (;;) {
unsigned short v81 = 0;
unsigned short v80 = 6;
signed char v79 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
