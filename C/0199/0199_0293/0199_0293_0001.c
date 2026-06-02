#include <stdlib.h>
extern unsigned char v1 (unsigned short);
extern unsigned char (*v2) (unsigned short);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (unsigned char, signed char);
extern unsigned int (*v6) (unsigned char, signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (signed int);
extern void (*v10) (signed int);
extern unsigned int v11 (signed short, signed char, signed char);
extern unsigned int (*v12) (signed short, signed char, signed char);
extern signed int v13 (signed short, signed char, unsigned char);
extern signed int (*v14) (signed short, signed char, unsigned char);
signed char v15 (signed short, unsigned char, signed int);
signed char (*v16) (signed short, unsigned char, signed int) = v15;
extern unsigned char v17 (unsigned int, signed short, unsigned char, signed short);
extern unsigned char (*v18) (unsigned int, signed short, unsigned char, signed short);
extern void v19 (signed int, unsigned char, signed short, unsigned int);
extern void (*v20) (signed int, unsigned char, signed short, unsigned int);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned int v23 (signed char, unsigned char);
extern unsigned int (*v24) (signed char, unsigned char);
extern unsigned char v25 (unsigned int, unsigned int);
extern unsigned char (*v26) (unsigned int, unsigned int);
extern unsigned char v27 (unsigned short, signed int, unsigned short);
extern unsigned char (*v28) (unsigned short, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v46 = 3;
unsigned short v45 = 0;
unsigned short v44 = 3;

signed char v15 (signed short v47, unsigned char v48, signed int v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 3;
unsigned char v51 = 0;
unsigned char v50 = 3;
trace++;
switch (trace)
{
case 2: 
return -1;
case 4: 
{
signed short v53;
signed int v54;
v53 = v47 + v47;
v54 = v21 (v53);
history[history_index++] = (int)v54;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}
