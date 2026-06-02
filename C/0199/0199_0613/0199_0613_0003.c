#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern void v3 (unsigned char, signed int, signed int);
extern void (*v4) (unsigned char, signed int, signed int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (void);
extern signed short (*v10) (void);
signed short v11 (void);
signed short (*v12) (void) = v11;
extern unsigned int v13 (unsigned char, unsigned char, unsigned short);
extern unsigned int (*v14) (unsigned char, unsigned char, unsigned short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed int v17 (unsigned short, signed short);
extern signed int (*v18) (unsigned short, signed short);
extern signed short v19 (signed short, unsigned short, signed short);
extern signed short (*v20) (signed short, unsigned short, signed short);
extern unsigned int v21 (signed char, signed short, signed char);
extern unsigned int (*v22) (signed char, signed short, signed char);
extern unsigned short v23 (signed short);
extern unsigned short (*v24) (signed short);
extern signed short v25 (unsigned int, unsigned char, unsigned char, unsigned int);
extern signed short (*v26) (unsigned int, unsigned char, unsigned char, unsigned int);
void v27 (unsigned short, signed short, signed char, unsigned char);
void (*v28) (unsigned short, signed short, signed char, unsigned char) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v101 = 3;
unsigned short v100 = 1;
signed short v99 = -1;

void v27 (unsigned short v102, signed short v103, signed char v104, unsigned char v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 4U;
signed char v107 = -2;
signed int v106 = -4;
trace++;
switch (trace)
{
case 1: 
return;
case 6: 
return;
case 8: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
signed short v111 = -1;
unsigned char v110 = 2;
unsigned short v109 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
signed char v114 = 1;
signed char v113 = -2;
signed short v112 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v115;
signed short v116;
signed char v117;
unsigned char v118;
v115 = 4 + 0;
v116 = -3 - v112;
v117 = v114 - 1;
v118 = 1 - 6;
v27 (v115, v116, v117, v118);
}
break;
case 2: 
{
unsigned char v119;
v119 = v15 ();
history[history_index++] = (int)v119;
}
break;
case 4: 
{
unsigned char v120;
unsigned char v121;
unsigned short v122;
unsigned int v123;
v120 = 1 + 3;
v121 = 5 - 6;
v122 = 5 + 6;
v123 = v13 (v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
