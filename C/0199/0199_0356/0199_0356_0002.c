#include <stdlib.h>
void v1 (signed int, signed short);
void (*v2) (signed int, signed short) = v1;
extern signed int v3 (signed int, unsigned char, unsigned short);
extern signed int (*v4) (signed int, unsigned char, unsigned short);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
extern unsigned int v11 (signed short, unsigned char);
extern unsigned int (*v12) (signed short, unsigned char);
extern unsigned char v13 (signed char, signed short, signed char);
extern unsigned char (*v14) (signed char, signed short, signed char);
extern signed char v15 (unsigned int, signed int, signed int, signed int);
extern signed char (*v16) (unsigned int, signed int, signed int, signed int);
extern signed char v17 (signed int, signed short, unsigned short);
extern signed char (*v18) (signed int, signed short, unsigned short);
extern unsigned int v19 (unsigned short, signed char);
extern unsigned int (*v20) (unsigned short, signed char);
extern unsigned char v21 (unsigned char);
extern unsigned char (*v22) (unsigned char);
extern unsigned char v23 (signed int, unsigned short, signed char, unsigned char);
extern unsigned char (*v24) (signed int, unsigned short, signed char, unsigned char);
extern unsigned short v25 (unsigned char, signed short, signed int, unsigned int);
extern unsigned short (*v26) (unsigned char, signed short, signed int, unsigned int);
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v96 = 2;
unsigned int v95 = 4U;
unsigned char v94 = 3;

signed short v5 (void)
{
{
for (;;) {
signed short v99 = 0;
unsigned char v98 = 7;
unsigned int v97 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed int v100, signed short v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 6;
unsigned char v103 = 5;
unsigned short v102 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v105;
v105 = v29 ();
history[history_index++] = (int)v105;
}
break;
case 2: 
{
signed int v106;
unsigned char v107;
unsigned short v108;
signed int v109;
v106 = v100 + 3;
v107 = v104 + 6;
v108 = 4 - v102;
v109 = v3 (v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 18: 
return;
default: abort ();
}
}
}
}
