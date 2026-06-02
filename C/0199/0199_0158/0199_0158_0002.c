#include <stdlib.h>
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned int v7 (signed char, signed char, unsigned char);
extern unsigned int (*v8) (signed char, signed char, unsigned char);
extern signed int v9 (unsigned char, signed char);
extern signed int (*v10) (unsigned char, signed char);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
extern unsigned short v13 (unsigned int, unsigned char);
extern unsigned short (*v14) (unsigned int, unsigned char);
extern signed short v15 (unsigned int, signed char, signed short);
extern signed short (*v16) (unsigned int, signed char, signed short);
extern signed char v17 (unsigned char, signed int, unsigned int);
extern signed char (*v18) (unsigned char, signed int, unsigned int);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned int v25 (signed char, signed int, signed short, signed short);
extern unsigned int (*v26) (signed char, signed int, signed short, signed short);
unsigned int v27 (signed int, unsigned int, unsigned char, signed short);
unsigned int (*v28) (signed int, unsigned int, unsigned char, signed short) = v27;
extern void v29 (unsigned char, unsigned short, signed int, signed short);
extern void (*v30) (unsigned char, unsigned short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v88 = 2;
unsigned int v87 = 2U;
unsigned char v86 = 5;

unsigned int v27 (signed int v89, unsigned int v90, unsigned char v91, signed short v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 5;
signed int v94 = -4;
signed short v93 = 1;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v96;
unsigned char v97;
unsigned short v98;
v96 = v90 - v90;
v97 = v95 + v91;
v98 = v13 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 9: 
{
unsigned int v99;
unsigned char v100;
unsigned short v101;
v99 = 0U - v90;
v100 = v91 - 5;
v101 = v13 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 11: 
return 1U;
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
signed char v104 = 0;
signed int v103 = 3;
unsigned char v102 = 7;
trace++;
switch (trace)
{
case 1: 
return 4;
default: abort ();
}
}
}
}
