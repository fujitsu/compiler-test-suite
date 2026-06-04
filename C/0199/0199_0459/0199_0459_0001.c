#include <stdlib.h>
extern unsigned int v1 (signed int, signed int);
extern unsigned int (*v2) (signed int, signed int);
extern unsigned char v3 (signed short, unsigned short, unsigned int);
extern unsigned char (*v4) (signed short, unsigned short, unsigned int);
extern signed short v5 (void);
extern signed short (*v6) (void);
unsigned char v7 (unsigned char, unsigned short, unsigned short);
unsigned char (*v8) (unsigned char, unsigned short, unsigned short) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (unsigned int, signed char, unsigned short, unsigned short);
extern signed short (*v12) (unsigned int, signed char, unsigned short, unsigned short);
extern void v13 (unsigned short);
extern void (*v14) (unsigned short);
signed char v15 (signed char);
signed char (*v16) (signed char) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned int v19 (signed char, signed int, unsigned short);
extern unsigned int (*v20) (signed char, signed int, unsigned short);
extern signed int v21 (signed short, unsigned short, unsigned char);
extern signed int (*v22) (signed short, unsigned short, unsigned char);
extern signed char v23 (signed short, unsigned int);
extern signed char (*v24) (signed short, unsigned int);
extern signed short v25 (signed short, unsigned short, signed int);
extern signed short (*v26) (signed short, unsigned short, signed int);
extern unsigned char v27 (unsigned int, unsigned int, signed char);
extern unsigned char (*v28) (unsigned int, unsigned int, signed char);
static void v29 (void);
static void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v45 = 1;
unsigned short v44 = 7;
unsigned short v43 = 4;

static void v29 (void)
{
{
for (;;) {
unsigned char v48 = 5;
signed short v47 = -4;
unsigned int v46 = 7U;
trace++;
switch (trace)
{
case 2: 
return;
default: abort ();
}
}
}
}

signed char v15 (signed char v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = 2;
signed int v51 = -4;
signed int v50 = 2;
trace++;
switch (trace)
{
case 1: 
{
v29 ();
}
break;
case 3: 
return v49;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v53, unsigned short v54, unsigned short v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 7;
signed char v57 = -4;
unsigned int v56 = 2U;
trace++;
switch (trace)
{
case 5: 
{
signed short v59;
unsigned short v60;
signed int v61;
signed short v62;
v59 = -3 - -4;
v60 = v54 - 4;
v61 = 2 - -4;
v62 = v25 (v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 9: 
{
signed short v63;
unsigned short v64;
signed int v65;
signed short v66;
v63 = -3 - 3;
v64 = v55 - v54;
v65 = -3 - -1;
v66 = v25 (v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 11: 
return v58;
default: abort ();
}
}
}
}
