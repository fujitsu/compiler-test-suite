#include <stdlib.h>
extern signed int v1 (unsigned char, signed char);
extern signed int (*v2) (unsigned char, signed char);
extern signed int v3 (unsigned char, unsigned char);
extern signed int (*v4) (unsigned char, unsigned char);
extern signed int v5 (signed int, unsigned char);
extern signed int (*v6) (signed int, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern signed char v11 (signed int, signed short, signed short);
extern signed char (*v12) (signed int, signed short, signed short);
extern signed int v13 (unsigned int);
extern signed int (*v14) (unsigned int);
extern void v15 (signed int, signed short);
extern void (*v16) (signed int, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v19 (unsigned char, signed short, signed short);
extern void (*v20) (unsigned char, signed short, signed short);
extern void v21 (unsigned char, signed char);
extern void (*v22) (unsigned char, signed char);
extern unsigned char v23 (signed char, unsigned short, unsigned short);
extern unsigned char (*v24) (signed char, unsigned short, unsigned short);
extern unsigned short v25 (signed short, signed char, unsigned char);
extern unsigned short (*v26) (signed short, signed char, unsigned char);
void v27 (signed short, signed int, signed int);
void (*v28) (signed short, signed int, signed int) = v27;
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v65 = -1;
signed char v64 = -3;
signed int v63 = 3;

void v27 (signed short v66, signed int v67, signed int v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 1;
unsigned char v70 = 4;
unsigned short v69 = 4;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}
