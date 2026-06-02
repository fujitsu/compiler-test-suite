#include <stdlib.h>
signed int v1 (signed int, signed short, signed int, signed char);
signed int (*v2) (signed int, signed short, signed int, signed char) = v1;
extern unsigned char v3 (signed int, unsigned int, signed char, signed char);
extern unsigned char (*v4) (signed int, unsigned int, signed char, signed char);
extern unsigned char v5 (unsigned short, signed int);
extern unsigned char (*v6) (unsigned short, signed int);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (signed short, unsigned char, signed short);
extern signed short (*v20) (signed short, unsigned char, signed short);
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
extern unsigned int v23 (unsigned short, unsigned int);
extern unsigned int (*v24) (unsigned short, unsigned int);
extern unsigned short v25 (signed int, signed short, signed int);
extern unsigned short (*v26) (signed int, signed short, signed int);
extern unsigned char v27 (signed int, signed int, unsigned short);
extern unsigned char (*v28) (signed int, signed int, unsigned short);
extern void v29 (signed int, signed int, signed short);
extern void (*v30) (signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v66 = 0U;
unsigned char v65 = 5;
signed int v64 = -4;

unsigned short v11 (void)
{
{
for (;;) {
unsigned int v69 = 2U;
signed char v68 = 0;
unsigned short v67 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed int v70, signed short v71, signed int v72, signed char v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 3;
signed char v75 = 1;
signed short v74 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v77;
signed int v78;
unsigned char v79;
v77 = v76 - v76;
v78 = v70 - v70;
v79 = v5 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 2: 
{
unsigned short v80;
signed int v81;
unsigned char v82;
v80 = 5 + v76;
v81 = v70 - 0;
v82 = v5 (v80, v81);
history[history_index++] = (int)v82;
}
break;
case 14: 
return -4;
default: abort ();
}
}
}
}
