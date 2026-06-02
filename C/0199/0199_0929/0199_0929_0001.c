#include <stdlib.h>
extern signed char v1 (signed short, signed char, unsigned short, signed short);
extern signed char (*v2) (signed short, signed char, unsigned short, signed short);
extern signed int v3 (signed int, signed short);
extern signed int (*v4) (signed int, signed short);
extern signed short v5 (unsigned int, signed int, signed char, unsigned int);
extern signed short (*v6) (unsigned int, signed int, signed char, unsigned int);
extern unsigned char v7 (unsigned char, signed int, signed char);
extern unsigned char (*v8) (unsigned char, signed int, signed char);
unsigned int v9 (signed int, signed int);
unsigned int (*v10) (signed int, signed int) = v9;
extern unsigned int v11 (unsigned short, signed short);
extern unsigned int (*v12) (unsigned short, signed short);
extern signed char v13 (signed int, signed short, unsigned char);
extern signed char (*v14) (signed int, signed short, unsigned char);
extern signed int v15 (unsigned int, signed int, signed int);
extern signed int (*v16) (unsigned int, signed int, signed int);
signed short v17 (signed int, unsigned char, unsigned int, unsigned char);
signed short (*v18) (signed int, unsigned char, unsigned int, unsigned char) = v17;
extern void v19 (signed char, signed char, unsigned int, signed int);
extern void (*v20) (signed char, signed char, unsigned int, signed int);
extern signed char v21 (signed int, signed int, signed int, signed short);
extern signed char (*v22) (signed int, signed int, signed int, signed short);
extern void v23 (unsigned short, signed short, unsigned short);
extern void (*v24) (unsigned short, signed short, unsigned short);
extern unsigned char v25 (signed int, signed short, signed char, signed char);
extern unsigned char (*v26) (signed int, signed short, signed char, signed char);
extern unsigned short v27 (signed short, signed int, signed char);
extern unsigned short (*v28) (signed short, signed int, signed char);
extern void v29 (signed short, signed int, unsigned char);
extern void (*v30) (signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v56 = -2;
signed short v55 = -4;
signed int v54 = -3;

signed short v17 (signed int v57, unsigned char v58, unsigned int v59, unsigned char v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = -2;
unsigned char v62 = 3;
signed short v61 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed int v64, signed int v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = 0;
signed short v67 = -1;
signed short v66 = 3;
trace++;
switch (trace)
{
case 8: 
{
signed char v69;
signed char v70;
unsigned int v71;
signed int v72;
v69 = 1 + -3;
v70 = -2 - -2;
v71 = 6U - 6U;
v72 = v65 - v65;
v19 (v69, v70, v71, v72);
}
break;
case 12: 
return 5U;
default: abort ();
}
}
}
}
