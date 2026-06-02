#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
signed short v3 (unsigned char, unsigned short);
signed short (*v4) (unsigned char, unsigned short) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern void v7 (signed char, unsigned char, unsigned char, unsigned char);
extern void (*v8) (signed char, unsigned char, unsigned char, unsigned char);
extern void v9 (unsigned char, unsigned int, unsigned short, unsigned char);
extern void (*v10) (unsigned char, unsigned int, unsigned short, unsigned char);
extern unsigned short v11 (signed int, unsigned char, unsigned char);
extern unsigned short (*v12) (signed int, unsigned char, unsigned char);
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
extern signed short v15 (unsigned char, unsigned char, signed int, signed char);
extern signed short (*v16) (unsigned char, unsigned char, signed int, signed char);
signed int v17 (signed short, unsigned char, unsigned char, unsigned int);
signed int (*v18) (signed short, unsigned char, unsigned char, unsigned int) = v17;
extern signed short v19 (unsigned short, signed int, unsigned short);
extern signed short (*v20) (unsigned short, signed int, unsigned short);
signed short v21 (void);
signed short (*v22) (void) = v21;
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed int v27 (signed char, unsigned int, signed short, signed short);
extern signed int (*v28) (signed char, unsigned int, signed short, signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v93 = 3;
unsigned char v92 = 7;
unsigned short v91 = 4;

signed short v21 (void)
{
{
for (;;) {
unsigned int v96 = 3U;
unsigned short v95 = 7;
signed short v94 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed short v97, unsigned char v98, unsigned char v99, unsigned int v100)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 7;
signed char v102 = 0;
unsigned char v101 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed char v104;
v104 = v25 ();
history[history_index++] = (int)v104;
}
break;
case 3: 
{
signed char v105;
v105 = v25 ();
history[history_index++] = (int)v105;
}
break;
case 5: 
return 3;
case 8: 
{
signed short v106;
v106 = v29 ();
history[history_index++] = (int)v106;
}
break;
case 10: 
{
signed char v107;
v107 = v25 ();
history[history_index++] = (int)v107;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}

signed short v3 (unsigned char v108, unsigned short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 2;
unsigned int v111 = 3U;
signed char v110 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
