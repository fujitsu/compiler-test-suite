#include <stdlib.h>
extern signed int v1 (signed char, unsigned int, signed char, signed short);
extern signed int (*v2) (signed char, unsigned int, signed char, signed short);
extern signed int v3 (signed char, signed short, unsigned int);
extern signed int (*v4) (signed char, signed short, unsigned int);
signed short v5 (signed short, unsigned short, unsigned short);
signed short (*v6) (signed short, unsigned short, unsigned short) = v5;
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern signed char v13 (unsigned int, signed char);
extern signed char (*v14) (unsigned int, signed char);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned short v17 (unsigned int, signed short, signed short, signed int);
extern unsigned short (*v18) (unsigned int, signed short, signed short, signed int);
extern signed short v19 (signed int);
extern signed short (*v20) (signed int);
extern unsigned char v21 (signed short, signed char);
extern unsigned char (*v22) (signed short, signed char);
extern unsigned int v23 (signed int, unsigned char, signed char);
extern unsigned int (*v24) (signed int, unsigned char, signed char);
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
void v27 (void);
void (*v28) (void) = v27;
extern signed short v29 (signed short, signed short, signed short);
extern signed short (*v30) (signed short, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v55 = 6;
signed char v54 = -1;
unsigned char v53 = 2;

void v27 (void)
{
{
for (;;) {
unsigned char v58 = 1;
unsigned short v57 = 2;
signed int v56 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v59, unsigned short v60, unsigned short v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed int v64 = -3;
unsigned char v63 = 6;
unsigned int v62 = 6U;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v65;
signed short v66;
signed short v67;
signed int v68;
unsigned short v69;
v65 = 4U - v62;
v66 = v59 + v59;
v67 = v59 - -2;
v68 = -2 - -4;
v69 = v17 (v65, v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 3: 
return -3;
default: abort ();
}
}
}
}
