#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed int, signed short, signed short);
extern unsigned char (*v2) (unsigned char, signed int, signed short, signed short);
extern signed int v3 (unsigned short, signed int, unsigned short);
extern signed int (*v4) (unsigned short, signed int, unsigned short);
unsigned int v5 (signed short, unsigned char);
unsigned int (*v6) (signed short, unsigned char) = v5;
extern signed char v7 (unsigned char, signed short, signed int);
extern signed char (*v8) (unsigned char, signed short, signed int);
extern void v9 (signed int);
extern void (*v10) (signed int);
void v11 (unsigned short, signed short, unsigned char);
void (*v12) (unsigned short, signed short, unsigned char) = v11;
extern unsigned short v13 (unsigned int, signed char, signed char, unsigned short);
extern unsigned short (*v14) (unsigned int, signed char, signed char, unsigned short);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (unsigned char, signed int, unsigned short, signed int);
extern unsigned char (*v20) (unsigned char, signed int, unsigned short, signed int);
extern unsigned int v21 (signed int, signed short, unsigned int);
extern unsigned int (*v22) (signed int, signed short, unsigned int);
extern signed char v23 (unsigned char, signed int, signed char);
extern signed char (*v24) (unsigned char, signed int, signed char);
extern unsigned int v25 (unsigned int);
extern unsigned int (*v26) (unsigned int);
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
unsigned char v29 (unsigned int, signed short, signed int);
unsigned char (*v30) (unsigned int, signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v99 = 2;
signed short v98 = -3;
signed char v97 = 0;

unsigned char v29 (unsigned int v100, signed short v101, signed int v102)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed int v105 = -4;
unsigned short v104 = 7;
unsigned char v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned short v106, signed short v107, unsigned char v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = -1;
signed short v110 = 0;
signed int v109 = 1;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v112;
signed char v113;
v112 = 3 + 7;
v113 = v27 (v112);
history[history_index++] = (int)v113;
}
break;
case 4: 
return;
case 6: 
{
unsigned char v114;
signed int v115;
signed char v116;
signed char v117;
v114 = v108 - 6;
v115 = v109 + v109;
v116 = v111 + 3;
v117 = v23 (v114, v115, v116);
history[history_index++] = (int)v117;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

unsigned int v5 (signed short v118, unsigned char v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned char v122 = 0;
unsigned short v121 = 2;
signed char v120 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
