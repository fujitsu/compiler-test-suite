#include <stdlib.h>
extern unsigned int v1 (signed int, unsigned char, signed char);
extern unsigned int (*v2) (signed int, unsigned char, signed char);
extern signed int v3 (signed char);
extern signed int (*v4) (signed char);
extern signed char v5 (signed char, signed int);
extern signed char (*v6) (signed char, signed int);
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (void);
extern void (*v10) (void);
extern signed char v11 (unsigned int, signed int);
extern signed char (*v12) (unsigned int, signed int);
extern signed short v13 (unsigned char, signed char, unsigned char, signed short);
extern signed short (*v14) (unsigned char, signed char, unsigned char, signed short);
extern signed char v15 (unsigned char, signed short);
extern signed char (*v16) (unsigned char, signed short);
unsigned char v17 (signed short);
unsigned char (*v18) (signed short) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
unsigned short v21 (unsigned char, unsigned int);
unsigned short (*v22) (unsigned char, unsigned int) = v21;
extern signed short v23 (signed short, unsigned char, unsigned short);
extern signed short (*v24) (signed short, unsigned char, unsigned short);
extern unsigned short v25 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v94 = 3;
signed short v93 = -4;
signed short v92 = -4;

unsigned short v21 (unsigned char v95, unsigned int v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 0;
signed short v98 = -2;
signed char v97 = -2;
trace++;
switch (trace)
{
case 2: 
return 5;
case 8: 
{
unsigned int v100;
unsigned int v101;
unsigned int v102;
unsigned short v103;
v100 = 2U + v96;
v101 = v96 - v96;
v102 = v96 - v96;
v103 = v25 (v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 14: 
return 6;
default: abort ();
}
}
}
}

unsigned char v17 (signed short v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
signed char v107 = -2;
unsigned int v106 = 3U;
signed short v105 = 1;
trace++;
switch (trace)
{
case 4: 
{
signed char v108;
unsigned char v109;
v108 = v107 - -1;
v109 = v29 (v108);
history[history_index++] = (int)v109;
}
break;
case 6: 
return 1;
default: abort ();
}
}
}
}
