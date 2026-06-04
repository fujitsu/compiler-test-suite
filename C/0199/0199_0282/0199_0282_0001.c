#include <stdlib.h>
extern unsigned char v1 (signed short);
extern unsigned char (*v2) (signed short);
extern signed short v3 (signed int, unsigned char);
extern signed short (*v4) (signed int, unsigned char);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
extern signed short v15 (signed int, signed short);
extern signed short (*v16) (signed int, signed short);
extern signed int v17 (signed short);
extern signed int (*v18) (signed short);
extern void v19 (unsigned int, signed int, signed int, unsigned short);
extern void (*v20) (unsigned int, signed int, signed int, unsigned short);
extern signed char v21 (signed char, unsigned short, signed short);
extern signed char (*v22) (signed char, unsigned short, signed short);
extern signed char v23 (signed char, unsigned short, unsigned short);
extern signed char (*v24) (signed char, unsigned short, unsigned short);
unsigned short v25 (unsigned char);
unsigned short (*v26) (unsigned char) = v25;
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v58 = 2;
unsigned int v57 = 4U;
signed int v56 = 2;

unsigned short v25 (unsigned char v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 7;
unsigned short v61 = 1;
unsigned char v60 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v63;
v63 = v29 ();
history[history_index++] = (int)v63;
}
break;
case 3: 
{
unsigned int v64;
v64 = v29 ();
history[history_index++] = (int)v64;
}
break;
case 5: 
{
unsigned int v65;
v65 = v29 ();
history[history_index++] = (int)v65;
}
break;
case 15: 
return 7;
default: abort ();
}
}
}
}
