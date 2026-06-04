#include <stdlib.h>
extern signed int v1 (signed char, signed short, signed short);
extern signed int (*v2) (signed char, signed short, signed short);
extern signed int v3 (signed int, signed int);
extern signed int (*v4) (signed int, signed int);
void v5 (signed short, unsigned char);
void (*v6) (signed short, unsigned char) = v5;
extern unsigned short v7 (unsigned short, signed int, signed int);
extern unsigned short (*v8) (unsigned short, signed int, signed int);
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
void v13 (void);
void (*v14) (void) = v13;
signed int v15 (signed char);
signed int (*v16) (signed char) = v15;
extern unsigned int v17 (unsigned char, unsigned char, unsigned char);
extern unsigned int (*v18) (unsigned char, unsigned char, unsigned char);
extern unsigned short v19 (unsigned char, unsigned int);
extern unsigned short (*v20) (unsigned char, unsigned int);
extern signed short v21 (unsigned short, unsigned char, signed int);
extern signed short (*v22) (unsigned short, unsigned char, signed int);
extern void v23 (unsigned short, unsigned short, unsigned char);
extern void (*v24) (unsigned short, unsigned short, unsigned char);
extern signed int v25 (signed short, signed char, signed short);
extern signed int (*v26) (signed short, signed char, signed short);
extern signed int v27 (unsigned int, signed int, signed int);
extern signed int (*v28) (unsigned int, signed int, signed int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v100 = 2;
unsigned char v99 = 5;
unsigned int v98 = 7U;

signed int v15 (signed char v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 2U;
unsigned short v103 = 4;
unsigned char v102 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
signed int v107 = -4;
signed char v106 = 1;
unsigned int v105 = 0U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v108;
unsigned char v109;
unsigned char v110;
unsigned int v111;
v108 = 4 + 1;
v109 = 1 + 1;
v110 = 7 - 6;
v111 = v17 (v108, v109, v110);
history[history_index++] = (int)v111;
}
break;
case 3: 
{
unsigned char v112;
unsigned char v113;
unsigned char v114;
unsigned int v115;
v112 = 4 + 7;
v113 = 2 + 4;
v114 = 5 + 3;
v115 = v17 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 5: 
{
unsigned char v116;
unsigned char v117;
unsigned char v118;
unsigned int v119;
v116 = 3 - 2;
v117 = 6 + 4;
v118 = 4 + 0;
v119 = v17 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

void v5 (signed short v120, unsigned char v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = 3;
unsigned char v123 = 4;
signed int v122 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
