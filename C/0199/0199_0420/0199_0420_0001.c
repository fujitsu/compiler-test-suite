#include <stdlib.h>
unsigned int v1 (signed char, unsigned int);
unsigned int (*v2) (signed char, unsigned int) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
static unsigned short v5 (unsigned short, signed int);
static unsigned short (*v6) (unsigned short, signed int) = v5;
extern unsigned char v7 (signed char);
extern unsigned char (*v8) (signed char);
extern unsigned short v9 (unsigned short, unsigned short, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned short, unsigned int);
extern void v11 (unsigned char, signed short);
extern void (*v12) (unsigned char, signed short);
extern void v13 (signed short, signed int, signed short);
extern void (*v14) (signed short, signed int, signed short);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
signed short v19 (unsigned short, unsigned char, unsigned short);
signed short (*v20) (unsigned short, unsigned char, unsigned short) = v19;
extern unsigned int v21 (signed char, unsigned short, unsigned int);
extern unsigned int (*v22) (signed char, unsigned short, unsigned int);
unsigned int v23 (signed char, unsigned short, unsigned char, signed int);
unsigned int (*v24) (signed char, unsigned short, unsigned char, signed int) = v23;
unsigned char v25 (unsigned short);
unsigned char (*v26) (unsigned short) = v25;
extern signed short v27 (signed int, unsigned char, unsigned int, signed char);
extern signed short (*v28) (signed int, unsigned char, unsigned int, signed char);
static unsigned char v29 (void);
static unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v45 = -1;
unsigned int v44 = 6U;
signed char v43 = -1;

static unsigned char v29 (void)
{
{
for (;;) {
signed int v48 = 0;
signed char v47 = -3;
signed char v46 = -3;
trace++;
switch (trace)
{
case 1: 
return 7;
default: abort ();
}
}
}
}

unsigned char v25 (unsigned short v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 5U;
signed char v51 = 1;
signed short v50 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed char v53, unsigned short v54, unsigned char v55, signed int v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = 2;
signed int v58 = -4;
unsigned short v57 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned short v60, unsigned char v61, unsigned short v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 0;
unsigned char v64 = 6;
unsigned short v63 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v5 (unsigned short v66, signed int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 2U;
signed short v69 = 0;
signed char v68 = 3;
trace++;
switch (trace)
{
case 6: 
{
signed char v71;
unsigned char v72;
v71 = v68 - 3;
v72 = v7 (v71);
history[history_index++] = (int)v72;
}
break;
case 14: 
return v66;
default: abort ();
}
}
}
}

unsigned int v1 (signed char v73, unsigned int v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 7;
unsigned int v76 = 3U;
unsigned char v75 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v78;
v78 = v29 ();
history[history_index++] = (int)v78;
}
break;
case 2: 
{
unsigned char v79;
signed short v80;
v79 = 5 + 2;
v80 = -4 + -2;
v11 (v79, v80);
}
break;
case 4: 
return v76;
case 5: 
{
unsigned short v81;
signed int v82;
unsigned short v83;
v81 = v77 - v77;
v82 = 2 - -1;
v83 = v5 (v81, v82);
history[history_index++] = (int)v83;
}
break;
case 15: 
return 2U;
default: abort ();
}
}
}
}
