#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
unsigned int v3 (signed short, unsigned short);
unsigned int (*v4) (signed short, unsigned short) = v3;
extern signed short v5 (signed short, signed short, signed int, unsigned short);
extern signed short (*v6) (signed short, signed short, signed int, unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed short v9 (signed int, signed short, signed short);
extern signed short (*v10) (signed int, signed short, signed short);
extern signed short v11 (signed short, signed short);
extern signed short (*v12) (signed short, signed short);
extern unsigned short v13 (unsigned int, signed short);
extern unsigned short (*v14) (unsigned int, signed short);
extern signed short v15 (unsigned char, signed int, unsigned short);
extern signed short (*v16) (unsigned char, signed int, unsigned short);
void v17 (unsigned int, unsigned int);
void (*v18) (unsigned int, unsigned int) = v17;
extern signed char v19 (signed int, signed int, unsigned int);
extern signed char (*v20) (signed int, signed int, unsigned int);
unsigned int v21 (signed int);
unsigned int (*v22) (signed int) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
void v25 (unsigned int, signed int);
void (*v26) (unsigned int, signed int) = v25;
unsigned int v27 (signed short, signed int, signed short, signed short);
unsigned int (*v28) (signed short, signed int, signed short, signed short) = v27;
extern unsigned int v29 (signed char, unsigned char, unsigned short);
extern unsigned int (*v30) (signed char, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v76 = 0;
unsigned short v75 = 3;
signed int v74 = 2;

unsigned int v27 (signed short v77, signed int v78, signed short v79, signed short v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = -2;
unsigned char v82 = 3;
unsigned short v81 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned int v84, signed int v85)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed int v88 = -3;
unsigned short v87 = 6;
signed int v86 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed int v89)
{
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 4;
signed int v91 = -4;
unsigned int v90 = 4U;
trace++;
switch (trace)
{
case 2: 
return 5U;
default: abort ();
}
}
}
}

void v17 (unsigned int v93, unsigned int v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = -4;
unsigned short v96 = 7;
unsigned int v95 = 3U;
trace++;
switch (trace)
{
case 4: 
{
signed char v98;
unsigned char v99;
unsigned short v100;
unsigned int v101;
v98 = 1 - 1;
v99 = 4 + 5;
v100 = v96 - 5;
v101 = v29 (v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 6: 
{
signed char v102;
unsigned char v103;
unsigned short v104;
unsigned int v105;
v102 = 3 + -3;
v103 = 7 + 2;
v104 = 4 - v96;
v105 = v29 (v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 8: 
return;
case 10: 
{
signed char v106;
unsigned char v107;
unsigned short v108;
unsigned int v109;
v106 = 1 + -4;
v107 = 0 + 1;
v108 = v96 - v96;
v109 = v29 (v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned int v3 (signed short v110, unsigned short v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = 1;
signed char v113 = 2;
signed int v112 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
