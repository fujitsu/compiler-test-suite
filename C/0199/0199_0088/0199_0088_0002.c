#include <stdlib.h>
void v1 (unsigned int);
void (*v2) (unsigned int) = v1;
extern signed int v3 (unsigned int, signed int, unsigned char);
extern signed int (*v4) (unsigned int, signed int, unsigned char);
extern signed char v5 (signed int, unsigned int);
extern signed char (*v6) (signed int, unsigned int);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern void v11 (unsigned int, unsigned short, unsigned short);
extern void (*v12) (unsigned int, unsigned short, unsigned short);
extern void v13 (signed short, unsigned int, signed short);
extern void (*v14) (signed short, unsigned int, signed short);
extern signed int v15 (unsigned short, unsigned char);
extern signed int (*v16) (unsigned short, unsigned char);
extern void v17 (signed char, unsigned char);
extern void (*v18) (signed char, unsigned char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
unsigned int v27 (signed short, unsigned char, signed short);
unsigned int (*v28) (signed short, unsigned char, signed short) = v27;
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v76 = 0;
unsigned int v75 = 1U;
signed char v74 = 1;

unsigned int v27 (signed short v77, unsigned char v78, signed short v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed short v82 = 2;
signed char v81 = 3;
unsigned char v80 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
unsigned short v85 = 1;
unsigned int v84 = 2U;
unsigned int v83 = 2U;
trace++;
switch (trace)
{
case 9: 
{
signed short v86;
unsigned int v87;
signed short v88;
v86 = -3 + -2;
v87 = v84 + 7U;
v88 = 3 + -1;
v13 (v86, v87, v88);
}
break;
case 11: 
return 6;
default: abort ();
}
}
}
}

void v1 (unsigned int v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = 1;
unsigned char v91 = 1;
signed char v90 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v93;
unsigned int v94;
signed char v95;
v93 = 1 + -2;
v94 = v89 + v89;
v95 = v5 (v93, v94);
history[history_index++] = (int)v95;
}
break;
case 2: 
{
signed int v96;
unsigned char v97;
v96 = 0 - 3;
v97 = v9 (v96);
history[history_index++] = (int)v97;
}
break;
case 4: 
{
signed int v98;
unsigned int v99;
v98 = -2 + 0;
v99 = v29 (v98);
history[history_index++] = (int)v99;
}
break;
case 6: 
{
unsigned short v100;
v100 = 3 + 4;
v7 (v100);
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
