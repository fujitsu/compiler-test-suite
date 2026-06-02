#include <stdlib.h>
extern void v3 (unsigned short, signed short);
extern void (*v4) (unsigned short, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v7 (signed int, signed int);
extern signed int (*v8) (signed int, signed int);
extern signed int v9 (unsigned char, unsigned char);
extern signed int (*v10) (unsigned char, unsigned char);
extern unsigned short v11 (signed short, unsigned short, unsigned char, unsigned char);
extern unsigned short (*v12) (signed short, unsigned short, unsigned char, unsigned char);
extern void v13 (signed char);
extern void (*v14) (signed char);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned char v21 (signed char);
extern unsigned char (*v22) (signed char);
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
extern unsigned char v25 (signed char, signed int, signed int, signed int);
extern unsigned char (*v26) (signed char, signed int, signed int, signed int);
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v111 = 2;
unsigned char v110 = 0;
unsigned int v109 = 7U;

unsigned char v27 (void)
{
{
for (;;) {
unsigned char v114 = 7;
unsigned short v113 = 5;
unsigned short v112 = 1;
trace++;
switch (trace)
{
case 3: 
return v114;
case 9: 
return v114;
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
signed int v117 = 3;
signed char v116 = -4;
signed short v115 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed char v118;
unsigned char v119;
v118 = v116 + -2;
v119 = v21 (v118);
history[history_index++] = (int)v119;
}
break;
case 5: 
{
signed char v120;
unsigned char v121;
v120 = -2 - 3;
v121 = v21 (v120);
history[history_index++] = (int)v121;
}
break;
case 7: 
{
signed char v122;
unsigned char v123;
v122 = 3 + -4;
v123 = v21 (v122);
history[history_index++] = (int)v123;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}
