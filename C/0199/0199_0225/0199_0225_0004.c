#include <stdlib.h>
extern signed short v3 (unsigned int, signed char);
extern signed short (*v4) (unsigned int, signed char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed int v13 (unsigned short, unsigned short);
extern signed int (*v14) (unsigned short, unsigned short);
extern signed char v15 (unsigned char, signed short, signed int, unsigned int);
extern signed char (*v16) (unsigned char, signed short, signed int, unsigned int);
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern void v21 (signed short, signed short, unsigned short, signed char);
extern void (*v22) (signed short, signed short, unsigned short, signed char);
unsigned int v23 (signed int);
unsigned int (*v24) (signed int) = v23;
extern signed int v25 (signed short, unsigned int, signed short);
extern signed int (*v26) (signed short, unsigned int, signed short);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned short v29 (signed char, unsigned int, signed short, signed char);
extern unsigned short (*v30) (signed char, unsigned int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v130 = 3;
unsigned char v129 = 5;
signed char v128 = 1;

unsigned int v23 (signed int v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
signed short v134 = 2;
unsigned int v133 = 1U;
unsigned int v132 = 7U;
trace++;
switch (trace)
{
case 3: 
{
signed char v135;
v135 = v27 ();
history[history_index++] = (int)v135;
}
break;
case 5: 
return 2U;
case 7: 
{
signed char v136;
v136 = v27 ();
history[history_index++] = (int)v136;
}
break;
case 9: 
{
signed char v137;
v137 = v27 ();
history[history_index++] = (int)v137;
}
break;
case 11: 
return 0U;
default: abort ();
}
}
}
}
