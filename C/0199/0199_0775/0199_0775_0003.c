#include <stdlib.h>
signed short v1 (signed short, signed int, unsigned short, signed short);
signed short (*v2) (signed short, signed int, unsigned short, signed short) = v1;
extern void v3 (signed short);
extern void (*v4) (signed short);
signed char v5 (unsigned char, signed int, unsigned int);
signed char (*v6) (unsigned char, signed int, unsigned int) = v5;
extern signed int v7 (unsigned int, unsigned int, signed char, signed int);
extern signed int (*v8) (unsigned int, unsigned int, signed char, signed int);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed short v13 (unsigned int, signed short, unsigned int, signed int);
extern signed short (*v14) (unsigned int, signed short, unsigned int, signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern void v21 (unsigned int, signed char);
extern void (*v22) (unsigned int, signed char);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
signed short v27 (signed int, unsigned int, unsigned char, unsigned short);
signed short (*v28) (signed int, unsigned int, unsigned char, unsigned short) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v98 = -2;
signed short v97 = -1;
unsigned int v96 = 5U;

signed short v27 (signed int v99, unsigned int v100, unsigned char v101, unsigned short v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed int v105 = -2;
signed int v104 = -3;
signed char v103 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned char v106, signed int v107, unsigned int v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = -1;
unsigned char v110 = 0;
signed char v109 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v112, signed int v113, unsigned short v114, signed short v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 2;
signed int v117 = 1;
signed short v116 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed char v119;
signed short v120;
v119 = 1 + 0;
v120 = v9 (v119);
history[history_index++] = (int)v120;
}
break;
case 2: 
{
signed char v121;
signed short v122;
v121 = -4 + 2;
v122 = v9 (v121);
history[history_index++] = (int)v122;
}
break;
case 14: 
return v112;
default: abort ();
}
}
}
}
