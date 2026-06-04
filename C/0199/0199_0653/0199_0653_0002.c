#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed short, signed short, unsigned short);
extern unsigned int (*v2) (unsigned char, signed short, signed short, unsigned short);
extern void v3 (signed short, unsigned char, unsigned short);
extern void (*v4) (signed short, unsigned char, unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
signed int v7 (unsigned int, signed int, signed char, signed char);
signed int (*v8) (unsigned int, signed int, signed char, signed char) = v7;
signed short v9 (unsigned int, unsigned char, unsigned char);
signed short (*v10) (unsigned int, unsigned char, unsigned char) = v9;
extern unsigned char v11 (signed char, unsigned short);
extern unsigned char (*v12) (signed char, unsigned short);
extern void v13 (signed char, signed int);
extern void (*v14) (signed char, signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (signed char, signed int, unsigned int, unsigned char);
extern void (*v18) (signed char, signed int, unsigned int, unsigned char);
signed short v19 (unsigned char);
signed short (*v20) (unsigned char) = v19;
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed short v23 (unsigned short);
extern signed short (*v24) (unsigned short);
extern void v25 (unsigned short, unsigned int, signed int, signed int);
extern void (*v26) (unsigned short, unsigned int, signed int, signed int);
unsigned int v27 (unsigned short, signed short, signed char, signed char);
unsigned int (*v28) (unsigned short, signed short, signed char, signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v79 = 1U;
signed char v78 = -3;
unsigned int v77 = 3U;

unsigned int v27 (unsigned short v80, signed short v81, signed char v82, signed char v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 5;
unsigned short v85 = 5;
unsigned char v84 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned char v87)
{
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = -1;
unsigned int v89 = 0U;
signed char v88 = -3;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v91;
signed short v92;
v91 = 6 + 6;
v92 = v23 (v91);
history[history_index++] = (int)v92;
}
break;
case 7: 
{
unsigned short v93;
signed short v94;
v93 = 2 - 2;
v94 = v23 (v93);
history[history_index++] = (int)v94;
}
break;
case 9: 
{
unsigned short v95;
signed short v96;
v95 = 3 + 1;
v96 = v23 (v95);
history[history_index++] = (int)v96;
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}

signed short v9 (unsigned int v97, unsigned char v98, unsigned char v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 5U;
unsigned int v101 = 6U;
unsigned int v100 = 7U;
trace++;
switch (trace)
{
case 3: 
{
signed char v103;
signed int v104;
v103 = -3 - -1;
v104 = -3 - -3;
v13 (v103, v104);
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

signed int v7 (unsigned int v105, signed int v106, signed char v107, signed char v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned char v111 = 5;
signed char v110 = -4;
unsigned int v109 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
