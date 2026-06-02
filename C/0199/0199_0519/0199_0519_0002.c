#include <stdlib.h>
unsigned short v1 (signed char, signed int, signed char);
unsigned short (*v2) (signed char, signed int, signed char) = v1;
extern signed int v3 (signed int, signed char);
extern signed int (*v4) (signed int, signed char);
extern unsigned short v5 (signed char, signed char, signed char);
extern unsigned short (*v6) (signed char, signed char, signed char);
extern unsigned char v7 (unsigned int, unsigned short, signed int);
extern unsigned char (*v8) (unsigned int, unsigned short, signed int);
extern unsigned short v9 (unsigned short, unsigned int, signed int);
extern unsigned short (*v10) (unsigned short, unsigned int, signed int);
extern unsigned int v11 (signed int, unsigned short);
extern unsigned int (*v12) (signed int, unsigned short);
extern signed char v13 (unsigned short, unsigned short, unsigned short, signed char);
extern signed char (*v14) (unsigned short, unsigned short, unsigned short, signed char);
extern unsigned char v15 (signed short, signed int, signed int);
extern unsigned char (*v16) (signed short, signed int, signed int);
unsigned int v17 (void);
unsigned int (*v18) (void) = v17;
extern unsigned char v19 (unsigned short, unsigned short, signed char);
extern unsigned char (*v20) (unsigned short, unsigned short, signed char);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern signed int v23 (signed short);
extern signed int (*v24) (signed short);
extern signed char v25 (signed char, unsigned char);
extern signed char (*v26) (signed char, unsigned char);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
signed short v29 (unsigned int, signed short, unsigned short, signed short);
signed short (*v30) (unsigned int, signed short, unsigned short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v75 = 1;
unsigned char v74 = 5;
unsigned short v73 = 2;

signed short v29 (unsigned int v76, signed short v77, unsigned short v78, signed short v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = 2;
signed int v81 = -3;
unsigned short v80 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (void)
{
{
for (;;) {
unsigned int v85 = 7U;
unsigned short v84 = 3;
unsigned int v83 = 0U;
trace++;
switch (trace)
{
case 7: 
return 1U;
case 9: 
{
unsigned char v86;
signed int v87;
v86 = 1 + 4;
v87 = v27 (v86);
history[history_index++] = (int)v87;
}
break;
case 11: 
return v85;
default: abort ();
}
}
}
}

unsigned short v1 (signed char v88, signed int v89, signed char v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = -4;
signed int v92 = -4;
unsigned char v91 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v94;
signed int v95;
v94 = -1 + -3;
v95 = v21 (v94);
history[history_index++] = (int)v95;
}
break;
case 2: 
{
signed int v96;
signed char v97;
signed int v98;
v96 = v89 - v92;
v97 = 2 + v88;
v98 = v3 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 16: 
return 0;
default: abort ();
}
}
}
}
