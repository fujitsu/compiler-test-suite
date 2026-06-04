#include <stdlib.h>
extern void v3 (signed int);
extern void (*v4) (signed int);
extern void v5 (signed int, unsigned int, signed char, unsigned char);
extern void (*v6) (signed int, unsigned int, signed char, unsigned char);
extern signed int v7 (signed char, signed short, signed int, signed char);
extern signed int (*v8) (signed char, signed short, signed int, signed char);
unsigned char v9 (signed short);
unsigned char (*v10) (signed short) = v9;
signed char v13 (unsigned short, signed short);
signed char (*v14) (unsigned short, signed short) = v13;
extern unsigned short v15 (signed int, signed char);
extern unsigned short (*v16) (signed int, signed char);
extern signed int v17 (unsigned int, signed short);
extern signed int (*v18) (unsigned int, signed short);
extern signed int v19 (unsigned char, signed int, unsigned int, unsigned int);
extern signed int (*v20) (unsigned char, signed int, unsigned int, unsigned int);
void v21 (void);
void (*v22) (void) = v21;
unsigned int v23 (unsigned short, signed short);
unsigned int (*v24) (unsigned short, signed short) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern void v29 (unsigned short, signed short, signed short, unsigned char);
extern void (*v30) (unsigned short, signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v84 = 0;
signed int v83 = 1;
unsigned int v82 = 4U;

unsigned int v23 (unsigned short v85, signed short v86)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = 0;
signed int v88 = 1;
signed short v87 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (void)
{
{
for (;;) {
unsigned int v92 = 2U;
unsigned int v91 = 0U;
signed short v90 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned short v93, signed short v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned char v97 = 1;
unsigned int v96 = 0U;
unsigned short v95 = 7;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v98;
signed short v99;
signed short v100;
unsigned char v101;
v98 = v95 - v93;
v99 = -4 + v94;
v100 = v94 + v94;
v101 = v97 + v97;
v29 (v98, v99, v100, v101);
}
break;
case 6: 
{
unsigned short v102;
signed short v103;
signed short v104;
unsigned char v105;
v102 = v95 - v93;
v103 = v94 - v94;
v104 = v94 + v94;
v105 = 2 - 3;
v29 (v102, v103, v104, v105);
}
break;
case 8: 
{
unsigned short v106;
signed short v107;
signed short v108;
unsigned char v109;
v106 = v95 + 0;
v107 = -3 - v94;
v108 = -4 - v94;
v109 = 4 - 4;
v29 (v106, v107, v108, v109);
}
break;
case 10: 
{
unsigned short v110;
signed short v111;
signed short v112;
unsigned char v113;
v110 = v95 - v95;
v111 = v94 + v94;
v112 = v94 - v94;
v113 = v97 + v97;
v29 (v110, v111, v112, v113);
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}

unsigned char v9 (signed short v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = -4;
unsigned char v116 = 1;
unsigned char v115 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
