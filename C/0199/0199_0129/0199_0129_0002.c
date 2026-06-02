#include <stdlib.h>
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
unsigned int v5 (unsigned short, signed char);
unsigned int (*v6) (unsigned short, signed char) = v5;
static signed char v7 (unsigned int);
static signed char (*v8) (unsigned int) = v7;
extern signed short v9 (unsigned int);
extern signed short (*v10) (unsigned int);
unsigned short v11 (signed int);
unsigned short (*v12) (signed int) = v11;
extern signed short v13 (unsigned int, signed short, unsigned short, unsigned short);
extern signed short (*v14) (unsigned int, signed short, unsigned short, unsigned short);
extern unsigned char v15 (unsigned int, unsigned char, signed int);
extern unsigned char (*v16) (unsigned int, unsigned char, signed int);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (signed short, signed char);
extern signed short (*v20) (signed short, signed char);
extern unsigned int v21 (unsigned int, signed short, signed short);
extern unsigned int (*v22) (unsigned int, signed short, signed short);
extern unsigned char v23 (signed char, signed int);
extern unsigned char (*v24) (signed char, signed int);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern unsigned int v27 (signed char, unsigned char, unsigned int, unsigned int);
extern unsigned int (*v28) (signed char, unsigned char, unsigned int, unsigned int);
extern signed short v29 (signed short, signed char);
extern signed short (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v79 = 2;
signed short v78 = -1;
unsigned char v77 = 7;

unsigned short v11 (signed int v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
unsigned char v83 = 7;
signed int v82 = -4;
signed char v81 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v7 (unsigned int v84)
{
history[history_index++] = (int)v84;
{
for (;;) {
unsigned short v87 = 2;
unsigned short v86 = 0;
unsigned short v85 = 4;
trace++;
switch (trace)
{
case 6: 
return -3;
case 8: 
{
signed short v88;
signed char v89;
signed short v90;
v88 = -2 + 2;
v89 = 2 + -1;
v90 = v19 (v88, v89);
history[history_index++] = (int)v90;
}
break;
case 10: 
{
signed short v91;
signed char v92;
signed short v93;
v91 = -4 + 2;
v92 = 2 - -1;
v93 = v19 (v91, v92);
history[history_index++] = (int)v93;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v94, signed char v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = -2;
unsigned char v97 = 4;
signed char v96 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v99;
signed char v100;
signed short v101;
v99 = 0 - 0;
v100 = v96 - v95;
v101 = v29 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 3: 
{
signed short v102;
signed char v103;
signed short v104;
v102 = 3 - 0;
v103 = v96 + v96;
v104 = v29 (v102, v103);
history[history_index++] = (int)v104;
}
break;
case 5: 
{
unsigned int v105;
signed char v106;
v105 = 7U - 3U;
v106 = v7 (v105);
history[history_index++] = (int)v106;
}
break;
case 7: 
{
unsigned int v107;
signed char v108;
v107 = 6U + 2U;
v108 = v7 (v107);
history[history_index++] = (int)v108;
}
break;
case 13: 
return 7U;
default: abort ();
}
}
}
}
