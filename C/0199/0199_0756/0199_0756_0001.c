#include <stdlib.h>
extern signed int v3 (signed int, signed char, unsigned int, signed char);
extern signed int (*v4) (signed int, signed char, unsigned int, signed char);
extern signed short v5 (unsigned short, signed short, signed char, unsigned int);
extern signed short (*v6) (unsigned short, signed short, signed char, unsigned int);
extern signed int v7 (unsigned char, unsigned short, unsigned int);
extern signed int (*v8) (unsigned char, unsigned short, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (signed int, signed short, signed char, unsigned char);
extern signed char (*v12) (signed int, signed short, signed char, unsigned char);
extern signed short v13 (signed char, signed int, signed char);
extern signed short (*v14) (signed char, signed int, signed char);
extern unsigned int v15 (signed char);
extern unsigned int (*v16) (signed char);
extern unsigned char v17 (unsigned int);
extern unsigned char (*v18) (unsigned int);
extern unsigned short v19 (unsigned short, unsigned char, signed int, signed char);
extern unsigned short (*v20) (unsigned short, unsigned char, signed int, signed char);
signed int v21 (signed short, unsigned char, unsigned char, unsigned short);
signed int (*v22) (signed short, unsigned char, unsigned char, unsigned short) = v21;
extern signed char v23 (signed int, unsigned int, unsigned char);
extern signed char (*v24) (signed int, unsigned int, unsigned char);
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (signed short, unsigned int, unsigned short);
extern void (*v30) (signed short, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v62 = 6U;
signed char v61 = -3;
unsigned char v60 = 3;

signed int v21 (signed short v63, unsigned char v64, unsigned char v65, unsigned short v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 1;
unsigned char v68 = 7;
unsigned short v67 = 5;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v70;
v70 = v27 ();
history[history_index++] = (int)v70;
}
break;
case 8: 
{
unsigned char v71;
v71 = v27 ();
history[history_index++] = (int)v71;
}
break;
case 10: 
{
unsigned char v72;
v72 = v27 ();
history[history_index++] = (int)v72;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}
