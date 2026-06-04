#include <stdlib.h>
extern unsigned char v1 (signed short);
extern unsigned char (*v2) (signed short);
extern signed short v3 (signed int, unsigned char);
extern signed short (*v4) (signed int, unsigned char);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
extern unsigned char v7 (unsigned int);
extern unsigned char (*v8) (unsigned int);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
signed short v15 (signed int, signed short);
signed short (*v16) (signed int, signed short) = v15;
signed int v17 (signed short);
signed int (*v18) (signed short) = v17;
extern void v19 (unsigned int, signed int, signed int, unsigned short);
extern void (*v20) (unsigned int, signed int, signed int, unsigned short);
signed char v21 (signed char, unsigned short, signed short);
signed char (*v22) (signed char, unsigned short, signed short) = v21;
extern signed char v23 (signed char, unsigned short, unsigned short);
extern signed char (*v24) (signed char, unsigned short, unsigned short);
extern unsigned short v25 (unsigned char);
extern unsigned short (*v26) (unsigned char);
extern signed char v27 (void);
extern signed char (*v28) (void);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v92 = 1;
unsigned char v91 = 6;
signed int v90 = -2;

unsigned int v29 (void)
{
{
for (;;) {
unsigned char v95 = 3;
unsigned short v94 = 7;
unsigned short v93 = 6;
trace++;
switch (trace)
{
case 2: 
return 5U;
case 4: 
return 6U;
case 6: 
{
signed char v96;
signed short v97;
v96 = -1 + 3;
v97 = v5 (v96);
history[history_index++] = (int)v97;
}
break;
case 14: 
return 6U;
default: abort ();
}
}
}
}

signed char v21 (signed char v98, unsigned short v99, signed short v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = -3;
signed int v102 = -3;
unsigned int v101 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed short v104)
{
history[history_index++] = (int)v104;
{
for (;;) {
signed int v107 = -2;
signed short v106 = 0;
signed int v105 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed int v108, signed short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = 1;
signed char v111 = -4;
signed char v110 = -3;
trace++;
switch (trace)
{
case 10: 
return v109;
default: abort ();
}
}
}
}
