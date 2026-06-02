#include <stdlib.h>
unsigned short v1 (unsigned short, signed int);
unsigned short (*v2) (unsigned short, signed int) = v1;
extern signed int v3 (unsigned short, unsigned short, signed int, unsigned char);
extern signed int (*v4) (unsigned short, unsigned short, signed int, unsigned char);
signed int v5 (unsigned short, unsigned char, unsigned char, signed char);
signed int (*v6) (unsigned short, unsigned char, unsigned char, signed char) = v5;
extern signed short v7 (unsigned char, unsigned short, signed int, signed char);
extern signed short (*v8) (unsigned char, unsigned short, signed int, signed char);
extern unsigned char v9 (signed short, unsigned int, signed char, signed char);
extern unsigned char (*v10) (signed short, unsigned int, signed char, signed char);
extern void v11 (unsigned char, signed short, unsigned short, signed int);
extern void (*v12) (unsigned char, signed short, unsigned short, signed int);
extern signed int v13 (unsigned short, signed short, signed short, unsigned char);
extern signed int (*v14) (unsigned short, signed short, signed short, unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v19 (signed short, signed short);
extern unsigned short (*v20) (signed short, signed short);
extern signed int v21 (unsigned char, unsigned short, signed int, signed char);
extern signed int (*v22) (unsigned char, unsigned short, signed int, signed char);
extern unsigned int v23 (unsigned char);
extern unsigned int (*v24) (unsigned char);
extern signed short v25 (signed short);
extern signed short (*v26) (signed short);
void v27 (signed int, unsigned short);
void (*v28) (signed int, unsigned short) = v27;
extern signed int v29 (unsigned int, unsigned int);
extern signed int (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v92 = 0;
signed char v91 = -3;
unsigned short v90 = 3;

void v27 (signed int v93, unsigned short v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned int v97 = 5U;
signed int v96 = 1;
signed int v95 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned short v98, unsigned char v99, unsigned char v100, signed char v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
signed char v104 = -3;
unsigned short v103 = 7;
unsigned char v102 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v105, signed int v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = 3;
signed int v108 = -2;
signed short v107 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v110;
unsigned short v111;
signed int v112;
unsigned char v113;
signed int v114;
v110 = v105 + v105;
v111 = v105 + v105;
v112 = v108 - v108;
v113 = 0 - 7;
v114 = v3 (v110, v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 9: 
{
unsigned short v115;
unsigned short v116;
signed int v117;
unsigned char v118;
signed int v119;
v115 = 6 - v105;
v116 = 7 + 7;
v117 = v106 - -1;
v118 = 7 + 2;
v119 = v3 (v115, v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 13: 
return v105;
case 16: 
return 0;
default: abort ();
}
}
}
}
