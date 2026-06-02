#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (void);
extern void (*v6) (void);
signed int v7 (unsigned int, unsigned int, signed short);
signed int (*v8) (unsigned int, unsigned int, signed short) = v7;
extern unsigned short v9 (unsigned char, signed short, signed short);
extern unsigned short (*v10) (unsigned char, signed short, signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern unsigned short v17 (unsigned int, unsigned char, signed int, signed char);
extern unsigned short (*v18) (unsigned int, unsigned char, signed int, signed char);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed short v21 (unsigned short, signed int, unsigned short);
extern signed short (*v22) (unsigned short, signed int, unsigned short);
void v23 (unsigned short);
void (*v24) (unsigned short) = v23;
extern signed char v25 (signed short, unsigned short, unsigned int);
extern signed char (*v26) (signed short, unsigned short, unsigned int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern void v29 (signed char, signed int, signed short, signed short);
extern void (*v30) (signed char, signed int, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v86 = 3;
signed short v85 = -2;
unsigned int v84 = 1U;

void v23 (unsigned short v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = 1;
unsigned int v89 = 3U;
signed short v88 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned int v91, unsigned int v92, signed short v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -4;
signed short v95 = -2;
signed short v94 = -2;
trace++;
switch (trace)
{
case 2: 
{
signed short v97;
unsigned short v98;
unsigned int v99;
signed char v100;
v97 = -2 + -2;
v98 = 1 + 0;
v99 = 4U + v92;
v100 = v25 (v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 4: 
{
unsigned short v101;
signed int v102;
unsigned short v103;
signed short v104;
v101 = 2 - 0;
v102 = v96 - v96;
v103 = 7 + 2;
v104 = v21 (v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
