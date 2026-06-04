#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed short, unsigned int);
extern unsigned int (*v2) (unsigned int, signed short, unsigned int);
extern unsigned char v3 (unsigned char, unsigned short, unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, unsigned short, unsigned char, signed short);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed int v7 (unsigned short, unsigned int, unsigned int, unsigned char);
extern signed int (*v8) (unsigned short, unsigned int, unsigned int, unsigned char);
extern signed char v9 (unsigned char, unsigned int, signed char);
extern signed char (*v10) (unsigned char, unsigned int, signed char);
extern unsigned short v11 (unsigned int, unsigned int, signed short, unsigned int);
extern unsigned short (*v12) (unsigned int, unsigned int, signed short, unsigned int);
extern signed char v13 (unsigned int, unsigned short);
extern signed char (*v14) (unsigned int, unsigned short);
extern unsigned int v15 (signed short, signed short);
extern unsigned int (*v16) (signed short, signed short);
extern unsigned short v17 (unsigned int, unsigned short, unsigned char);
extern unsigned short (*v18) (unsigned int, unsigned short, unsigned char);
unsigned int v19 (unsigned short);
unsigned int (*v20) (unsigned short) = v19;
extern unsigned short v21 (signed char, signed int);
extern unsigned short (*v22) (signed char, signed int);
extern unsigned short v23 (unsigned short, unsigned char);
extern unsigned short (*v24) (unsigned short, unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
signed char v27 (unsigned char, unsigned int, signed char);
signed char (*v28) (unsigned char, unsigned int, signed char) = v27;
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v93 = 4;
signed int v92 = 1;
signed short v91 = -1;

signed char v27 (unsigned char v94, unsigned int v95, signed char v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 1U;
signed short v98 = -3;
unsigned char v97 = 4;
trace++;
switch (trace)
{
case 1: 
return v96;
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v100)
{
history[history_index++] = (int)v100;
{
for (;;) {
signed short v103 = -4;
signed char v102 = 0;
unsigned short v101 = 5;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v104;
unsigned int v105;
v104 = 2 - 4;
v105 = v29 (v104);
history[history_index++] = (int)v105;
}
break;
case 6: 
{
unsigned char v106;
unsigned int v107;
v106 = 3 + 4;
v107 = v29 (v106);
history[history_index++] = (int)v107;
}
break;
case 8: 
{
unsigned char v108;
unsigned int v109;
v108 = 5 + 5;
v109 = v29 (v108);
history[history_index++] = (int)v109;
}
break;
case 10: 
return 7U;
default: abort ();
}
}
}
}
