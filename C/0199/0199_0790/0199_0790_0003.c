#include <stdlib.h>
signed int v1 (unsigned int, unsigned short, unsigned char);
signed int (*v2) (unsigned int, unsigned short, unsigned char) = v1;
extern signed char v3 (unsigned short, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char);
extern unsigned int v5 (signed short, unsigned char, unsigned char);
extern unsigned int (*v6) (signed short, unsigned char, unsigned char);
extern unsigned char v7 (unsigned char, signed short, unsigned int);
extern unsigned char (*v8) (unsigned char, signed short, unsigned int);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern signed char v13 (unsigned short, signed short);
extern signed char (*v14) (unsigned short, signed short);
extern signed int v15 (signed short, signed int, signed char, signed short);
extern signed int (*v16) (signed short, signed int, signed char, signed short);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
extern signed short v19 (signed char, signed int);
extern signed short (*v20) (signed char, signed int);
extern signed int v21 (signed char, unsigned char);
extern signed int (*v22) (signed char, unsigned char);
unsigned int v23 (signed int);
unsigned int (*v24) (signed int) = v23;
extern void v25 (unsigned int, unsigned int, unsigned int);
extern void (*v26) (unsigned int, unsigned int, unsigned int);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned char v29 (signed int, signed short);
extern unsigned char (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v104 = -1;
unsigned int v103 = 7U;
unsigned int v102 = 5U;

unsigned int v23 (signed int v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = 2;
unsigned short v107 = 5;
unsigned int v106 = 1U;
trace++;
switch (trace)
{
case 9: 
return v106;
case 11: 
return 7U;
default: abort ();
}
}
}
}

signed int v1 (unsigned int v109, unsigned short v110, unsigned char v111)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed short v114 = 2;
unsigned char v113 = 6;
signed short v112 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v115;
v115 = v11 ();
history[history_index++] = (int)v115;
}
break;
case 2: 
{
signed short v116;
unsigned char v117;
unsigned char v118;
unsigned int v119;
v116 = v112 + -2;
v117 = v113 + 2;
v118 = v113 + 6;
v119 = v5 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 4: 
{
unsigned short v120;
unsigned char v121;
signed char v122;
v120 = v110 + 5;
v121 = v111 + v113;
v122 = v3 (v120, v121);
history[history_index++] = (int)v122;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
