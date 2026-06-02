#include <stdlib.h>
void v1 (signed char, unsigned char);
void (*v2) (signed char, unsigned char) = v1;
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed short v5 (signed int, signed char, signed int);
extern signed short (*v6) (signed int, signed char, signed int);
extern signed int v7 (void);
extern signed int (*v8) (void);
unsigned int v9 (unsigned short, unsigned int);
unsigned int (*v10) (unsigned short, unsigned int) = v9;
extern void v11 (unsigned char, signed char, signed int, unsigned short);
extern void (*v12) (unsigned char, signed char, signed int, unsigned short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern unsigned short v17 (signed char, signed char);
extern unsigned short (*v18) (signed char, signed char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (unsigned short, signed char, signed int);
extern unsigned int (*v22) (unsigned short, signed char, signed int);
extern signed char v23 (signed short, unsigned char, unsigned short);
extern signed char (*v24) (signed short, unsigned char, unsigned short);
extern unsigned short v25 (unsigned char, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned char, unsigned int, unsigned int);
void v27 (unsigned short, signed short, unsigned char, signed short);
void (*v28) (unsigned short, signed short, unsigned char, signed short) = v27;
static signed int v29 (unsigned char, unsigned int, unsigned char);
static signed int (*v30) (unsigned char, unsigned int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v52 = 2;
signed char v51 = 3;
unsigned char v50 = 7;

static signed int v29 (unsigned char v53, unsigned int v54, unsigned char v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 0;
unsigned char v57 = 2;
unsigned short v56 = 5;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}

void v27 (unsigned short v59, signed short v60, unsigned char v61, signed short v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = -2;
signed short v64 = -4;
signed int v63 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v66, unsigned int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed char v70 = -1;
signed char v69 = -4;
signed short v68 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed char v71, unsigned char v72)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 6U;
unsigned short v74 = 3;
signed int v73 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v76;
unsigned int v77;
unsigned char v78;
signed int v79;
v76 = 0 - v72;
v77 = 0U + 5U;
v78 = v72 + 3;
v79 = v29 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 2: 
{
signed short v80;
unsigned char v81;
unsigned short v82;
signed char v83;
v80 = -1 + 3;
v81 = v72 - v72;
v82 = 4 - 6;
v83 = v23 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 4: 
{
signed int v84;
v84 = v19 ();
history[history_index++] = (int)v84;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
