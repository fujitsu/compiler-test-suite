#include <stdlib.h>
void v1 (signed int, signed char);
void (*v2) (signed int, signed char) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern void v5 (signed int);
extern void (*v6) (signed int);
extern void v7 (signed int, signed int, unsigned short, signed char);
extern void (*v8) (signed int, signed int, unsigned short, signed char);
extern unsigned char v9 (unsigned short, signed short, signed int, signed char);
extern unsigned char (*v10) (unsigned short, signed short, signed int, signed char);
signed char v11 (signed int, signed int, signed int);
signed char (*v12) (signed int, signed int, signed int) = v11;
extern signed int v13 (signed char, unsigned int, signed int, unsigned char);
extern signed int (*v14) (signed char, unsigned int, signed int, unsigned char);
extern unsigned short v15 (signed char);
extern unsigned short (*v16) (signed char);
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
extern void v19 (unsigned int, unsigned short, signed char);
extern void (*v20) (unsigned int, unsigned short, signed char);
extern unsigned char v21 (unsigned short, signed char);
extern unsigned char (*v22) (unsigned short, signed char);
extern unsigned int v23 (unsigned int, unsigned short, unsigned short, signed short);
extern unsigned int (*v24) (unsigned int, unsigned short, unsigned short, signed short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (unsigned short, signed char, signed char, unsigned int);
extern void (*v28) (unsigned short, signed char, signed char, unsigned int);
extern void v29 (unsigned short, signed char, unsigned int, signed int);
extern void (*v30) (unsigned short, signed char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v95 = 2;
signed short v94 = -1;
unsigned short v93 = 7;

signed char v11 (signed int v96, signed int v97, signed int v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed int v101 = 3;
signed int v100 = -4;
signed char v99 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed int v102, signed char v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = -3;
signed char v105 = -2;
signed int v104 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v107;
signed int v108;
unsigned short v109;
signed char v110;
v107 = v104 + v104;
v108 = v102 + v102;
v109 = 2 - 2;
v110 = v105 - v105;
v7 (v107, v108, v109, v110);
}
break;
case 2: 
{
signed int v111;
v111 = v25 ();
history[history_index++] = (int)v111;
}
break;
case 4: 
{
unsigned int v112;
unsigned short v113;
signed char v114;
v112 = 2U - 5U;
v113 = 1 - 5;
v114 = v105 - v105;
v19 (v112, v113, v114);
}
break;
case 6: 
{
signed char v115;
unsigned short v116;
v115 = -4 + -3;
v116 = v15 (v115);
history[history_index++] = (int)v116;
}
break;
case 8: 
{
signed short v117;
v117 = v3 ();
history[history_index++] = (int)v117;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
