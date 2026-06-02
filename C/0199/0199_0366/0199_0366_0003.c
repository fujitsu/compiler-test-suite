#include <stdlib.h>
extern signed short v1 (signed char, signed short);
extern signed short (*v2) (signed char, signed short);
extern unsigned int v3 (unsigned short, unsigned int, unsigned char);
extern unsigned int (*v4) (unsigned short, unsigned int, unsigned char);
extern void v5 (unsigned char, unsigned char, signed short);
extern void (*v6) (unsigned char, unsigned char, signed short);
unsigned short v7 (unsigned char, unsigned char, signed short);
unsigned short (*v8) (unsigned char, unsigned char, signed short) = v7;
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern signed int v11 (unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned char);
extern unsigned int v13 (signed char, unsigned char, signed int, signed int);
extern unsigned int (*v14) (signed char, unsigned char, signed int, signed int);
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
extern unsigned char v17 (unsigned int, unsigned int, unsigned int);
extern unsigned char (*v18) (unsigned int, unsigned int, unsigned int);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern signed short v21 (unsigned short, signed int, unsigned short);
extern signed short (*v22) (unsigned short, signed int, unsigned short);
unsigned int v23 (signed short);
unsigned int (*v24) (signed short) = v23;
unsigned short v25 (signed int);
unsigned short (*v26) (signed int) = v25;
extern signed int v27 (signed short, signed int, signed short, signed int);
extern signed int (*v28) (signed short, signed int, signed short, signed int);
extern unsigned char v29 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v98 = -2;
unsigned char v97 = 0;
signed int v96 = -3;

unsigned short v25 (signed int v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
signed short v102 = -2;
signed char v101 = 0;
unsigned short v100 = 5;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v103;
unsigned char v104;
signed int v105;
v103 = 2U - 7U;
v104 = 7 + 5;
v105 = v11 (v103, v104);
history[history_index++] = (int)v105;
}
break;
case 6: 
{
unsigned int v106;
unsigned char v107;
signed int v108;
v106 = 4U - 6U;
v107 = 5 - 5;
v108 = v11 (v106, v107);
history[history_index++] = (int)v108;
}
break;
case 8: 
{
unsigned int v109;
unsigned char v110;
signed int v111;
v109 = 0U + 0U;
v110 = 6 + 5;
v111 = v11 (v109, v110);
history[history_index++] = (int)v111;
}
break;
case 10: 
return v100;
case 12: 
return 2;
case 14: 
return 1;
default: abort ();
}
}
}
}

unsigned int v23 (signed short v112)
{
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 5;
unsigned char v114 = 3;
signed short v113 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned char v116, unsigned char v117, signed short v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 5;
unsigned short v120 = 7;
unsigned int v119 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
