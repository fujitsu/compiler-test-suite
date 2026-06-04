#include <stdlib.h>
unsigned short v1 (unsigned int, unsigned char, signed short, unsigned char);
unsigned short (*v2) (unsigned int, unsigned char, signed short, unsigned char) = v1;
extern unsigned int v3 (unsigned char);
extern unsigned int (*v4) (unsigned char);
extern unsigned char v5 (signed int, signed short);
extern unsigned char (*v6) (signed int, signed short);
extern signed char v7 (signed int, signed char);
extern signed char (*v8) (signed int, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern signed int v11 (unsigned int, unsigned int, signed short);
extern signed int (*v12) (unsigned int, unsigned int, signed short);
extern unsigned short v13 (unsigned short, signed short, signed int, unsigned short);
extern unsigned short (*v14) (unsigned short, signed short, signed int, unsigned short);
extern signed char v15 (signed int, unsigned int, unsigned short, unsigned int);
extern signed char (*v16) (signed int, unsigned int, unsigned short, unsigned int);
extern unsigned int v17 (signed char, signed int, signed short, signed char);
extern unsigned int (*v18) (signed char, signed int, signed short, signed char);
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern signed short v21 (signed int, unsigned int);
extern signed short (*v22) (signed int, unsigned int);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v25 (unsigned char, unsigned int, unsigned char, unsigned char);
extern signed char (*v26) (unsigned char, unsigned int, unsigned char, unsigned char);
extern unsigned char v27 (unsigned char, signed char);
extern unsigned char (*v28) (unsigned char, signed char);
extern unsigned short v29 (unsigned char, unsigned int, unsigned short, unsigned short);
extern unsigned short (*v30) (unsigned char, unsigned int, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v99 = 1;
unsigned short v98 = 3;
unsigned short v97 = 3;

unsigned short v1 (unsigned int v100, unsigned char v101, signed short v102, unsigned char v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned short v106 = 6;
unsigned char v105 = 2;
unsigned short v104 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed int v107;
unsigned int v108;
unsigned short v109;
unsigned int v110;
signed char v111;
v107 = -3 + 3;
v108 = 4U - 3U;
v109 = 5 - 7;
v110 = 4U + 2U;
v111 = v15 (v107, v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 12: 
return v104;
default: abort ();
}
}
}
}
