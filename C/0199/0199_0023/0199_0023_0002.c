#include <stdlib.h>
signed char v3 (unsigned char, signed short);
signed char (*v4) (unsigned char, signed short) = v3;
signed char v5 (signed char);
signed char (*v6) (signed char) = v5;
signed int v7 (void);
signed int (*v8) (void) = v7;
extern void v9 (signed int);
extern void (*v10) (signed int);
unsigned char v11 (unsigned int, unsigned short, signed short, unsigned short);
unsigned char (*v12) (unsigned int, unsigned short, signed short, unsigned short) = v11;
extern unsigned char v13 (signed char, unsigned int, signed int, unsigned short);
extern unsigned char (*v14) (signed char, unsigned int, signed int, unsigned short);
extern unsigned short v15 (signed int, signed short, signed char);
extern unsigned short (*v16) (signed int, signed short, signed char);
extern unsigned char v17 (unsigned char, unsigned short, signed int);
extern unsigned char (*v18) (unsigned char, unsigned short, signed int);
extern unsigned char v19 (signed char);
extern unsigned char (*v20) (signed char);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned short v23 (signed short, signed short, unsigned char);
extern unsigned short (*v24) (signed short, signed short, unsigned char);
extern void v25 (void);
extern void (*v26) (void);
extern void v27 (unsigned char, unsigned short, signed short);
extern void (*v28) (unsigned char, unsigned short, signed short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v89 = -4;
unsigned char v88 = 2;
signed char v87 = -4;

unsigned char v11 (unsigned int v90, unsigned short v91, signed short v92, unsigned short v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed char v96 = -1;
unsigned short v95 = 3;
unsigned int v94 = 7U;
trace++;
switch (trace)
{
case 4: 
{
signed int v97;
v97 = v21 ();
history[history_index++] = (int)v97;
}
break;
case 6: 
{
unsigned char v98;
unsigned short v99;
signed short v100;
v98 = 5 - 6;
v99 = 7 + v91;
v100 = v92 + -1;
v27 (v98, v99, v100);
}
break;
case 8: 
return 4;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
unsigned short v103 = 7;
signed int v102 = -4;
unsigned short v101 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
unsigned short v107 = 4;
unsigned int v106 = 3U;
signed char v105 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned char v108, signed short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 3;
unsigned char v111 = 3;
unsigned char v110 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
