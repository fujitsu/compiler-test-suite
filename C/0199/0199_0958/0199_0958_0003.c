#include <stdlib.h>
extern unsigned char v3 (signed char);
extern unsigned char (*v4) (signed char);
void v5 (void);
void (*v6) (void) = v5;
unsigned int v7 (void);
unsigned int (*v8) (void) = v7;
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (unsigned int);
extern void (*v14) (unsigned int);
extern signed char v15 (signed int, signed short, signed int);
extern signed char (*v16) (signed int, signed short, signed int);
extern void v17 (signed char, signed char, signed char);
extern void (*v18) (signed char, signed char, signed char);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern unsigned char v23 (signed char, signed int);
extern unsigned char (*v24) (signed char, signed int);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
extern signed int v27 (signed short, unsigned int);
extern signed int (*v28) (signed short, unsigned int);
extern signed char v29 (signed char);
extern signed char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v104 = 3;
signed char v103 = 3;
unsigned char v102 = 2;

unsigned int v7 (void)
{
{
for (;;) {
unsigned int v107 = 4U;
unsigned short v106 = 4;
signed char v105 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed char v108;
signed char v109;
signed char v110;
v108 = v105 - v105;
v109 = v105 - 3;
v110 = -3 + -4;
v17 (v108, v109, v110);
}
break;
case 3: 
{
signed char v111;
signed char v112;
signed char v113;
v111 = 3 + v105;
v112 = v105 - -4;
v113 = 0 - 2;
v17 (v111, v112, v113);
}
break;
case 5: 
{
signed char v114;
signed int v115;
unsigned char v116;
v114 = v105 - 2;
v115 = 0 + 2;
v116 = v23 (v114, v115);
history[history_index++] = (int)v116;
}
break;
case 7: 
return v107;
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
signed int v119 = -1;
unsigned char v118 = 7;
signed int v117 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
