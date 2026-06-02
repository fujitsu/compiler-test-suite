#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern unsigned short v5 (signed char, signed int, signed int);
extern unsigned short (*v6) (signed char, signed int, signed int);
extern void v7 (signed int, unsigned short, signed char);
extern void (*v8) (signed int, unsigned short, signed char);
unsigned short v9 (signed short);
unsigned short (*v10) (signed short) = v9;
extern signed int v11 (signed short, signed short, signed int);
extern signed int (*v12) (signed short, signed short, signed int);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (signed int, signed int, unsigned short);
extern signed short (*v16) (signed int, signed int, unsigned short);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned short v19 (signed int, signed char, signed char);
extern unsigned short (*v20) (signed int, signed char, signed char);
void v21 (signed char, unsigned int, unsigned char, signed int);
void (*v22) (signed char, unsigned int, unsigned char, signed int) = v21;
extern signed char v23 (void);
extern signed char (*v24) (void);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned short v27 (unsigned int, unsigned short);
extern unsigned short (*v28) (unsigned int, unsigned short);
extern unsigned int v29 (unsigned int);
extern unsigned int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v61 = -2;
signed int v60 = 3;
signed int v59 = 2;

void v21 (signed char v62, unsigned int v63, unsigned char v64, signed int v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned char v68 = 4;
signed char v67 = -1;
unsigned char v66 = 7;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

unsigned short v9 (signed short v69)
{
history[history_index++] = (int)v69;
{
for (;;) {
signed short v72 = 2;
signed short v71 = 2;
signed int v70 = -1;
trace++;
switch (trace)
{
case 3: 
{
signed int v73;
signed char v74;
signed char v75;
unsigned short v76;
v73 = 0 + 0;
v74 = -1 + 0;
v75 = -4 - -1;
v76 = v19 (v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 5: 
return 0;
default: abort ();
}
}
}
}
