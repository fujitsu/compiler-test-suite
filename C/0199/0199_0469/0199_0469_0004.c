#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern signed int v3 (unsigned char, unsigned char, signed int);
extern signed int (*v4) (unsigned char, unsigned char, signed int);
extern signed int v5 (unsigned int);
extern signed int (*v6) (unsigned int);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (signed int);
extern signed short (*v10) (signed int);
extern signed int v11 (signed int, unsigned int);
extern signed int (*v12) (signed int, unsigned int);
extern unsigned int v13 (unsigned short, unsigned int, signed int);
extern unsigned int (*v14) (unsigned short, unsigned int, signed int);
extern signed int v15 (unsigned char, signed char, signed int, signed int);
extern signed int (*v16) (unsigned char, signed char, signed int, signed int);
extern unsigned char v17 (signed char, signed int, unsigned int);
extern unsigned char (*v18) (signed char, signed int, unsigned int);
extern signed short v19 (unsigned int, unsigned short, signed short);
extern signed short (*v20) (unsigned int, unsigned short, signed short);
extern unsigned short v21 (signed short, unsigned int, signed short);
extern unsigned short (*v22) (signed short, unsigned int, signed short);
extern unsigned char v23 (signed short, unsigned char, signed char);
extern unsigned char (*v24) (signed short, unsigned char, signed char);
extern unsigned int v25 (signed int, unsigned short, unsigned short);
extern unsigned int (*v26) (signed int, unsigned short, unsigned short);
extern unsigned char v27 (unsigned char);
extern unsigned char (*v28) (unsigned char);
extern void v29 (unsigned short, unsigned short);
extern void (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v133 = 2;
signed char v132 = 0;
signed char v131 = -2;

void v1 (void)
{
{
for (;;) {
unsigned short v136 = 3;
unsigned int v135 = 6U;
signed char v134 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v137;
v137 = v7 ();
history[history_index++] = (int)v137;
}
break;
case 4: 
{
signed int v138;
signed short v139;
v138 = 0 + -4;
v139 = v9 (v138);
history[history_index++] = (int)v139;
}
break;
case 6: 
{
unsigned int v140;
signed int v141;
v140 = v135 + v135;
v141 = v5 (v140);
history[history_index++] = (int)v141;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
