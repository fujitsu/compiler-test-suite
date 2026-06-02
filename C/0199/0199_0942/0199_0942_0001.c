#include <stdlib.h>
void v1 (unsigned char, signed short, unsigned int);
void (*v2) (unsigned char, signed short, unsigned int) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern void v5 (unsigned int, unsigned char, unsigned int);
extern void (*v6) (unsigned int, unsigned char, unsigned int);
extern signed short v7 (signed short, unsigned char, signed int, signed short);
extern signed short (*v8) (signed short, unsigned char, signed int, signed short);
extern signed char v9 (signed short, signed int, unsigned short);
extern signed char (*v10) (signed short, signed int, unsigned short);
extern signed int v11 (signed int, signed char, signed int);
extern signed int (*v12) (signed int, signed char, signed int);
extern unsigned short v13 (signed short, unsigned int);
extern unsigned short (*v14) (signed short, unsigned int);
extern unsigned int v15 (signed char, signed char);
extern unsigned int (*v16) (signed char, signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (signed int, signed short);
extern void (*v20) (signed int, signed short);
extern unsigned int v21 (signed short, signed char, signed int, unsigned int);
extern unsigned int (*v22) (signed short, signed char, signed int, unsigned int);
extern void v23 (unsigned int, signed int, unsigned char, signed int);
extern void (*v24) (unsigned int, signed int, unsigned char, signed int);
extern signed short v25 (signed int);
extern signed short (*v26) (signed int);
extern signed short v29 (unsigned int);
extern signed short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v58 = -1;
signed char v57 = -4;
unsigned short v56 = 2;

void v1 (unsigned char v59, signed short v60, unsigned int v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed char v64 = -1;
unsigned short v63 = 5;
signed char v62 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v65;
v65 = v17 ();
history[history_index++] = (int)v65;
}
break;
case 8: 
{
signed short v66;
signed char v67;
signed int v68;
unsigned int v69;
unsigned int v70;
v66 = -3 + v60;
v67 = -4 + v62;
v68 = -1 - -1;
v69 = v61 - v61;
v70 = v21 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 10: 
{
signed char v71;
v71 = v3 ();
history[history_index++] = (int)v71;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
