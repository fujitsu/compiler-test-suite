#include <stdlib.h>
unsigned short v3 (unsigned int, unsigned char, signed short);
unsigned short (*v4) (unsigned int, unsigned char, signed short) = v3;
unsigned int v5 (signed char, signed int);
unsigned int (*v6) (signed char, signed int) = v5;
extern void v7 (signed char);
extern void (*v8) (signed char);
extern signed short v9 (signed char, signed short, unsigned int, unsigned char);
extern signed short (*v10) (signed char, signed short, unsigned int, unsigned char);
extern signed short v11 (void);
extern signed short (*v12) (void);
signed int v13 (signed short);
signed int (*v14) (signed short) = v13;
extern unsigned short v15 (unsigned char, signed int, signed short, signed int);
extern unsigned short (*v16) (unsigned char, signed int, signed short, signed int);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern signed int v19 (unsigned char, signed char, signed int);
extern signed int (*v20) (unsigned char, signed char, signed int);
extern unsigned char v21 (unsigned short, signed int, unsigned char, signed short);
extern unsigned char (*v22) (unsigned short, signed int, unsigned char, signed short);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (unsigned short, unsigned short, signed short);
extern unsigned char (*v28) (unsigned short, unsigned short, signed short);
extern unsigned int v29 (signed int, signed char, unsigned int, signed int);
extern unsigned int (*v30) (signed int, signed char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v63 = 0;
unsigned int v62 = 4U;
signed short v61 = -2;

signed int v13 (signed short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 4U;
unsigned char v66 = 2;
signed int v65 = 0;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v68;
signed int v69;
unsigned char v70;
signed short v71;
unsigned char v72;
v68 = 4 + 1;
v69 = v65 + v65;
v70 = v66 + 1;
v71 = -4 + v64;
v72 = v21 (v68, v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 9: 
{
unsigned short v73;
signed int v74;
unsigned char v75;
signed short v76;
unsigned char v77;
v73 = 5 + 7;
v74 = -3 + v65;
v75 = v66 + 6;
v76 = -2 - 3;
v77 = v21 (v73, v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned int v5 (signed char v78, signed int v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 2U;
signed short v81 = -3;
unsigned char v80 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned int v83, unsigned char v84, signed short v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
unsigned short v88 = 0;
signed char v87 = 3;
signed int v86 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
