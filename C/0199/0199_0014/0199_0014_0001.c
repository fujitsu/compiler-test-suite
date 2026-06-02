#include <stdlib.h>
unsigned int v1 (unsigned char, unsigned short, signed short, unsigned short);
unsigned int (*v2) (unsigned char, unsigned short, signed short, unsigned short) = v1;
extern void v3 (unsigned short, signed char, signed int);
extern void (*v4) (unsigned short, signed char, signed int);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed short v7 (signed short, signed int);
extern signed short (*v8) (signed short, signed int);
extern unsigned int v9 (signed short, signed char, unsigned int);
extern unsigned int (*v10) (signed short, signed char, unsigned int);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
unsigned short v13 (signed int, unsigned short, unsigned int, unsigned int);
unsigned short (*v14) (signed int, unsigned short, unsigned int, unsigned int) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed int v19 (unsigned short, signed int, unsigned short, unsigned char);
extern signed int (*v20) (unsigned short, signed int, unsigned short, unsigned char);
extern unsigned char v21 (unsigned char, signed int);
extern unsigned char (*v22) (unsigned char, signed int);
extern signed int v23 (unsigned char, unsigned short, unsigned int, unsigned short);
extern signed int (*v24) (unsigned char, unsigned short, unsigned int, unsigned short);
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
extern void v27 (signed char);
extern void (*v28) (signed char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v75 = 5;
signed int v74 = 2;
unsigned short v73 = 2;

unsigned short v13 (signed int v76, unsigned short v77, unsigned int v78, unsigned int v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = -2;
signed short v81 = -4;
unsigned int v80 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v83, unsigned short v84, signed short v85, unsigned short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 2;
unsigned int v88 = 2U;
signed short v87 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed char v90;
v90 = v5 ();
history[history_index++] = (int)v90;
}
break;
case 2: 
{
unsigned char v91;
unsigned short v92;
unsigned int v93;
unsigned short v94;
signed int v95;
v91 = 0 - 5;
v92 = v89 - v89;
v93 = v88 + v88;
v94 = v89 - v84;
v95 = v23 (v91, v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 4: 
{
signed short v96;
signed int v97;
signed short v98;
v96 = v85 - v85;
v97 = 0 + 2;
v98 = v7 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 12: 
return v88;
default: abort ();
}
}
}
}
