#include <stdlib.h>
extern signed int v1 (signed short, signed short);
extern signed int (*v2) (signed short, signed short);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned short v7 (unsigned short, unsigned int, unsigned char, signed int);
extern unsigned short (*v8) (unsigned short, unsigned int, unsigned char, signed int);
extern signed short v9 (signed short);
extern signed short (*v10) (signed short);
void v11 (signed int);
void (*v12) (signed int) = v11;
extern void v13 (unsigned short, signed char, signed int);
extern void (*v14) (unsigned short, signed char, signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
signed short v17 (unsigned short, signed short, signed int);
signed short (*v18) (unsigned short, signed short, signed int) = v17;
extern signed char v19 (unsigned int, unsigned int, signed char, unsigned int);
extern signed char (*v20) (unsigned int, unsigned int, signed char, unsigned int);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern void v23 (signed char);
extern void (*v24) (signed char);
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
signed char v27 (signed short, unsigned int, signed int, signed char);
signed char (*v28) (signed short, unsigned int, signed int, signed char) = v27;
extern signed int v29 (signed short, signed int, signed char);
extern signed int (*v30) (signed short, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v97 = 3;
signed char v96 = -2;
signed short v95 = -4;

signed char v27 (signed short v98, unsigned int v99, signed int v100, signed char v101)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned char v104 = 0;
unsigned char v103 = 0;
signed char v102 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
signed char v107 = -4;
unsigned int v106 = 3U;
signed int v105 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v108;
signed char v109;
signed int v110;
v108 = 3 - 5;
v109 = v107 + -4;
v110 = -4 + 2;
v13 (v108, v109, v110);
}
break;
case 7: 
return 1;
case 9: 
{
unsigned short v111;
signed char v112;
signed int v113;
v111 = 4 - 6;
v112 = 0 - 1;
v113 = 1 + v105;
v13 (v111, v112, v113);
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

signed short v17 (unsigned short v114, signed short v115, signed int v116)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed short v119 = 1;
signed char v118 = -1;
signed char v117 = 0;
trace++;
switch (trace)
{
case 11: 
return v115;
default: abort ();
}
}
}
}

void v11 (signed int v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 5;
signed char v122 = -3;
signed char v121 = 3;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}
