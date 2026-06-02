#include <stdlib.h>
extern unsigned char v1 (signed int, signed int);
extern unsigned char (*v2) (signed int, signed int);
extern signed int v3 (signed int, unsigned char, unsigned int);
extern signed int (*v4) (signed int, unsigned char, unsigned int);
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
extern void v7 (void);
extern void (*v8) (void);
extern signed short v9 (signed int, unsigned int);
extern signed short (*v10) (signed int, unsigned int);
signed short v11 (signed char, signed char, unsigned int, signed char);
signed short (*v12) (signed char, signed char, unsigned int, signed char) = v11;
unsigned char v13 (unsigned short);
unsigned char (*v14) (unsigned short) = v13;
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned char v17 (unsigned int, unsigned char, unsigned int, signed char);
extern unsigned char (*v18) (unsigned int, unsigned char, unsigned int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed short, signed short, unsigned int, signed int);
extern signed int (*v22) (signed short, signed short, unsigned int, signed int);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern signed int v25 (void);
extern signed int (*v26) (void);
signed short v27 (signed int);
signed short (*v28) (signed int) = v27;
extern unsigned short v29 (signed short, unsigned short, signed char);
extern unsigned short (*v30) (signed short, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v91 = 2;
unsigned short v90 = 7;
unsigned int v89 = 7U;

signed short v27 (signed int v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed char v95 = -3;
signed char v94 = 3;
signed int v93 = -2;
trace++;
switch (trace)
{
case 3: 
return 1;
case 5: 
return -4;
case 7: 
return 0;
case 9: 
return -3;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned short v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = -1;
unsigned char v98 = 0;
unsigned short v97 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v100, signed char v101, unsigned int v102, signed char v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = -4;
signed char v105 = 2;
unsigned char v104 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v107;
signed short v108;
unsigned int v109;
signed int v110;
signed int v111;
v107 = 0 - 1;
v108 = -2 + -3;
v109 = 0U + 7U;
v110 = 1 - -2;
v111 = v21 (v107, v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}
