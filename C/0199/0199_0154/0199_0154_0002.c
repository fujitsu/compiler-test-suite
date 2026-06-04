#include <stdlib.h>
signed int v1 (unsigned short, unsigned short, unsigned short);
signed int (*v2) (unsigned short, unsigned short, unsigned short) = v1;
extern unsigned short v3 (unsigned short, signed short);
extern unsigned short (*v4) (unsigned short, signed short);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern unsigned short v7 (signed int, signed char);
extern unsigned short (*v8) (signed int, signed char);
extern signed int v9 (unsigned char, signed short, unsigned char, signed int);
extern signed int (*v10) (unsigned char, signed short, unsigned char, signed int);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern signed char v13 (signed char, signed short, signed short, signed short);
extern signed char (*v14) (signed char, signed short, signed short, signed short);
extern signed short v15 (unsigned char, unsigned char);
extern signed short (*v16) (unsigned char, unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned short v19 (unsigned int, unsigned int, unsigned char);
extern unsigned short (*v20) (unsigned int, unsigned int, unsigned char);
void v21 (signed int, signed short);
void (*v22) (signed int, signed short) = v21;
extern unsigned short v23 (signed int);
extern unsigned short (*v24) (signed int);
unsigned char v25 (void);
unsigned char (*v26) (void) = v25;
extern signed short v27 (unsigned int, signed int, unsigned int, signed short);
extern signed short (*v28) (unsigned int, signed int, unsigned int, signed short);
extern unsigned int v29 (signed char);
extern unsigned int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v70 = -1;
signed short v69 = -4;
signed int v68 = -3;

unsigned char v25 (void)
{
{
for (;;) {
unsigned char v73 = 2;
signed int v72 = 1;
signed int v71 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed int v74, signed short v75)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned short v78 = 1;
unsigned short v77 = 2;
signed int v76 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v79;
signed short v80;
unsigned short v81;
v79 = v78 - v78;
v80 = 2 - v75;
v81 = v3 (v79, v80);
history[history_index++] = (int)v81;
}
break;
case 5: 
{
unsigned short v82;
signed short v83;
unsigned short v84;
v82 = v77 - v78;
v83 = -4 - 1;
v84 = v3 (v82, v83);
history[history_index++] = (int)v84;
}
break;
case 13: 
return;
case 15: 
return;
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
signed char v87 = 3;
unsigned int v86 = 2U;
signed short v85 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned short v88, unsigned short v89, unsigned short v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed short v93 = -1;
unsigned short v92 = 1;
signed short v91 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v94;
signed short v95;
unsigned char v96;
signed int v97;
signed int v98;
v94 = 6 - 0;
v95 = v93 - v91;
v96 = 7 - 7;
v97 = 2 + 2;
v98 = v9 (v94, v95, v96, v97);
history[history_index++] = (int)v98;
}
break;
case 18: 
return -3;
default: abort ();
}
}
}
}
