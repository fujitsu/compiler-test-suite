#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern signed char v5 (signed int, unsigned short, signed short);
extern signed char (*v6) (signed int, unsigned short, signed short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed int v11 (signed char, signed int, signed int, unsigned short);
extern signed int (*v12) (signed char, signed int, signed int, unsigned short);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern unsigned char v15 (unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned short, unsigned int);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern signed short v19 (unsigned int, signed short, unsigned int);
extern signed short (*v20) (unsigned int, signed short, unsigned int);
extern unsigned char v21 (unsigned char, signed char, unsigned short, signed int);
extern unsigned char (*v22) (unsigned char, signed char, unsigned short, signed int);
extern signed char v23 (unsigned char, unsigned short, unsigned int);
extern signed char (*v24) (unsigned char, unsigned short, unsigned int);
extern unsigned int v25 (unsigned char, signed char, signed short, unsigned int);
extern unsigned int (*v26) (unsigned char, signed char, signed short, unsigned int);
void v27 (signed char, signed char, unsigned int);
void (*v28) (signed char, signed char, unsigned int) = v27;
extern void v29 (signed char, unsigned short);
extern void (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v70 = 7;
signed short v69 = 0;
unsigned char v68 = 6;

void v27 (signed char v71, signed char v72, unsigned int v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned char v76 = 4;
signed int v75 = 0;
unsigned short v74 = 5;
trace++;
switch (trace)
{
case 8: 
{
signed char v77;
unsigned short v78;
v77 = v71 - v71;
v78 = 3 - 6;
v29 (v77, v78);
}
break;
case 10: 
{
signed char v79;
unsigned short v80;
v79 = v72 + v72;
v80 = 7 + v74;
v29 (v79, v80);
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
signed char v83 = -1;
signed int v82 = -2;
unsigned short v81 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
