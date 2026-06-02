#include <stdlib.h>
unsigned int v3 (unsigned char, signed char);
unsigned int (*v4) (unsigned char, signed char) = v3;
extern unsigned short v5 (unsigned int, signed int, signed short);
extern unsigned short (*v6) (unsigned int, signed int, signed short);
extern unsigned short v7 (unsigned int, signed char, signed char, signed short);
extern unsigned short (*v8) (unsigned int, signed char, signed char, signed short);
signed char v9 (signed char);
signed char (*v10) (signed char) = v9;
extern unsigned short v11 (signed short, signed char);
extern unsigned short (*v12) (signed short, signed char);
extern signed int v13 (signed int, unsigned short, signed int, unsigned char);
extern signed int (*v14) (signed int, unsigned short, signed int, unsigned char);
extern unsigned int v15 (unsigned int, signed short);
extern unsigned int (*v16) (unsigned int, signed short);
unsigned char v17 (signed char);
unsigned char (*v18) (signed char) = v17;
extern signed char v19 (signed char, signed int);
extern signed char (*v20) (signed char, signed int);
extern signed char v21 (signed char, unsigned char);
extern signed char (*v22) (signed char, unsigned char);
extern signed short v23 (unsigned int, unsigned int, signed short, signed char);
extern signed short (*v24) (unsigned int, unsigned int, signed short, signed char);
extern signed char v25 (signed short, unsigned int, unsigned int, unsigned int);
extern signed char (*v26) (signed short, unsigned int, unsigned int, unsigned int);
extern void v27 (unsigned char, signed char, unsigned int, unsigned short);
extern void (*v28) (unsigned char, signed char, unsigned int, unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v87 = 0;
unsigned char v86 = 3;
unsigned short v85 = 5;

unsigned char v17 (signed char v88)
{
history[history_index++] = (int)v88;
{
for (;;) {
unsigned int v91 = 7U;
unsigned short v90 = 3;
signed char v89 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed char v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
unsigned char v95 = 1;
unsigned char v94 = 5;
signed char v93 = -3;
trace++;
switch (trace)
{
case 7: 
{
signed char v96;
unsigned char v97;
signed char v98;
v96 = v93 - v92;
v97 = v94 - v94;
v98 = v21 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 9: 
{
unsigned int v99;
v99 = v29 ();
history[history_index++] = (int)v99;
}
break;
case 11: 
return v93;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned char v100, signed char v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 0U;
signed char v103 = -2;
unsigned int v102 = 6U;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v105;
v105 = v29 ();
history[history_index++] = (int)v105;
}
break;
case 3: 
return v102;
default: abort ();
}
}
}
}
