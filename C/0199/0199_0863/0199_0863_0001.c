#include <stdlib.h>
signed char v1 (signed int, unsigned int, unsigned int, unsigned char);
signed char (*v2) (signed int, unsigned int, unsigned int, unsigned char) = v1;
extern signed int v3 (unsigned char);
extern signed int (*v4) (unsigned char);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed int v9 (unsigned short, signed int, signed short, unsigned char);
extern signed int (*v10) (unsigned short, signed int, signed short, unsigned char);
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
extern void v13 (signed int, signed int);
extern void (*v14) (signed int, signed int);
extern signed short v15 (unsigned short, unsigned short);
extern signed short (*v16) (unsigned short, unsigned short);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned short, unsigned short, unsigned short, unsigned char);
extern signed int (*v22) (unsigned short, unsigned short, unsigned short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern void v25 (unsigned short, unsigned short, signed short);
extern void (*v26) (unsigned short, unsigned short, signed short);
signed int v29 (unsigned short, unsigned short);
signed int (*v30) (unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v64 = 6;
signed int v63 = -3;
unsigned char v62 = 1;

signed int v29 (unsigned short v65, unsigned short v66)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 7;
unsigned int v68 = 0U;
signed char v67 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned int v72 = 4U;
signed short v71 = -1;
signed char v70 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed int v73, unsigned int v74, unsigned int v75, unsigned char v76)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = 1;
signed int v78 = 2;
unsigned short v77 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v80;
unsigned short v81;
signed short v82;
v80 = v77 - v77;
v81 = 7 - v77;
v82 = v15 (v80, v81);
history[history_index++] = (int)v82;
}
break;
case 2: 
{
signed int v83;
unsigned short v84;
v83 = v78 + 2;
v84 = v5 (v83);
history[history_index++] = (int)v84;
}
break;
case 14: 
return -1;
default: abort ();
}
}
}
}
