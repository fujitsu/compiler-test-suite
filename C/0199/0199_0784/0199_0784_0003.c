#include <stdlib.h>
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern signed short v5 (signed short, signed char, unsigned short);
extern signed short (*v6) (signed short, signed char, unsigned short);
unsigned short v7 (signed short);
unsigned short (*v8) (signed short) = v7;
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern signed short v13 (signed short, unsigned short, unsigned char);
extern signed short (*v14) (signed short, unsigned short, unsigned char);
unsigned short v15 (signed short, unsigned short, unsigned int);
unsigned short (*v16) (signed short, unsigned short, unsigned int) = v15;
signed int v17 (unsigned int);
signed int (*v18) (unsigned int) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (signed char, unsigned int);
extern signed char (*v22) (signed char, unsigned int);
extern signed char v23 (unsigned char, unsigned char);
extern signed char (*v24) (unsigned char, unsigned char);
extern signed int v25 (signed char, unsigned char, signed short, unsigned char);
extern signed int (*v26) (signed char, unsigned char, signed short, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern void v29 (unsigned short, signed short);
extern void (*v30) (unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v91 = 5;
unsigned char v90 = 7;
unsigned short v89 = 1;

signed int v17 (unsigned int v92)
{
history[history_index++] = (int)v92;
{
for (;;) {
signed int v95 = -2;
signed char v94 = -3;
unsigned int v93 = 5U;
trace++;
switch (trace)
{
case 2: 
{
signed char v96;
unsigned int v97;
signed char v98;
v96 = v94 - v94;
v97 = v92 + 2U;
v98 = v21 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 4: 
{
signed char v99;
unsigned int v100;
signed char v101;
v99 = v94 + 1;
v100 = 7U - 2U;
v101 = v21 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 6: 
{
signed char v102;
unsigned int v103;
signed char v104;
v102 = 3 + 2;
v103 = v92 - v92;
v104 = v21 (v102, v103);
history[history_index++] = (int)v104;
}
break;
case 8: 
{
signed char v105;
unsigned int v106;
signed char v107;
v105 = v94 - -3;
v106 = 7U + v93;
v107 = v21 (v105, v106);
history[history_index++] = (int)v107;
}
break;
case 10: 
return -3;
default: abort ();
}
}
}
}

unsigned short v15 (signed short v108, unsigned short v109, unsigned int v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed char v113 = -3;
unsigned int v112 = 7U;
signed char v111 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed short v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
unsigned int v117 = 0U;
signed int v116 = 3;
signed char v115 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
unsigned char v120 = 6;
signed short v119 = 2;
unsigned int v118 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
