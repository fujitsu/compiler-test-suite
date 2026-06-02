#include <stdlib.h>
extern void v1 (unsigned int, signed int);
extern void (*v2) (unsigned int, signed int);
extern signed int v3 (unsigned int, unsigned int, unsigned short);
extern signed int (*v4) (unsigned int, unsigned int, unsigned short);
extern unsigned int v5 (signed int, signed char, unsigned char);
extern unsigned int (*v6) (signed int, signed char, unsigned char);
extern signed int v7 (unsigned short, signed char, unsigned int);
extern signed int (*v8) (unsigned short, signed char, unsigned int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern signed int v13 (signed char, signed char);
extern signed int (*v14) (signed char, signed char);
void v15 (unsigned char, unsigned int, unsigned short);
void (*v16) (unsigned char, unsigned int, unsigned short) = v15;
extern unsigned int v17 (signed char, unsigned short, unsigned int, signed char);
extern unsigned int (*v18) (signed char, unsigned short, unsigned int, signed char);
extern unsigned short v19 (unsigned short, signed short, signed int, signed short);
extern unsigned short (*v20) (unsigned short, signed short, signed int, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (unsigned short, signed char);
extern void (*v24) (unsigned short, signed char);
extern signed int v25 (unsigned short, unsigned int, signed int, signed short);
extern signed int (*v26) (unsigned short, unsigned int, signed int, signed short);
extern void v27 (void);
extern void (*v28) (void);
extern signed int v29 (unsigned short, signed short, unsigned short);
extern signed int (*v30) (unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v137 = 3;
unsigned char v136 = 3;
signed char v135 = -1;

void v15 (unsigned char v138, unsigned int v139, unsigned short v140)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed char v143 = -4;
unsigned short v142 = 0;
unsigned short v141 = 1;
trace++;
switch (trace)
{
case 9: 
{
signed char v144;
v144 = v21 ();
history[history_index++] = (int)v144;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
