#include <stdlib.h>
unsigned short v1 (unsigned int);
unsigned short (*v2) (unsigned int) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern unsigned short v7 (signed short, unsigned short, signed short);
extern unsigned short (*v8) (signed short, unsigned short, signed short);
extern void v9 (signed char, signed char);
extern void (*v10) (signed char, signed char);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed short v13 (unsigned char, signed int);
extern signed short (*v14) (unsigned char, signed int);
extern signed char v15 (unsigned short, signed short, signed short);
extern signed char (*v16) (unsigned short, signed short, signed short);
extern signed int v17 (unsigned char);
extern signed int (*v18) (unsigned char);
extern unsigned char v19 (signed int, unsigned short);
extern unsigned char (*v20) (signed int, unsigned short);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
extern unsigned short v23 (unsigned short);
extern unsigned short (*v24) (unsigned short);
extern unsigned short v25 (signed int, signed int, signed short);
extern unsigned short (*v26) (signed int, signed int, signed short);
extern signed int v27 (signed int, unsigned short, unsigned int);
extern signed int (*v28) (signed int, unsigned short, unsigned int);
extern unsigned short v29 (signed char, signed short, signed char, signed int);
extern unsigned short (*v30) (signed char, signed short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v90 = 6;
unsigned char v89 = 0;
signed char v88 = 0;

unsigned short v1 (unsigned int v91)
{
history[history_index++] = (int)v91;
{
for (;;) {
unsigned short v94 = 0;
signed int v93 = -2;
signed char v92 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v95;
signed int v96;
v95 = 6 - 4;
v96 = v17 (v95);
history[history_index++] = (int)v96;
}
break;
case 4: 
{
unsigned short v97;
signed short v98;
signed short v99;
signed char v100;
v97 = 1 + 3;
v98 = 3 - 3;
v99 = 0 + -2;
v100 = v15 (v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 6: 
return 6;
case 7: 
{
signed int v101;
unsigned short v102;
unsigned char v103;
v101 = v93 - 1;
v102 = v94 + v94;
v103 = v19 (v101, v102);
history[history_index++] = (int)v103;
}
break;
case 9: 
{
unsigned short v104;
signed short v105;
signed short v106;
signed char v107;
v104 = 5 - v94;
v105 = -3 - -2;
v106 = -4 - 1;
v107 = v15 (v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 11: 
return v94;
default: abort ();
}
}
}
}
