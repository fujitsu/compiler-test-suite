#include <stdlib.h>
extern signed char v1 (unsigned int);
extern signed char (*v2) (unsigned int);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed char v15 (signed int, unsigned short, unsigned char, unsigned int);
extern signed char (*v16) (signed int, unsigned short, unsigned char, unsigned int);
unsigned char v17 (signed short, signed int, unsigned short);
unsigned char (*v18) (signed short, signed int, unsigned short) = v17;
extern unsigned int v19 (signed short, unsigned char);
extern unsigned int (*v20) (signed short, unsigned char);
extern signed short v21 (signed short, unsigned char);
extern signed short (*v22) (signed short, unsigned char);
extern unsigned char v23 (unsigned int, unsigned char, unsigned short, unsigned int);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned short, unsigned int);
extern signed short v25 (signed int, signed short, unsigned char);
extern signed short (*v26) (signed int, signed short, unsigned char);
extern signed int v27 (unsigned char, unsigned int, unsigned char, signed char);
extern signed int (*v28) (unsigned char, unsigned int, unsigned char, signed char);
extern void v29 (signed int, unsigned short, unsigned int, signed short);
extern void (*v30) (signed int, unsigned short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v60 = -3;
unsigned int v59 = 4U;
signed char v58 = 1;

unsigned char v17 (signed short v61, signed int v62, unsigned short v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned char v66 = 3;
signed char v65 = 1;
signed int v64 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed int v67;
unsigned short v68;
unsigned int v69;
signed short v70;
v67 = v64 - v64;
v68 = 5 - 6;
v69 = 0U - 4U;
v70 = 3 - 3;
v29 (v67, v68, v69, v70);
}
break;
case 3: 
return v66;
default: abort ();
}
}
}
}
