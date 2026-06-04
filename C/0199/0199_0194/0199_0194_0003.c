#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned char v3 (unsigned int, signed int);
extern unsigned char (*v4) (unsigned int, signed int);
extern void v5 (unsigned char, signed short, signed int);
extern void (*v6) (unsigned char, signed short, signed int);
extern unsigned char v7 (unsigned char, signed short);
extern unsigned char (*v8) (unsigned char, signed short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern signed short v11 (signed int, signed char, unsigned short);
extern signed short (*v12) (signed int, signed char, unsigned short);
extern void v13 (unsigned int, unsigned char);
extern void (*v14) (unsigned int, unsigned char);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern void v19 (unsigned int, unsigned char, signed char, unsigned int);
extern void (*v20) (unsigned int, unsigned char, signed char, unsigned int);
extern unsigned int v21 (unsigned int, signed int, signed int, unsigned int);
extern unsigned int (*v22) (unsigned int, signed int, signed int, unsigned int);
extern unsigned short v23 (signed int, unsigned int);
extern unsigned short (*v24) (signed int, unsigned int);
extern unsigned short v25 (unsigned short);
extern unsigned short (*v26) (unsigned short);
extern signed char v27 (unsigned char, unsigned int);
extern signed char (*v28) (unsigned char, unsigned int);
signed short v29 (signed char);
signed short (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v93 = -2;
unsigned short v92 = 6;
unsigned short v91 = 6;

signed short v29 (signed char v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 6;
unsigned char v96 = 2;
unsigned short v95 = 1;
trace++;
switch (trace)
{
case 4: 
{
signed int v98;
unsigned int v99;
v98 = -2 - -3;
v99 = v17 (v98);
history[history_index++] = (int)v99;
}
break;
case 6: 
return 3;
case 10: 
{
signed int v100;
unsigned int v101;
v100 = -1 - -2;
v101 = v17 (v100);
history[history_index++] = (int)v101;
}
break;
case 12: 
return -4;
default: abort ();
}
}
}
}
