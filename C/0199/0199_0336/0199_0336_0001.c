#include <stdlib.h>
extern unsigned char v3 (unsigned char, unsigned short, signed int, unsigned short);
extern unsigned char (*v4) (unsigned char, unsigned short, signed int, unsigned short);
void v5 (void);
void (*v6) (void) = v5;
extern unsigned int v7 (unsigned short, signed char, signed char);
extern unsigned int (*v8) (unsigned short, signed char, signed char);
extern void v9 (signed short, unsigned short);
extern void (*v10) (signed short, unsigned short);
extern signed int v11 (unsigned short, unsigned short);
extern signed int (*v12) (unsigned short, unsigned short);
unsigned short v13 (signed int, unsigned char, signed short);
unsigned short (*v14) (signed int, unsigned char, signed short) = v13;
void v15 (signed short, unsigned short, signed int);
void (*v16) (signed short, unsigned short, signed int) = v15;
signed int v17 (signed short, unsigned short, unsigned int);
signed int (*v18) (signed short, unsigned short, unsigned int) = v17;
extern signed short v19 (unsigned int, unsigned short, unsigned int);
extern signed short (*v20) (unsigned int, unsigned short, unsigned int);
extern unsigned int v21 (unsigned int, signed short);
extern unsigned int (*v22) (unsigned int, signed short);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern unsigned char v25 (unsigned int, signed short, signed char);
extern unsigned char (*v26) (unsigned int, signed short, signed char);
extern unsigned short v27 (unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, unsigned short);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v62 = 1U;
signed short v61 = 0;
signed short v60 = 3;

signed int v17 (signed short v63, unsigned short v64, unsigned int v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned short v68 = 0;
signed int v67 = 1;
signed char v66 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed short v69, unsigned short v70, signed int v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 2;
signed short v73 = 1;
unsigned short v72 = 4;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
{
unsigned int v75;
signed short v76;
unsigned int v77;
v75 = 4U + 2U;
v76 = v69 - v73;
v77 = v21 (v75, v76);
history[history_index++] = (int)v77;
}
break;
case 6: 
return;
case 8: 
{
unsigned char v78;
unsigned short v79;
signed int v80;
unsigned short v81;
unsigned char v82;
v78 = 1 - 1;
v79 = 2 + v72;
v80 = v71 - v71;
v81 = 0 - 0;
v82 = v3 (v78, v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 10: 
{
unsigned int v83;
signed short v84;
unsigned int v85;
v83 = 5U - 7U;
v84 = v73 - v73;
v85 = v21 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 12: 
return;
case 14: 
return;
default: abort ();
}
}
}
}

unsigned short v13 (signed int v86, unsigned char v87, signed short v88)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 2;
signed short v90 = 2;
unsigned char v89 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
signed char v94 = -4;
unsigned int v93 = 0U;
signed char v92 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
