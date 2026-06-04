#include <stdlib.h>
signed int v3 (unsigned short, unsigned int);
signed int (*v4) (unsigned short, unsigned int) = v3;
extern unsigned char v5 (unsigned char, signed int, unsigned char, signed char);
extern unsigned char (*v6) (unsigned char, signed int, unsigned char, signed char);
extern signed short v7 (unsigned char);
extern signed short (*v8) (unsigned char);
extern signed int v9 (unsigned int, signed int, signed char);
extern signed int (*v10) (unsigned int, signed int, signed char);
extern signed int v11 (unsigned int, unsigned short, signed short);
extern signed int (*v12) (unsigned int, unsigned short, signed short);
signed short v13 (unsigned int, unsigned short, signed int, unsigned int);
signed short (*v14) (unsigned int, unsigned short, signed int, unsigned int) = v13;
extern void v15 (unsigned char, unsigned int, unsigned char);
extern void (*v16) (unsigned char, unsigned int, unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
extern unsigned int v21 (signed char, unsigned int, unsigned short);
extern unsigned int (*v22) (signed char, unsigned int, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (unsigned short, unsigned char, signed char, unsigned int);
extern signed int (*v26) (unsigned short, unsigned char, signed char, unsigned int);
extern unsigned char v27 (unsigned char, signed short, unsigned char);
extern unsigned char (*v28) (unsigned char, signed short, unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v88 = 1;
unsigned short v87 = 6;
unsigned char v86 = 2;

signed short v13 (unsigned int v89, unsigned short v90, signed int v91, unsigned int v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 5U;
signed int v94 = -3;
signed short v93 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned short v96, unsigned int v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = -4;
unsigned int v99 = 6U;
unsigned char v98 = 4;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v101;
unsigned short v102;
signed short v103;
signed int v104;
v101 = 5U - 4U;
v102 = v96 - 1;
v103 = -1 - 2;
v104 = v11 (v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 13: 
return v100;
default: abort ();
}
}
}
}
