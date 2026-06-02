#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed char, unsigned char, signed short);
extern unsigned short (*v2) (unsigned char, signed char, unsigned char, signed short);
extern signed char v3 (signed short, unsigned short);
extern signed char (*v4) (signed short, unsigned short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern void v13 (unsigned int, signed char);
extern void (*v14) (unsigned int, signed char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed char v19 (signed short, signed char, signed short, signed short);
extern signed char (*v20) (signed short, signed char, signed short, signed short);
extern signed int v21 (signed char, unsigned int, signed char, signed short);
extern signed int (*v22) (signed char, unsigned int, signed char, signed short);
signed char v23 (signed char, signed short, signed short, unsigned short);
signed char (*v24) (signed char, signed short, signed short, unsigned short) = v23;
extern void v25 (unsigned int, signed char);
extern void (*v26) (unsigned int, signed char);
extern unsigned short v27 (signed short, signed short);
extern unsigned short (*v28) (signed short, signed short);
extern signed int v29 (unsigned char);
extern signed int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v56 = 2;
signed short v55 = 0;
unsigned char v54 = 2;

signed char v23 (signed char v57, signed short v58, signed short v59, unsigned short v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 1;
signed int v62 = 0;
signed short v61 = -2;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v64;
v64 = v17 ();
history[history_index++] = (int)v64;
}
break;
case 4: 
return v57;
case 6: 
{
unsigned short v65;
v65 = v17 ();
history[history_index++] = (int)v65;
}
break;
case 8: 
{
unsigned short v66;
v66 = v17 ();
history[history_index++] = (int)v66;
}
break;
case 14: 
return v57;
case 16: 
return -1;
case 18: 
return 2;
default: abort ();
}
}
}
}
