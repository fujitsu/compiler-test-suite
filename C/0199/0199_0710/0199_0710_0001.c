#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
extern signed char v3 (unsigned int, signed int, unsigned char, signed short);
extern signed char (*v4) (unsigned int, signed int, unsigned char, signed short);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed char v7 (signed int, unsigned short, unsigned int);
extern signed char (*v8) (signed int, unsigned short, unsigned int);
extern unsigned short v9 (unsigned short, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned int);
extern void v11 (void);
extern void (*v12) (void);
extern signed short v13 (unsigned int, unsigned short);
extern signed short (*v14) (unsigned int, unsigned short);
extern signed short v15 (unsigned short, signed short, signed short, unsigned short);
extern signed short (*v16) (unsigned short, signed short, signed short, unsigned short);
extern signed short v17 (signed short, signed char);
extern signed short (*v18) (signed short, signed char);
extern unsigned int v19 (signed int, unsigned int);
extern unsigned int (*v20) (signed int, unsigned int);
extern unsigned int v21 (signed short, unsigned char, signed short, unsigned int);
extern unsigned int (*v22) (signed short, unsigned char, signed short, unsigned int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
signed short v25 (unsigned short, unsigned short, signed short);
signed short (*v26) (unsigned short, unsigned short, signed short) = v25;
extern signed short v27 (unsigned char, unsigned int);
extern signed short (*v28) (unsigned char, unsigned int);
extern unsigned char v29 (signed short, unsigned char);
extern unsigned char (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v80 = 0;
signed short v79 = 2;
unsigned char v78 = 5;

signed short v25 (unsigned short v81, unsigned short v82, signed short v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned short v86 = 3;
signed short v85 = -1;
signed int v84 = 0;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v87;
unsigned int v88;
signed short v89;
v87 = 5 + 6;
v88 = 2U + 7U;
v89 = v27 (v87, v88);
history[history_index++] = (int)v89;
}
break;
case 12: 
return v85;
default: abort ();
}
}
}
}
