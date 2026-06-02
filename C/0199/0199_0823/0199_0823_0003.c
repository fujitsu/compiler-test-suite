#include <stdlib.h>
signed char v1 (signed int, signed char, unsigned short);
signed char (*v2) (signed int, signed char, unsigned short) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (signed short, unsigned char, unsigned short);
extern signed short (*v6) (signed short, unsigned char, unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned int v9 (signed char, unsigned short, unsigned char);
extern unsigned int (*v10) (signed char, unsigned short, unsigned char);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern signed short v13 (unsigned char, signed char, signed char);
extern signed short (*v14) (unsigned char, signed char, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
signed int v19 (signed char);
signed int (*v20) (signed char) = v19;
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern unsigned char v23 (signed int, signed int, unsigned int, unsigned char);
extern unsigned char (*v24) (signed int, signed int, unsigned int, unsigned char);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v89 = -4;
signed int v88 = -3;
unsigned char v87 = 6;

unsigned short v21 (void)
{
{
for (;;) {
signed int v92 = -3;
signed short v91 = -2;
unsigned short v90 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed char v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 7U;
signed char v95 = 2;
unsigned char v94 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed int v97, signed char v98, unsigned short v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed int v102 = 3;
signed char v101 = -2;
signed int v100 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed short v103;
unsigned char v104;
unsigned short v105;
signed short v106;
v103 = 0 + 3;
v104 = 1 - 2;
v105 = v99 + v99;
v106 = v5 (v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 2: 
{
signed int v107;
v107 = v15 ();
history[history_index++] = (int)v107;
}
break;
case 4: 
{
signed short v108;
unsigned char v109;
unsigned short v110;
signed short v111;
v108 = -2 - -3;
v109 = 4 + 5;
v110 = 2 + 2;
v111 = v5 (v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 6: 
{
unsigned int v112;
v112 = v29 ();
history[history_index++] = (int)v112;
}
break;
case 8: 
return v101;
case 9: 
{
signed char v113;
v113 = v7 ();
history[history_index++] = (int)v113;
}
break;
case 11: 
return v101;
default: abort ();
}
}
}
}
