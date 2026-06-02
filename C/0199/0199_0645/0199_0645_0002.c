#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
signed int v3 (unsigned char, signed int, unsigned short, unsigned char);
signed int (*v4) (unsigned char, signed int, unsigned short, unsigned char) = v3;
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern unsigned short v7 (signed short, signed int, unsigned char);
extern unsigned short (*v8) (signed short, signed int, unsigned char);
extern signed int v9 (signed char, signed char, signed char, unsigned char);
extern signed int (*v10) (signed char, signed char, signed char, unsigned char);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern signed short v15 (signed short, signed char, signed short);
extern signed short (*v16) (signed short, signed char, signed short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (unsigned short, unsigned short, signed int);
extern unsigned int (*v20) (unsigned short, unsigned short, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (signed char, signed int, signed int, signed char);
extern unsigned int (*v24) (signed char, signed int, signed int, signed char);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
unsigned short v27 (signed int, signed int, unsigned short);
unsigned short (*v28) (signed int, signed int, unsigned short) = v27;
extern unsigned int v29 (unsigned int, signed char, signed short);
extern unsigned int (*v30) (unsigned int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v92 = 1;
unsigned short v91 = 4;
unsigned char v90 = 4;

unsigned short v27 (signed int v93, signed int v94, unsigned short v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed char v98 = 2;
unsigned short v97 = 5;
signed short v96 = 2;
trace++;
switch (trace)
{
case 1: 
return v97;
case 8: 
{
signed int v99;
signed char v100;
v99 = v93 + v94;
v100 = v11 (v99);
history[history_index++] = (int)v100;
}
break;
case 10: 
{
signed int v101;
signed char v102;
v101 = v94 - v94;
v102 = v11 (v101);
history[history_index++] = (int)v102;
}
break;
case 12: 
return v97;
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned short v105 = 4;
signed short v104 = -4;
signed short v103 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned char v106, signed int v107, unsigned short v108, unsigned char v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed int v112 = -4;
signed short v111 = -3;
unsigned short v110 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
