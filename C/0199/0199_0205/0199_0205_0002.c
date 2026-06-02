#include <stdlib.h>
extern signed int v1 (signed short, signed char, signed char);
extern signed int (*v2) (signed short, signed char, signed char);
extern signed short v3 (signed char, unsigned int);
extern signed short (*v4) (signed char, unsigned int);
void v5 (unsigned short, signed short);
void (*v6) (unsigned short, signed short) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (unsigned int, unsigned short, unsigned char);
extern unsigned char (*v12) (unsigned int, unsigned short, unsigned char);
extern signed int v13 (signed char, unsigned short, signed int);
extern signed int (*v14) (signed char, unsigned short, signed int);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
void v17 (unsigned char);
void (*v18) (unsigned char) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
void v27 (unsigned int, signed char, unsigned short);
void (*v28) (unsigned int, signed char, unsigned short) = v27;
extern signed char v29 (unsigned int, signed short, unsigned short);
extern signed char (*v30) (unsigned int, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v63 = 6U;
unsigned short v62 = 0;
unsigned short v61 = 0;

void v27 (unsigned int v64, signed char v65, unsigned short v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 0U;
signed short v68 = -4;
unsigned short v67 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (unsigned char v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 2;
unsigned int v72 = 6U;
unsigned int v71 = 7U;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v74;
v74 = v19 ();
history[history_index++] = (int)v74;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

void v5 (unsigned short v75, signed short v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -3;
signed short v78 = -2;
unsigned short v77 = 7;
trace++;
switch (trace)
{
case 3: 
{
signed char v80;
v80 = v9 ();
history[history_index++] = (int)v80;
}
break;
case 5: 
{
unsigned int v81;
unsigned short v82;
unsigned char v83;
unsigned char v84;
v81 = 4U + 0U;
v82 = v75 + v75;
v83 = 2 + 3;
v84 = v11 (v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 7: 
return;
default: abort ();
}
}
}
}
