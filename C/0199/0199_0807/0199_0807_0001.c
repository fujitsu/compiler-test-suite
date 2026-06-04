#include <stdlib.h>
unsigned int v3 (unsigned short, unsigned char, signed int, signed char);
unsigned int (*v4) (unsigned short, unsigned char, signed int, signed char) = v3;
extern unsigned char v5 (unsigned char, signed char, signed int, unsigned short);
extern unsigned char (*v6) (unsigned char, signed char, signed int, unsigned short);
extern signed short v7 (signed char);
extern signed short (*v8) (signed char);
extern unsigned short v9 (unsigned int, signed int);
extern unsigned short (*v10) (unsigned int, signed int);
extern void v11 (void);
extern void (*v12) (void);
extern signed int v13 (unsigned char, unsigned char, signed int, signed short);
extern signed int (*v14) (unsigned char, unsigned char, signed int, signed short);
signed int v15 (signed int, unsigned int);
signed int (*v16) (signed int, unsigned int) = v15;
extern unsigned char v17 (signed short, signed short, unsigned short);
extern unsigned char (*v18) (signed short, signed short, unsigned short);
extern signed char v19 (signed char, signed short);
extern signed char (*v20) (signed char, signed short);
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern unsigned short v23 (unsigned int, signed int, signed short);
extern unsigned short (*v24) (unsigned int, signed int, signed short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (signed short, signed short);
extern signed short (*v28) (signed short, signed short);
signed int v29 (unsigned int, unsigned short, unsigned char, unsigned short);
signed int (*v30) (unsigned int, unsigned short, unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v70 = 2;
unsigned int v69 = 5U;
unsigned char v68 = 6;

signed int v29 (unsigned int v71, unsigned short v72, unsigned char v73, unsigned short v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed int v77 = -2;
signed int v76 = -2;
signed int v75 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed int v78, unsigned int v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 6U;
unsigned int v81 = 1U;
unsigned short v80 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v83, unsigned char v84, signed int v85, signed char v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 1U;
signed char v88 = -2;
unsigned short v87 = 6;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v90;
signed int v91;
signed short v92;
unsigned short v93;
v90 = 2U - v89;
v91 = v85 + -1;
v92 = -4 - -3;
v93 = v23 (v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 7: 
{
unsigned int v94;
signed int v95;
unsigned short v96;
v94 = 1U + v89;
v95 = -3 - v85;
v96 = v9 (v94, v95);
history[history_index++] = (int)v96;
}
break;
case 9: 
{
unsigned int v97;
signed int v98;
signed short v99;
unsigned short v100;
v97 = 6U - v89;
v98 = 2 - -1;
v99 = -2 - -4;
v100 = v23 (v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 11: 
return v89;
default: abort ();
}
}
}
}
