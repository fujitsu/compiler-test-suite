#include <stdlib.h>
void v1 (unsigned int, signed int, signed char);
void (*v2) (unsigned int, signed int, signed char) = v1;
extern signed short v3 (signed short, unsigned char, signed char, unsigned short);
extern signed short (*v4) (signed short, unsigned char, signed char, unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (signed int, signed int);
extern signed short (*v8) (signed int, signed int);
extern signed char v9 (unsigned char, signed short, unsigned short);
extern signed char (*v10) (unsigned char, signed short, unsigned short);
unsigned char v11 (signed int);
unsigned char (*v12) (signed int) = v11;
extern unsigned short v13 (unsigned short, signed char, signed char, signed int);
extern unsigned short (*v14) (unsigned short, signed char, signed char, signed int);
extern unsigned char v15 (signed char, unsigned char, signed char);
extern unsigned char (*v16) (signed char, unsigned char, signed char);
extern unsigned char v17 (unsigned int, signed int);
extern unsigned char (*v18) (unsigned int, signed int);
extern void v19 (signed int, signed int, signed short);
extern void (*v20) (signed int, signed int, signed short);
extern unsigned int v21 (signed short, unsigned short);
extern unsigned int (*v22) (signed short, unsigned short);
signed char v23 (unsigned short, signed short);
signed char (*v24) (unsigned short, signed short) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
static void v27 (signed int, signed short);
static void (*v28) (signed int, signed short) = v27;
extern signed int v29 (unsigned short, unsigned int, unsigned char, unsigned short);
extern signed int (*v30) (unsigned short, unsigned int, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v41 = 7;
unsigned short v40 = 3;
unsigned char v39 = 0;

static void v27 (signed int v42, signed short v43)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = 0;
signed int v45 = 2;
unsigned int v44 = 0U;
trace++;
switch (trace)
{
case 2: 
{
signed int v47;
signed int v48;
signed short v49;
v47 = v45 + v45;
v48 = 2 - v42;
v49 = v7 (v47, v48);
history[history_index++] = (int)v49;
}
break;
case 10: 
return;
default: abort ();
}
}
}
}

signed char v23 (unsigned short v50, signed short v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed int v54 = 0;
unsigned char v53 = 1;
unsigned short v52 = 2;
trace++;
switch (trace)
{
case 4: 
return 0;
case 6: 
return -2;
case 8: 
return 1;
default: abort ();
}
}
}
}

unsigned char v11 (signed int v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = 2;
signed short v57 = 0;
signed int v56 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned int v59, signed int v60, signed char v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 1U;
unsigned char v63 = 1;
signed short v62 = -2;
trace++;
switch (trace)
{
case 0: 
return;
case 1: 
{
signed int v65;
signed short v66;
v65 = v60 - 0;
v66 = -3 + -3;
v27 (v65, v66);
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
