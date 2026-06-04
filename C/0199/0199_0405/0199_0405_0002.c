#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned int, signed short);
extern unsigned short (*v2) (signed int, unsigned int, signed short);
extern signed int v3 (void);
extern signed int (*v4) (void);
unsigned int v5 (signed int);
unsigned int (*v6) (signed int) = v5;
extern signed short v7 (unsigned short, unsigned short, signed char, signed int);
extern signed short (*v8) (unsigned short, unsigned short, signed char, signed int);
void v9 (signed char);
void (*v10) (signed char) = v9;
signed char v11 (unsigned short, unsigned int, unsigned char);
signed char (*v12) (unsigned short, unsigned int, unsigned char) = v11;
extern signed short v13 (unsigned short, signed int, signed short);
extern signed short (*v14) (unsigned short, signed int, signed short);
extern unsigned char v15 (signed int, unsigned int);
extern unsigned char (*v16) (signed int, unsigned int);
extern unsigned char v17 (unsigned int, unsigned int);
extern unsigned char (*v18) (unsigned int, unsigned int);
extern signed short v19 (unsigned int, unsigned char);
extern signed short (*v20) (unsigned int, unsigned char);
extern unsigned short v21 (signed int, signed char, signed char);
extern unsigned short (*v22) (signed int, signed char, signed char);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern unsigned char v25 (signed short, unsigned int, unsigned short, unsigned short);
extern unsigned char (*v26) (signed short, unsigned int, unsigned short, unsigned short);
extern signed int v27 (unsigned char, signed char, unsigned short, unsigned char);
extern signed int (*v28) (unsigned char, signed char, unsigned short, unsigned char);
unsigned int v29 (signed int, unsigned short, unsigned char, unsigned int);
unsigned int (*v30) (signed int, unsigned short, unsigned char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v94 = -3;
signed short v93 = -2;
signed char v92 = -3;

unsigned int v29 (signed int v95, unsigned short v96, unsigned char v97, unsigned int v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -2;
signed char v100 = -4;
signed short v99 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned short v102, unsigned int v103, unsigned char v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed char v107 = 2;
unsigned short v106 = 1;
signed short v105 = 3;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v108;
unsigned char v109;
signed short v110;
v108 = 4U + v103;
v109 = v104 + 4;
v110 = v19 (v108, v109);
history[history_index++] = (int)v110;
}
break;
case 4: 
{
signed int v111;
unsigned int v112;
unsigned char v113;
v111 = -1 + -4;
v112 = 4U + 5U;
v113 = v15 (v111, v112);
history[history_index++] = (int)v113;
}
break;
case 8: 
return v107;
case 10: 
{
unsigned int v114;
unsigned char v115;
signed short v116;
v114 = v103 - 5U;
v115 = 1 + 7;
v116 = v19 (v114, v115);
history[history_index++] = (int)v116;
}
break;
case 12: 
return 1;
case 14: 
return -2;
default: abort ();
}
}
}
}

void v9 (signed char v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed short v120 = 0;
signed short v119 = 2;
unsigned int v118 = 4U;
trace++;
switch (trace)
{
case 6: 
return;
default: abort ();
}
}
}
}

unsigned int v5 (signed int v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 3;
unsigned char v123 = 1;
unsigned short v122 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
