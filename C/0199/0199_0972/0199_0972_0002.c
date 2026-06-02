#include <stdlib.h>
signed int v1 (unsigned int, unsigned int);
signed int (*v2) (unsigned int, unsigned int) = v1;
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern signed int v5 (unsigned int, unsigned short, signed int);
extern signed int (*v6) (unsigned int, unsigned short, signed int);
extern signed char v7 (unsigned int, unsigned char, signed int, signed short);
extern signed char (*v8) (unsigned int, unsigned char, signed int, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v13 (unsigned short, unsigned short);
extern void (*v14) (unsigned short, unsigned short);
extern signed int v15 (signed short, unsigned short, signed short);
extern signed int (*v16) (signed short, unsigned short, signed short);
static unsigned short v17 (unsigned int, signed int, unsigned char, unsigned char);
static unsigned short (*v18) (unsigned int, signed int, unsigned char, unsigned char) = v17;
extern signed short v19 (signed short, signed char, unsigned int);
extern signed short (*v20) (signed short, signed char, unsigned int);
signed int v21 (unsigned char, signed char, unsigned short, unsigned short);
signed int (*v22) (unsigned char, signed char, unsigned short, unsigned short) = v21;
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v77 = 2;
signed int v76 = 3;
unsigned char v75 = 6;

signed int v21 (unsigned char v78, signed char v79, unsigned short v80, unsigned short v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = 0;
signed short v83 = 1;
unsigned short v82 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v17 (unsigned int v85, signed int v86, unsigned char v87, unsigned char v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 6;
unsigned short v90 = 3;
unsigned char v89 = 4;
trace++;
switch (trace)
{
case 3: 
{
signed short v92;
signed char v93;
unsigned int v94;
signed short v95;
v92 = -4 + 3;
v93 = 1 + -1;
v94 = v85 + v85;
v95 = v19 (v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 13: 
return v91;
default: abort ();
}
}
}
}

signed int v1 (unsigned int v96, unsigned int v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 1;
unsigned short v99 = 4;
unsigned short v98 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v101;
unsigned short v102;
v101 = v99 - v99;
v102 = v98 - v99;
v13 (v101, v102);
}
break;
case 2: 
{
unsigned int v103;
signed int v104;
unsigned char v105;
unsigned char v106;
unsigned short v107;
v103 = v97 - v96;
v104 = -4 + 0;
v105 = 3 + 7;
v106 = 2 - 1;
v107 = v17 (v103, v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
