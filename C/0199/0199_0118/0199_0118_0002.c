#include <stdlib.h>
extern signed int v1 (unsigned short, signed short);
extern signed int (*v2) (unsigned short, signed short);
extern signed char v5 (signed char, signed short);
extern signed char (*v6) (signed char, signed short);
extern void v7 (unsigned int, unsigned char, unsigned short, unsigned int);
extern void (*v8) (unsigned int, unsigned char, unsigned short, unsigned int);
signed int v9 (unsigned char);
signed int (*v10) (unsigned char) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern signed char v15 (signed short, signed int);
extern signed char (*v16) (signed short, signed int);
extern signed char v17 (signed char, signed int, signed int);
extern signed char (*v18) (signed char, signed int, signed int);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern void v21 (signed short, signed char, unsigned int, unsigned char);
extern void (*v22) (signed short, signed char, unsigned int, unsigned char);
extern unsigned short v23 (unsigned char, unsigned char);
extern unsigned short (*v24) (unsigned char, unsigned char);
extern unsigned char v25 (signed int, signed char, unsigned short);
extern unsigned char (*v26) (signed int, signed char, unsigned short);
extern signed int v27 (signed short, signed short, signed char, unsigned int);
extern signed int (*v28) (signed short, signed short, signed char, unsigned int);
extern void v29 (unsigned int, signed int);
extern void (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v70 = 3;
unsigned int v69 = 6U;
signed char v68 = -4;

unsigned char v13 (void)
{
{
for (;;) {
signed char v73 = 3;
signed int v72 = 3;
signed char v71 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned char v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 7;
unsigned char v76 = 4;
signed char v75 = -4;
trace++;
switch (trace)
{
case 6: 
{
signed int v78;
signed char v79;
unsigned short v80;
unsigned char v81;
v78 = -2 + 0;
v79 = 3 - v75;
v80 = 5 + v77;
v81 = v25 (v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 8: 
{
signed int v82;
signed char v83;
unsigned short v84;
unsigned char v85;
v82 = 0 - 0;
v83 = 2 + v75;
v84 = v77 - 1;
v85 = v25 (v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 10: 
return 1;
default: abort ();
}
}
}
}
