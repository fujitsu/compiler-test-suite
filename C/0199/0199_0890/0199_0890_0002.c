#include <stdlib.h>
unsigned char v1 (signed int, unsigned int, signed int);
unsigned char (*v2) (signed int, unsigned int, signed int) = v1;
extern unsigned short v3 (signed char, signed short, signed char, signed char);
extern unsigned short (*v4) (signed char, signed short, signed char, signed char);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern unsigned short v7 (signed short, unsigned short);
extern unsigned short (*v8) (signed short, unsigned short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern signed short v13 (signed int);
extern signed short (*v14) (signed int);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern void v19 (unsigned char, signed char);
extern void (*v20) (unsigned char, signed char);
extern unsigned int v21 (signed char, unsigned char, signed int, signed short);
extern unsigned int (*v22) (signed char, unsigned char, signed int, signed short);
unsigned int v23 (unsigned short);
unsigned int (*v24) (unsigned short) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (unsigned short, signed char);
extern unsigned char (*v28) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v95 = -2;
unsigned short v94 = 0;
unsigned char v93 = 4;

unsigned int v23 (unsigned short v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 6;
signed short v98 = 3;
signed int v97 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed int v100, unsigned int v101, signed int v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 3;
unsigned int v104 = 6U;
signed int v103 = -2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v106;
unsigned int v107;
v106 = 6 + v105;
v107 = v11 (v106);
history[history_index++] = (int)v107;
}
break;
case 2: 
{
signed short v108;
v108 = v5 ();
history[history_index++] = (int)v108;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}
