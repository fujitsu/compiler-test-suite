#include <stdlib.h>
signed int v1 (signed short, signed char);
signed int (*v2) (signed short, signed char) = v1;
extern unsigned char v3 (unsigned int, signed short);
extern unsigned char (*v4) (unsigned int, signed short);
extern unsigned char v5 (signed short, signed int, unsigned int, signed short);
extern unsigned char (*v6) (signed short, signed int, unsigned int, signed short);
signed short v7 (unsigned int, unsigned short, unsigned short);
signed short (*v8) (unsigned int, unsigned short, unsigned short) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern void v13 (signed short, unsigned char, unsigned char);
extern void (*v14) (signed short, unsigned char, unsigned char);
extern signed int v15 (signed int, unsigned short, signed short);
extern signed int (*v16) (signed int, unsigned short, signed short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern unsigned char v23 (unsigned short);
extern unsigned char (*v24) (unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (signed int, unsigned char, unsigned int, unsigned char);
extern unsigned int (*v28) (signed int, unsigned char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v98 = 0;
unsigned char v97 = 3;
signed short v96 = -3;

signed short v7 (unsigned int v99, unsigned short v100, unsigned short v101)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 4;
signed char v103 = 2;
unsigned char v102 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed short v105, signed char v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = 1;
unsigned int v108 = 4U;
unsigned short v107 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v110;
v110 = v25 ();
history[history_index++] = (int)v110;
}
break;
case 2: 
{
unsigned int v111;
v111 = v11 ();
history[history_index++] = (int)v111;
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}
