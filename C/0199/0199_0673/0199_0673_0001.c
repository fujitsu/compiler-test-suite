#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed char, unsigned char, signed short);
extern unsigned short (*v2) (unsigned char, signed char, unsigned char, signed short);
extern signed short v3 (void);
extern signed short (*v4) (void);
void v5 (unsigned char, signed char);
void (*v6) (unsigned char, signed char) = v5;
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern void v9 (unsigned char, unsigned int, unsigned char, unsigned char);
extern void (*v10) (unsigned char, unsigned int, unsigned char, unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned short v13 (unsigned char, signed short, signed short);
extern unsigned short (*v14) (unsigned char, signed short, signed short);
extern unsigned int v15 (unsigned char, unsigned int, signed short);
extern unsigned int (*v16) (unsigned char, unsigned int, signed short);
extern signed int v17 (unsigned int, unsigned short, unsigned int, signed char);
extern signed int (*v18) (unsigned int, unsigned short, unsigned int, signed char);
extern signed int v19 (unsigned char, signed int);
extern signed int (*v20) (unsigned char, signed int);
unsigned short v21 (signed short, unsigned int, unsigned short, signed int);
unsigned short (*v22) (signed short, unsigned int, unsigned short, signed int) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (signed char, unsigned int, unsigned char, signed char);
extern signed short (*v28) (signed char, unsigned int, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v62 = 4U;
unsigned char v61 = 4;
unsigned short v60 = 2;

unsigned short v21 (signed short v63, unsigned int v64, unsigned short v65, signed int v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 7U;
signed short v68 = 3;
signed int v67 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned char v70, signed char v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = -4;
unsigned char v73 = 6;
unsigned short v72 = 5;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v75;
unsigned int v76;
unsigned char v77;
unsigned char v78;
v75 = v70 + 1;
v76 = 0U - 6U;
v77 = v70 + 0;
v78 = 1 + 4;
v9 (v75, v76, v77, v78);
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
