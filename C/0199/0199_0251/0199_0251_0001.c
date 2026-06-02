#include <stdlib.h>
extern void v1 (unsigned int, unsigned char, unsigned short, signed char);
extern void (*v2) (unsigned int, unsigned char, unsigned short, signed char);
extern void v3 (unsigned char, unsigned char, signed char, unsigned int);
extern void (*v4) (unsigned char, unsigned char, signed char, unsigned int);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
extern void v7 (signed int, signed char, unsigned char);
extern void (*v8) (signed int, signed char, unsigned char);
extern signed char v9 (signed char, unsigned short);
extern signed char (*v10) (signed char, unsigned short);
unsigned short v11 (unsigned int, unsigned int);
unsigned short (*v12) (unsigned int, unsigned int) = v11;
extern signed short v13 (signed short);
extern signed short (*v14) (signed short);
void v15 (unsigned short);
void (*v16) (unsigned short) = v15;
unsigned int v17 (unsigned char);
unsigned int (*v18) (unsigned char) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned char v21 (signed char, signed char, signed short);
extern unsigned char (*v22) (signed char, signed char, signed short);
extern unsigned char v23 (unsigned char, unsigned char, signed char);
extern unsigned char (*v24) (unsigned char, unsigned char, signed char);
static void v25 (unsigned short, unsigned short);
static void (*v26) (unsigned short, unsigned short) = v25;
extern signed char v27 (signed int, unsigned int, signed int);
extern signed char (*v28) (signed int, unsigned int, signed int);
extern signed char v29 (unsigned char, unsigned char);
extern signed char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v42 = 6;
signed char v41 = -4;
signed char v40 = -2;

static void v25 (unsigned short v43, unsigned short v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 1U;
unsigned short v46 = 7;
signed char v45 = -2;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v48;
unsigned char v49;
signed char v50;
v48 = 0 + 1;
v49 = 4 - 4;
v50 = v29 (v48, v49);
history[history_index++] = (int)v50;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned char v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = 2;
signed short v53 = -1;
unsigned short v52 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned short v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -4;
signed short v57 = -2;
signed int v56 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v59;
v59 = 1 + 6;
v15 (v59);
}
break;
case 2: 
{
unsigned char v60;
unsigned char v61;
signed char v62;
unsigned char v63;
v60 = 2 + 2;
v61 = 4 + 6;
v62 = -3 + -4;
v63 = v23 (v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 4: 
{
unsigned char v64;
unsigned char v65;
signed char v66;
unsigned char v67;
v64 = 5 + 7;
v65 = 0 + 4;
v66 = v58 + -4;
v67 = v23 (v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 6: 
{
unsigned short v68;
v68 = v55 + v55;
v15 (v68);
}
break;
case 7: 
{
unsigned short v69;
v69 = v55 - 1;
v15 (v69);
}
break;
case 8: 
{
unsigned short v70;
v70 = v55 + 3;
v15 (v70);
}
break;
case 9: 
{
unsigned short v71;
unsigned short v72;
v71 = 3 - 0;
v72 = 5 - 7;
v25 (v71, v72);
}
break;
case 13: 
return;
case 14: 
return;
case 15: 
return;
case 16: 
return;
case 17: 
return;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v73, unsigned int v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 5;
unsigned int v76 = 1U;
signed char v75 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
