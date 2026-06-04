#include <stdlib.h>
extern unsigned char v3 (unsigned char, unsigned short, signed int, signed char);
extern unsigned char (*v4) (unsigned char, unsigned short, signed int, signed char);
void v5 (unsigned char, unsigned char);
void (*v6) (unsigned char, unsigned char) = v5;
extern void v7 (unsigned short, signed int, signed short);
extern void (*v8) (unsigned short, signed int, signed short);
extern unsigned int v9 (unsigned short, signed int, unsigned short, signed short);
extern unsigned int (*v10) (unsigned short, signed int, unsigned short, signed short);
signed char v11 (unsigned short, unsigned short, signed char, signed short);
signed char (*v12) (unsigned short, unsigned short, signed char, signed short) = v11;
extern signed short v13 (unsigned short, signed int, signed short);
extern signed short (*v14) (unsigned short, signed int, signed short);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v23 (signed short, unsigned short);
extern signed int (*v24) (signed short, unsigned short);
extern unsigned short v25 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int);
extern unsigned int v27 (unsigned int, signed char, signed char, signed char);
extern unsigned int (*v28) (unsigned int, signed char, signed char, signed char);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v89 = 2;
signed short v88 = -3;
signed short v87 = -2;

signed char v11 (unsigned short v90, unsigned short v91, signed char v92, signed short v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -2;
unsigned char v95 = 6;
signed int v94 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v97;
unsigned int v98;
unsigned int v99;
unsigned short v100;
v97 = 4U - 7U;
v98 = 4U + 1U;
v99 = 1U + 1U;
v100 = v25 (v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 3: 
{
unsigned int v101;
unsigned int v102;
unsigned int v103;
unsigned short v104;
v101 = 1U - 3U;
v102 = 3U - 2U;
v103 = 3U - 2U;
v104 = v25 (v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 5: 
return v92;
default: abort ();
}
}
}
}

void v5 (unsigned char v105, unsigned char v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned short v109 = 0;
signed char v108 = -1;
signed short v107 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
