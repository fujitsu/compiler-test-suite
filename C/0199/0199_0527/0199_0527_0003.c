#include <stdlib.h>
void v1 (signed short, signed short, unsigned short, unsigned int);
void (*v2) (signed short, signed short, unsigned short, unsigned int) = v1;
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed int v7 (unsigned int, signed short, signed short, signed short);
extern signed int (*v8) (unsigned int, signed short, signed short, signed short);
signed char v9 (signed short, signed char, unsigned char);
signed char (*v10) (signed short, signed char, unsigned char) = v9;
extern void v11 (signed short);
extern void (*v12) (signed short);
extern unsigned char v13 (unsigned int, unsigned int, unsigned char);
extern unsigned char (*v14) (unsigned int, unsigned int, unsigned char);
unsigned char v15 (unsigned char, unsigned int);
unsigned char (*v16) (unsigned char, unsigned int) = v15;
extern signed char v17 (signed int, signed char);
extern signed char (*v18) (signed int, signed char);
extern unsigned int v19 (unsigned int, signed short);
extern unsigned int (*v20) (unsigned int, signed short);
extern unsigned char v21 (unsigned int, unsigned int, signed short);
extern unsigned char (*v22) (unsigned int, unsigned int, signed short);
extern void v23 (unsigned char, signed int);
extern void (*v24) (unsigned char, signed int);
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern void v29 (unsigned int, signed int, signed short, signed char);
extern void (*v30) (unsigned int, signed int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v76 = 0U;
unsigned int v75 = 6U;
unsigned short v74 = 6;

unsigned char v15 (unsigned char v77, unsigned int v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 2;
signed int v80 = 0;
signed int v79 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed short v82, signed char v83, unsigned char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = -1;
unsigned char v86 = 3;
signed short v85 = -4;
trace++;
switch (trace)
{
case 4: 
return -4;
case 8: 
{
unsigned char v88;
signed int v89;
v88 = 3 + v84;
v89 = v27 (v88);
history[history_index++] = (int)v89;
}
break;
case 10: 
{
unsigned char v90;
signed int v91;
v90 = 3 - v84;
v91 = v27 (v90);
history[history_index++] = (int)v91;
}
break;
case 12: 
return v83;
default: abort ();
}
}
}
}

void v1 (signed short v92, signed short v93, unsigned short v94, unsigned int v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 2U;
unsigned char v97 = 3;
unsigned short v96 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v99;
signed int v100;
signed short v101;
signed char v102;
v99 = v95 - v98;
v100 = -3 + -2;
v101 = v93 - v92;
v102 = -3 + -2;
v29 (v99, v100, v101, v102);
}
break;
case 2: 
{
signed short v103;
signed int v104;
unsigned char v105;
v103 = v92 - 1;
v104 = 2 - -3;
v105 = v3 (v103, v104);
history[history_index++] = (int)v105;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
