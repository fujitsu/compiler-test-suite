#include <stdlib.h>
extern unsigned short v1 (signed short, signed char, unsigned int, signed short);
extern unsigned short (*v2) (signed short, signed char, unsigned int, signed short);
signed int v3 (signed int, unsigned short, unsigned short);
signed int (*v4) (signed int, unsigned short, unsigned short) = v3;
extern signed char v5 (unsigned int, unsigned int, signed short, signed int);
extern signed char (*v6) (unsigned int, unsigned int, signed short, signed int);
signed short v7 (signed char, unsigned int);
signed short (*v8) (signed char, unsigned int) = v7;
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
extern signed char v11 (void);
extern signed char (*v12) (void);
unsigned short v13 (unsigned char, unsigned int);
unsigned short (*v14) (unsigned char, unsigned int) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (unsigned char, unsigned short, unsigned char);
extern unsigned short (*v18) (unsigned char, unsigned short, unsigned char);
void v21 (unsigned char, signed char, signed short);
void (*v22) (unsigned char, signed char, signed short) = v21;
extern unsigned short v23 (unsigned short, unsigned int, signed int);
extern unsigned short (*v24) (unsigned short, unsigned int, signed int);
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed int v29 (signed int, unsigned short, signed char);
extern signed int (*v30) (signed int, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v68 = 6;
unsigned char v67 = 5;
signed char v66 = 3;

void v21 (unsigned char v69, signed char v70, signed short v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 3;
signed int v73 = 2;
unsigned int v72 = 7U;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v75;
unsigned int v76;
signed int v77;
unsigned short v78;
v75 = 6 + 2;
v76 = 5U + v72;
v77 = v73 - v73;
v78 = v23 (v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v79, unsigned int v80)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed int v83 = -3;
unsigned int v82 = 1U;
signed int v81 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed char v84, unsigned int v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned int v88 = 3U;
signed short v87 = -2;
unsigned int v86 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed int v89, unsigned short v90, unsigned short v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed short v94 = -1;
unsigned char v93 = 1;
unsigned char v92 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v95;
unsigned int v96;
signed short v97;
signed int v98;
signed char v99;
v95 = 0U + 7U;
v96 = 2U - 1U;
v97 = v94 - -3;
v98 = -2 + 1;
v99 = v5 (v95, v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 3: 
{
unsigned int v100;
unsigned int v101;
signed short v102;
signed int v103;
signed char v104;
v100 = 1U + 2U;
v101 = 6U + 3U;
v102 = v94 - 0;
v103 = v89 - -1;
v104 = v5 (v100, v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 15: 
return 2;
default: abort ();
}
}
}
}
