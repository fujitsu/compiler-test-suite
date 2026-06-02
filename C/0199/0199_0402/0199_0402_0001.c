#include <stdlib.h>
extern signed short v1 (unsigned short);
extern signed short (*v2) (unsigned short);
void v3 (unsigned char, signed char, signed char);
void (*v4) (unsigned char, signed char, signed char) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern unsigned int v7 (unsigned int, unsigned short);
extern unsigned int (*v8) (unsigned int, unsigned short);
extern signed char v9 (unsigned int, signed short, unsigned char);
extern signed char (*v10) (unsigned int, signed short, unsigned char);
extern void v11 (unsigned int, signed char, signed char, signed short);
extern void (*v12) (unsigned int, signed char, signed char, signed short);
extern unsigned char v13 (unsigned char, signed int, unsigned short, signed char);
extern unsigned char (*v14) (unsigned char, signed int, unsigned short, signed char);
unsigned char v15 (signed int, signed char, signed char, signed char);
unsigned char (*v16) (signed int, signed char, signed char, signed char) = v15;
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern signed char v19 (signed short, unsigned int);
extern signed char (*v20) (signed short, unsigned int);
extern signed short v21 (unsigned int, signed char, unsigned int, unsigned short);
extern signed short (*v22) (unsigned int, signed char, unsigned int, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
void v25 (signed int, unsigned int, signed char);
void (*v26) (signed int, unsigned int, signed char) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (unsigned int, signed int);
extern unsigned char (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v61 = 2;
unsigned int v60 = 0U;
signed short v59 = -3;

void v25 (signed int v62, unsigned int v63, signed char v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed int v67 = 2;
signed int v66 = 0;
signed char v65 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v68, signed char v69, signed char v70, signed char v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 7;
unsigned short v73 = 7;
signed short v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned char v75, signed char v76, signed char v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned char v80 = 7;
signed short v79 = 0;
unsigned char v78 = 3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v81;
unsigned short v82;
unsigned int v83;
v81 = 1U + 4U;
v82 = 1 - 7;
v83 = v7 (v81, v82);
history[history_index++] = (int)v83;
}
break;
case 3: 
{
signed int v84;
v84 = v23 ();
history[history_index++] = (int)v84;
}
break;
case 5: 
{
signed int v85;
v85 = v23 ();
history[history_index++] = (int)v85;
}
break;
case 7: 
{
signed int v86;
v86 = v23 ();
history[history_index++] = (int)v86;
}
break;
case 9: 
{
unsigned int v87;
unsigned short v88;
unsigned int v89;
v87 = 2U + 4U;
v88 = 2 + 4;
v89 = v7 (v87, v88);
history[history_index++] = (int)v89;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
