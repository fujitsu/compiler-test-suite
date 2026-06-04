#include <stdlib.h>
extern signed int v1 (signed char);
extern signed int (*v2) (signed char);
extern unsigned short v3 (signed char, unsigned char);
extern unsigned short (*v4) (signed char, unsigned char);
extern unsigned char v5 (unsigned char, unsigned char, unsigned short);
extern unsigned char (*v6) (unsigned char, unsigned char, unsigned short);
unsigned short v7 (unsigned short, signed int, unsigned short);
unsigned short (*v8) (unsigned short, signed int, unsigned short) = v7;
unsigned char v9 (unsigned char, unsigned short, signed int);
unsigned char (*v10) (unsigned char, unsigned short, signed int) = v9;
unsigned short v11 (unsigned int);
unsigned short (*v12) (unsigned int) = v11;
extern signed short v13 (unsigned short, unsigned char, unsigned short);
extern signed short (*v14) (unsigned short, unsigned char, unsigned short);
extern unsigned short v15 (unsigned char, unsigned char);
extern unsigned short (*v16) (unsigned char, unsigned char);
extern unsigned char v17 (signed short, unsigned char, signed char, signed int);
extern unsigned char (*v18) (signed short, unsigned char, signed char, signed int);
extern void v19 (void);
extern void (*v20) (void);
extern signed int v21 (unsigned char, unsigned short, signed char, unsigned int);
extern signed int (*v22) (unsigned char, unsigned short, signed char, unsigned int);
void v23 (unsigned short, unsigned char, signed char, unsigned int);
void (*v24) (unsigned short, unsigned char, signed char, unsigned int) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (unsigned int, unsigned short, signed int, unsigned short);
extern signed short (*v28) (unsigned int, unsigned short, signed int, unsigned short);
extern unsigned short v29 (signed char, signed int, signed int);
extern unsigned short (*v30) (signed char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v73 = 3U;
unsigned char v72 = 2;
signed short v71 = 1;

void v23 (unsigned short v74, unsigned char v75, signed char v76, unsigned int v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned int v80 = 2U;
unsigned char v79 = 6;
unsigned char v78 = 0;
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

unsigned short v11 (unsigned int v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = 0;
unsigned short v83 = 3;
unsigned int v82 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned char v85, unsigned short v86, signed int v87)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed short v90 = 1;
signed int v89 = -1;
unsigned char v88 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v91, signed int v92, unsigned short v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = 2;
signed char v95 = -1;
unsigned char v94 = 5;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v97;
unsigned short v98;
signed int v99;
unsigned short v100;
signed short v101;
v97 = 3U - 2U;
v98 = 5 + 1;
v99 = v96 + -1;
v100 = v91 + v91;
v101 = v27 (v97, v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 7: 
return v91;
case 10: 
{
unsigned int v102;
unsigned short v103;
signed int v104;
unsigned short v105;
signed short v106;
v102 = 3U - 3U;
v103 = 4 - 3;
v104 = v92 + v96;
v105 = v93 - v91;
v106 = v27 (v102, v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 12: 
return v91;
default: abort ();
}
}
}
}
