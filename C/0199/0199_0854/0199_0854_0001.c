#include <stdlib.h>
void v1 (signed short, unsigned char);
void (*v2) (signed short, unsigned char) = v1;
unsigned short v3 (signed short);
unsigned short (*v4) (signed short) = v3;
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
void v7 (unsigned short, signed char, unsigned int);
void (*v8) (unsigned short, signed char, unsigned int) = v7;
extern unsigned short v9 (unsigned short, unsigned char, signed int, unsigned char);
extern unsigned short (*v10) (unsigned short, unsigned char, signed int, unsigned char);
static unsigned short v11 (signed char, signed int, unsigned char, unsigned short);
static unsigned short (*v12) (signed char, signed int, unsigned char, unsigned short) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern void v21 (void);
extern void (*v22) (void);
extern signed short v23 (unsigned short, unsigned int);
extern signed short (*v24) (unsigned short, unsigned int);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern signed int v27 (signed short, signed int, signed int);
extern signed int (*v28) (signed short, signed int, signed int);
extern unsigned int v29 (signed short, signed int, unsigned int);
extern unsigned int (*v30) (signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v53 = -3;
signed int v52 = -4;
unsigned char v51 = 6;

static unsigned short v11 (signed char v54, signed int v55, unsigned char v56, unsigned short v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = -2;
unsigned short v59 = 3;
signed short v58 = -2;
trace++;
switch (trace)
{
case 9: 
{
signed char v61;
signed char v62;
v61 = v54 + -3;
v62 = v17 (v61);
history[history_index++] = (int)v62;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

void v7 (unsigned short v63, signed char v64, unsigned int v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned char v68 = 1;
signed char v67 = 0;
signed int v66 = -3;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v69;
v69 = v19 ();
history[history_index++] = (int)v69;
}
break;
case 8: 
{
signed char v70;
signed int v71;
unsigned char v72;
unsigned short v73;
unsigned short v74;
v70 = v67 + v64;
v71 = v66 + 0;
v72 = v68 + 6;
v73 = 5 + v63;
v74 = v11 (v70, v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned short v3 (signed short v75)
{
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 3;
unsigned int v77 = 4U;
signed short v76 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed short v79, unsigned char v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = -1;
signed int v82 = -3;
unsigned int v81 = 7U;
trace++;
switch (trace)
{
case 0: 
{
signed char v84;
signed char v85;
v84 = 0 - -3;
v85 = v5 (v84);
history[history_index++] = (int)v85;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
