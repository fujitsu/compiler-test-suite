#include <stdlib.h>
signed char v1 (signed short);
signed char (*v2) (signed short) = v1;
unsigned short v3 (unsigned char, unsigned int, unsigned short, signed char);
unsigned short (*v4) (unsigned char, unsigned int, unsigned short, signed char) = v3;
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern unsigned char v7 (unsigned short, signed int);
extern unsigned char (*v8) (unsigned short, signed int);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern signed int v11 (unsigned short, unsigned int, signed short, signed short);
extern signed int (*v12) (unsigned short, unsigned int, signed short, signed short);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern signed short v15 (unsigned char, unsigned char, signed int, unsigned short);
extern signed short (*v16) (unsigned char, unsigned char, signed int, unsigned short);
extern signed int v17 (signed char, unsigned char);
extern signed int (*v18) (signed char, unsigned char);
extern signed int v19 (signed short, signed char);
extern signed int (*v20) (signed short, signed char);
extern signed short v21 (signed int, unsigned int);
extern signed short (*v22) (signed int, unsigned int);
extern unsigned char v23 (unsigned short, unsigned int, signed char);
extern unsigned char (*v24) (unsigned short, unsigned int, signed char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (signed int, unsigned char, signed short, unsigned short);
extern unsigned char (*v28) (signed int, unsigned char, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v97 = -2;
unsigned char v96 = 2;
signed char v95 = 2;

unsigned short v3 (unsigned char v98, unsigned int v99, unsigned short v100, signed char v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed int v104 = 2;
unsigned char v103 = 0;
signed short v102 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed short v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 0;
unsigned char v107 = 3;
signed char v106 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v109;
v109 = v25 ();
history[history_index++] = (int)v109;
}
break;
case 2: 
{
unsigned int v110;
v110 = v25 ();
history[history_index++] = (int)v110;
}
break;
case 12: 
return v106;
default: abort ();
}
}
}
}
