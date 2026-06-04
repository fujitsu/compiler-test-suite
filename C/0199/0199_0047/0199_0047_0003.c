#include <stdlib.h>
signed short v1 (unsigned char, signed char, signed int, signed short);
signed short (*v2) (unsigned char, signed char, signed int, signed short) = v1;
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern unsigned int v5 (signed int, unsigned char);
extern unsigned int (*v6) (signed int, unsigned char);
extern unsigned char v7 (signed short, signed int);
extern unsigned char (*v8) (signed short, signed int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (signed short, signed short, signed short);
extern signed short (*v12) (signed short, signed short, signed short);
signed int v13 (unsigned char);
signed int (*v14) (unsigned char) = v13;
extern unsigned int v15 (unsigned short, signed short, signed short);
extern unsigned int (*v16) (unsigned short, signed short, signed short);
extern void v17 (signed int, unsigned char);
extern void (*v18) (signed int, unsigned char);
extern signed short v19 (unsigned short);
extern signed short (*v20) (unsigned short);
extern signed short v21 (void);
extern signed short (*v22) (void);
static signed short v23 (signed int, signed int, signed short, unsigned short);
static signed short (*v24) (signed int, signed int, signed short, unsigned short) = v23;
extern unsigned short v25 (signed short, unsigned int, unsigned char);
extern unsigned short (*v26) (signed short, unsigned int, unsigned char);
extern signed short v27 (signed char, unsigned int, unsigned int, unsigned short);
extern signed short (*v28) (signed char, unsigned int, unsigned int, unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v84 = 2;
signed short v83 = 1;
unsigned short v82 = 5;

static signed short v23 (signed int v85, signed int v86, signed short v87, unsigned short v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed int v91 = -3;
unsigned int v90 = 4U;
signed char v89 = -3;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v92;
v92 = v29 ();
history[history_index++] = (int)v92;
}
break;
case 3: 
{
unsigned int v93;
v93 = v29 ();
history[history_index++] = (int)v93;
}
break;
case 5: 
{
unsigned int v94;
v94 = v29 ();
history[history_index++] = (int)v94;
}
break;
case 7: 
{
unsigned int v95;
v95 = v29 ();
history[history_index++] = (int)v95;
}
break;
case 9: 
{
unsigned int v96;
v96 = v29 ();
history[history_index++] = (int)v96;
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}

signed int v13 (unsigned char v97)
{
history[history_index++] = (int)v97;
{
for (;;) {
unsigned char v100 = 7;
unsigned short v99 = 7;
signed char v98 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (unsigned char v101, signed char v102, signed int v103, signed short v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned short v107 = 0;
signed int v106 = 2;
signed int v105 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed int v108;
signed int v109;
signed short v110;
unsigned short v111;
signed short v112;
v108 = 3 + v106;
v109 = v106 + v103;
v110 = -2 + 3;
v111 = v107 + 4;
v112 = v23 (v108, v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
