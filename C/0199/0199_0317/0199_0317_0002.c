#include <stdlib.h>
extern unsigned char v3 (signed int);
extern unsigned char (*v4) (signed int);
signed char v5 (unsigned char, unsigned int);
signed char (*v6) (unsigned char, unsigned int) = v5;
signed char v7 (unsigned char, signed int);
signed char (*v8) (unsigned char, signed int) = v7;
extern void v9 (signed short, unsigned short);
extern void (*v10) (signed short, unsigned short);
unsigned int v11 (signed short, unsigned short, unsigned char, unsigned int);
unsigned int (*v12) (signed short, unsigned short, unsigned char, unsigned int) = v11;
extern unsigned short v13 (signed int, signed int, unsigned short);
extern unsigned short (*v14) (signed int, signed int, unsigned short);
extern unsigned short v15 (signed short, signed short, unsigned short, signed char);
extern unsigned short (*v16) (signed short, signed short, unsigned short, signed char);
extern signed int v17 (unsigned int, signed char, unsigned int, unsigned short);
extern signed int (*v18) (unsigned int, signed char, unsigned int, unsigned short);
extern signed char v19 (unsigned short, signed char, signed int, unsigned char);
extern signed char (*v20) (unsigned short, signed char, signed int, unsigned char);
extern unsigned int v21 (unsigned short);
extern unsigned int (*v22) (unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned int v25 (signed short, unsigned int, signed char, signed char);
extern unsigned int (*v26) (signed short, unsigned int, signed char, signed char);
extern unsigned char v27 (signed int, signed int, unsigned int);
extern unsigned char (*v28) (signed int, signed int, unsigned int);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v90 = 0;
signed short v89 = 3;
signed int v88 = -2;

unsigned int v11 (signed short v91, unsigned short v92, unsigned char v93, unsigned int v94)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed char v97 = 2;
unsigned short v96 = 4;
unsigned char v95 = 5;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v98;
signed char v99;
signed int v100;
unsigned char v101;
signed char v102;
v98 = 7 + v92;
v99 = -3 - -3;
v100 = -2 + 1;
v101 = v93 - v93;
v102 = v19 (v98, v99, v100, v101);
history[history_index++] = (int)v102;
}
break;
case 7: 
return 6U;
default: abort ();
}
}
}
}

signed char v7 (unsigned char v103, signed int v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = 2;
signed int v106 = 0;
unsigned short v105 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned char v108, unsigned int v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 1;
unsigned int v111 = 0U;
unsigned short v110 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
