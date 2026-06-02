#include <stdlib.h>
unsigned char v1 (signed int);
unsigned char (*v2) (signed int) = v1;
extern signed int v3 (unsigned short, unsigned char, signed short);
extern signed int (*v4) (unsigned short, unsigned char, signed short);
extern signed short v5 (unsigned int, unsigned char, signed char);
extern signed short (*v6) (unsigned int, unsigned char, signed char);
extern signed short v7 (unsigned char, signed char, signed char);
extern signed short (*v8) (unsigned char, signed char, signed char);
extern void v9 (unsigned int, signed int, signed char, unsigned int);
extern void (*v10) (unsigned int, signed int, signed char, unsigned int);
extern unsigned int v11 (unsigned int, signed short, unsigned char);
extern unsigned int (*v12) (unsigned int, signed short, unsigned char);
extern signed char v13 (signed char, unsigned int, unsigned short);
extern signed char (*v14) (signed char, unsigned int, unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (signed char, unsigned short, signed short, unsigned char);
extern signed short (*v20) (signed char, unsigned short, signed short, unsigned char);
extern unsigned char v21 (unsigned short, unsigned int);
extern unsigned char (*v22) (unsigned short, unsigned int);
extern signed short v23 (signed char);
extern signed short (*v24) (signed char);
extern void v25 (signed short, signed short);
extern void (*v26) (signed short, signed short);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v72 = 0U;
signed int v71 = -4;
signed char v70 = 1;

unsigned char v1 (signed int v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed short v76 = 0;
signed short v75 = -3;
signed char v74 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v77;
unsigned short v78;
signed short v79;
unsigned char v80;
signed short v81;
v77 = v74 + v74;
v78 = 2 - 2;
v79 = v75 - v75;
v80 = 5 + 0;
v81 = v19 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 4: 
{
signed short v82;
signed short v83;
v82 = 3 + v75;
v83 = v75 - v76;
v25 (v82, v83);
}
break;
case 6: 
{
unsigned char v84;
v84 = v27 ();
history[history_index++] = (int)v84;
}
break;
case 8: 
{
unsigned int v85;
signed short v86;
unsigned char v87;
unsigned int v88;
v85 = 0U + 4U;
v86 = -2 + v75;
v87 = 7 + 6;
v88 = v11 (v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 10: 
{
signed char v89;
unsigned short v90;
signed short v91;
unsigned char v92;
signed short v93;
v89 = v74 - v74;
v90 = 0 - 4;
v91 = v75 - v76;
v92 = 3 - 6;
v93 = v19 (v89, v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}
