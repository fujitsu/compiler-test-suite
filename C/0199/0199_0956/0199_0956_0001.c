#include <stdlib.h>
void v1 (signed int, unsigned short);
void (*v2) (signed int, unsigned short) = v1;
static unsigned int v3 (unsigned int);
static unsigned int (*v4) (unsigned int) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
static signed int v7 (signed int);
static signed int (*v8) (signed int) = v7;
extern unsigned char v9 (signed char, signed int, unsigned short);
extern unsigned char (*v10) (signed char, signed int, unsigned short);
extern unsigned int v11 (signed short, unsigned char, unsigned int);
extern unsigned int (*v12) (signed short, unsigned char, unsigned int);
extern signed int v13 (unsigned short);
extern signed int (*v14) (unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (signed int, signed short, signed short);
extern signed short (*v18) (signed int, signed short, signed short);
extern unsigned short v19 (unsigned short);
extern unsigned short (*v20) (unsigned short);
unsigned char v21 (signed int);
unsigned char (*v22) (signed int) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v46 = 6;
signed char v45 = -2;
signed int v44 = 3;

unsigned char v21 (signed int v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = -2;
signed int v49 = 2;
signed char v48 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v7 (signed int v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = 0;
unsigned char v53 = 7;
unsigned short v52 = 2;
trace++;
switch (trace)
{
case 4: 
return v51;
default: abort ();
}
}
}
}

static unsigned int v3 (unsigned int v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -2;
signed char v57 = -4;
signed char v56 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v59;
v59 = v25 ();
history[history_index++] = (int)v59;
}
break;
case 3: 
{
signed int v60;
signed int v61;
v60 = -4 + -2;
v61 = v7 (v60);
history[history_index++] = (int)v61;
}
break;
case 5: 
{
unsigned short v62;
signed int v63;
v62 = 4 - 4;
v63 = v13 (v62);
history[history_index++] = (int)v63;
}
break;
case 13: 
return 7U;
default: abort ();
}
}
}
}

void v1 (signed int v64, unsigned short v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = -2;
unsigned int v67 = 0U;
unsigned char v66 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v69;
unsigned int v70;
v69 = v67 - v67;
v70 = v3 (v69);
history[history_index++] = (int)v70;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
