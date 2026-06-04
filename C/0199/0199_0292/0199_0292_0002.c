#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed int v5 (signed char, unsigned char, signed char);
extern signed int (*v6) (signed char, unsigned char, signed char);
extern unsigned char v7 (signed char, signed short);
extern unsigned char (*v8) (signed char, signed short);
extern signed short v9 (signed int, unsigned char, signed char);
extern signed short (*v10) (signed int, unsigned char, signed char);
extern signed short v11 (unsigned char, unsigned int, signed char, unsigned char);
extern signed short (*v12) (unsigned char, unsigned int, signed char, unsigned char);
extern unsigned char v13 (unsigned int);
extern unsigned char (*v14) (unsigned int);
extern void v15 (unsigned char, signed short, unsigned char, unsigned char);
extern void (*v16) (unsigned char, signed short, unsigned char, unsigned char);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern signed short v19 (signed short, signed int, signed char, signed int);
extern signed short (*v20) (signed short, signed int, signed char, signed int);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
signed short v23 (unsigned int, unsigned int, signed int, signed short);
signed short (*v24) (unsigned int, unsigned int, signed int, signed short) = v23;
static signed char v25 (unsigned char, signed int, unsigned short, unsigned short);
static signed char (*v26) (unsigned char, signed int, unsigned short, unsigned short) = v25;
extern unsigned char v27 (signed char, signed char);
extern unsigned char (*v28) (signed char, signed char);
extern unsigned short v29 (signed int, signed short);
extern unsigned short (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v77 = -3;
unsigned char v76 = 7;
unsigned short v75 = 4;

static signed char v25 (unsigned char v78, signed int v79, unsigned short v80, unsigned short v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed short v84 = 0;
unsigned char v83 = 7;
signed short v82 = 2;
trace++;
switch (trace)
{
case 8: 
return -2;
case 10: 
return -3;
default: abort ();
}
}
}
}

signed short v23 (unsigned int v85, unsigned int v86, signed int v87, signed short v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = -4;
unsigned short v90 = 0;
signed short v89 = -2;
trace++;
switch (trace)
{
case 4: 
return 1;
case 7: 
{
unsigned char v92;
signed int v93;
unsigned short v94;
unsigned short v95;
signed char v96;
v92 = 1 - 0;
v93 = v91 + -4;
v94 = 5 + 0;
v95 = v90 - v90;
v96 = v25 (v92, v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 9: 
{
unsigned char v97;
signed int v98;
unsigned short v99;
unsigned short v100;
signed char v101;
v97 = 6 - 4;
v98 = v91 + v91;
v99 = v90 + 4;
v100 = 3 + v90;
v101 = v25 (v97, v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 11: 
return v89;
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned char v104 = 3;
unsigned short v103 = 0;
signed char v102 = -1;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v105;
unsigned int v106;
signed int v107;
signed short v108;
signed short v109;
v105 = 5U - 5U;
v106 = 7U - 0U;
v107 = -1 - 1;
v108 = -4 + 3;
v109 = v23 (v105, v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 5: 
{
signed char v110;
unsigned short v111;
v110 = -2 - v102;
v111 = v21 (v110);
history[history_index++] = (int)v111;
}
break;
case 13: 
return v102;
default: abort ();
}
}
}
}
