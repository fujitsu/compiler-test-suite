#include <stdlib.h>
signed short v1 (signed int, unsigned char);
signed short (*v2) (signed int, unsigned char) = v1;
signed short v3 (unsigned char, unsigned short);
signed short (*v4) (unsigned char, unsigned short) = v3;
extern void v5 (unsigned int, signed short);
extern void (*v6) (unsigned int, signed short);
extern signed short v7 (signed int, unsigned short, signed char, unsigned short);
extern signed short (*v8) (signed int, unsigned short, signed char, unsigned short);
extern unsigned short v9 (signed int, unsigned int);
extern unsigned short (*v10) (signed int, unsigned int);
extern unsigned short v11 (unsigned short, unsigned char);
extern unsigned short (*v12) (unsigned short, unsigned char);
extern unsigned char v13 (signed int, unsigned int);
extern unsigned char (*v14) (signed int, unsigned int);
extern unsigned short v15 (signed short, unsigned short);
extern unsigned short (*v16) (signed short, unsigned short);
extern signed char v17 (signed char, unsigned int, unsigned char, signed int);
extern signed char (*v18) (signed char, unsigned int, unsigned char, signed int);
extern unsigned int v19 (unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned char);
extern unsigned int v21 (unsigned short, signed char);
extern unsigned int (*v22) (unsigned short, signed char);
extern unsigned short v23 (unsigned short, unsigned char, unsigned int);
extern unsigned short (*v24) (unsigned short, unsigned char, unsigned int);
extern unsigned short v25 (unsigned short, unsigned short, signed short, signed char);
extern unsigned short (*v26) (unsigned short, unsigned short, signed short, signed char);
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v105 = 5;
unsigned int v104 = 6U;
unsigned int v103 = 6U;

unsigned char v27 (void)
{
{
for (;;) {
signed int v108 = -1;
signed int v107 = 2;
signed char v106 = 3;
trace++;
switch (trace)
{
case 6: 
return 3;
case 8: 
return 3;
case 10: 
return 5;
default: abort ();
}
}
}
}

signed short v3 (unsigned char v109, unsigned short v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = -4;
signed char v112 = -3;
signed char v111 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v114, unsigned char v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 4U;
unsigned int v117 = 0U;
signed int v116 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v119;
signed char v120;
unsigned int v121;
v119 = 3 + 3;
v120 = -2 - -2;
v121 = v21 (v119, v120);
history[history_index++] = (int)v121;
}
break;
case 4: 
{
signed int v122;
unsigned int v123;
unsigned char v124;
v122 = v114 - v114;
v123 = v118 - v117;
v124 = v13 (v122, v123);
history[history_index++] = (int)v124;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
