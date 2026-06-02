#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed char, unsigned short, unsigned short);
extern void (*v4) (signed char, unsigned short, unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (signed short, unsigned int, signed char, signed short);
extern unsigned char (*v8) (signed short, unsigned int, signed char, signed short);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned short v11 (unsigned int);
extern unsigned short (*v12) (unsigned int);
extern signed int v13 (unsigned int, signed short, unsigned short, unsigned char);
extern signed int (*v14) (unsigned int, signed short, unsigned short, unsigned char);
extern signed short v15 (unsigned short, unsigned int, signed char);
extern signed short (*v16) (unsigned short, unsigned int, signed char);
extern signed int v17 (signed char, signed int, unsigned int, signed short);
extern signed int (*v18) (signed char, signed int, unsigned int, signed short);
extern signed int v19 (signed char, unsigned int, signed char, signed int);
extern signed int (*v20) (signed char, unsigned int, signed char, signed int);
extern signed int v21 (unsigned char, signed char, signed char);
extern signed int (*v22) (unsigned char, signed char, signed char);
extern unsigned int v23 (unsigned char, unsigned char, signed short);
extern unsigned int (*v24) (unsigned char, unsigned char, signed short);
void v25 (unsigned char);
void (*v26) (unsigned char) = v25;
extern signed char v27 (unsigned char, signed int, signed short);
extern signed char (*v28) (unsigned char, signed int, signed short);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v130 = -2;
signed int v129 = -3;
signed char v128 = -2;

void v25 (unsigned char v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = 1;
unsigned short v133 = 1;
signed short v132 = 2;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
return;
case 6: 
{
unsigned short v135;
v135 = v29 ();
history[history_index++] = (int)v135;
}
break;
case 8: 
{
unsigned short v136;
v136 = v29 ();
history[history_index++] = (int)v136;
}
break;
case 10: 
{
unsigned short v137;
v137 = v29 ();
history[history_index++] = (int)v137;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
