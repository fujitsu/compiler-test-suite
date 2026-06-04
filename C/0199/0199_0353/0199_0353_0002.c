#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed int);
extern unsigned char (*v2) (unsigned int, signed int);
extern signed short v3 (signed short, unsigned char, unsigned int, signed char);
extern signed short (*v4) (signed short, unsigned char, unsigned int, signed char);
signed int v5 (unsigned int, unsigned char, signed int, signed char);
signed int (*v6) (unsigned int, unsigned char, signed int, signed char) = v5;
extern signed char v7 (unsigned short, unsigned char, unsigned int, unsigned char);
extern signed char (*v8) (unsigned short, unsigned char, unsigned int, unsigned char);
extern unsigned int v9 (signed short, signed char, unsigned int, unsigned int);
extern unsigned int (*v10) (signed short, signed char, unsigned int, unsigned int);
extern unsigned char v11 (unsigned int, unsigned char);
extern unsigned char (*v12) (unsigned int, unsigned char);
extern unsigned short v13 (signed char, unsigned char, unsigned short, signed int);
extern unsigned short (*v14) (signed char, unsigned char, unsigned short, signed int);
extern unsigned char v15 (unsigned short, unsigned short, signed char);
extern unsigned char (*v16) (unsigned short, unsigned short, signed char);
signed short v17 (unsigned char);
signed short (*v18) (unsigned char) = v17;
extern signed int v19 (unsigned char);
extern signed int (*v20) (unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (signed short, signed short);
extern unsigned short (*v24) (signed short, signed short);
extern unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short);
extern unsigned short v27 (unsigned int, signed short, signed short);
extern unsigned short (*v28) (unsigned int, signed short, signed short);
void v29 (signed char, signed char, signed char, unsigned short);
void (*v30) (signed char, signed char, signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v85 = 1;
signed char v84 = 1;
unsigned short v83 = 7;

void v29 (signed char v86, signed char v87, signed char v88, unsigned short v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 4U;
unsigned int v91 = 0U;
unsigned int v90 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned char v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 1;
signed char v95 = -2;
signed int v94 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned int v97, unsigned char v98, signed int v99, signed char v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed char v103 = 0;
unsigned int v102 = 6U;
signed short v101 = 2;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v104;
unsigned char v105;
unsigned char v106;
v104 = v102 + 2U;
v105 = v98 + v98;
v106 = v11 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}
