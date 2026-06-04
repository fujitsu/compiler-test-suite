#include <stdlib.h>
extern unsigned char v1 (signed int, signed char, signed short);
extern unsigned char (*v2) (signed int, signed char, signed short);
extern signed char v3 (unsigned char, signed char, unsigned short, unsigned char);
extern signed char (*v4) (unsigned char, signed char, unsigned short, unsigned char);
signed int v5 (signed int, unsigned int, unsigned char, unsigned int);
signed int (*v6) (signed int, unsigned int, unsigned char, unsigned int) = v5;
extern signed short v7 (unsigned short, signed short, unsigned short, unsigned char);
extern signed short (*v8) (unsigned short, signed short, unsigned short, unsigned char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned int v11 (signed int, unsigned char, unsigned int, signed short);
extern unsigned int (*v12) (signed int, unsigned char, unsigned int, signed short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned short v19 (signed char, signed short, signed int);
extern unsigned short (*v20) (signed char, signed short, signed int);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed char v23 (signed short);
extern signed char (*v24) (signed short);
extern signed char v27 (unsigned char, signed char);
extern signed char (*v28) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v92 = 3;
unsigned char v91 = 6;
signed int v90 = 1;

signed int v5 (signed int v93, unsigned int v94, unsigned char v95, unsigned int v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 0U;
signed int v98 = 0;
unsigned int v97 = 5U;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v100;
v100 = v13 ();
history[history_index++] = (int)v100;
}
break;
case 6: 
{
unsigned int v101;
v101 = v13 ();
history[history_index++] = (int)v101;
}
break;
case 14: 
return v98;
default: abort ();
}
}
}
}
