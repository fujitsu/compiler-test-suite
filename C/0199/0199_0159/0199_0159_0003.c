#include <stdlib.h>
extern unsigned short v1 (unsigned int);
extern unsigned short (*v2) (unsigned int);
extern unsigned char v3 (unsigned short);
extern unsigned char (*v4) (unsigned short);
extern unsigned short v5 (signed char, signed short);
extern unsigned short (*v6) (signed char, signed short);
extern unsigned int v7 (unsigned char, unsigned int, signed char);
extern unsigned int (*v8) (unsigned char, unsigned int, signed char);
void v9 (unsigned char, unsigned int, signed short, signed char);
void (*v10) (unsigned char, unsigned int, signed short, signed char) = v9;
extern void v11 (signed short, signed char, signed char);
extern void (*v12) (signed short, signed char, signed char);
extern unsigned int v13 (signed short);
extern unsigned int (*v14) (signed short);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern unsigned int v19 (unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned char);
void v21 (signed int, signed int, unsigned short);
void (*v22) (signed int, signed int, unsigned short) = v21;
extern signed short v23 (unsigned char, signed char, signed int, signed char);
extern signed short (*v24) (unsigned char, signed char, signed int, signed char);
extern signed char v25 (unsigned short, unsigned char, unsigned int, unsigned short);
extern signed char (*v26) (unsigned short, unsigned char, unsigned int, unsigned short);
extern signed int v27 (unsigned short, unsigned char);
extern signed int (*v28) (unsigned short, unsigned char);
extern signed int v29 (unsigned short, unsigned short, signed char);
extern signed int (*v30) (unsigned short, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v96 = 7;
signed int v95 = 1;
signed int v94 = -2;

void v21 (signed int v97, signed int v98, unsigned short v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed int v102 = 0;
unsigned int v101 = 5U;
signed short v100 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned char v105 = 2;
signed short v104 = 1;
unsigned char v103 = 7;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v106;
unsigned char v107;
signed int v108;
v106 = 2 - 7;
v107 = 1 + v103;
v108 = v27 (v106, v107);
history[history_index++] = (int)v108;
}
break;
case 3: 
{
unsigned short v109;
unsigned char v110;
signed int v111;
v109 = 7 - 1;
v110 = 5 + v103;
v111 = v27 (v109, v110);
history[history_index++] = (int)v111;
}
break;
case 5: 
{
unsigned short v112;
unsigned char v113;
signed int v114;
v112 = 1 - 4;
v113 = 2 - v105;
v114 = v27 (v112, v113);
history[history_index++] = (int)v114;
}
break;
case 7: 
{
unsigned short v115;
unsigned char v116;
signed int v117;
v115 = 1 + 1;
v116 = v105 + v103;
v117 = v27 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 9: 
return v105;
case 11: 
return v103;
default: abort ();
}
}
}
}

void v9 (unsigned char v118, unsigned int v119, signed short v120, signed char v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned int v124 = 5U;
unsigned short v123 = 6;
signed short v122 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
