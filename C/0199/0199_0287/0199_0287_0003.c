#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int, signed char, signed int);
extern signed char (*v2) (unsigned int, unsigned int, signed char, signed int);
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern signed short v5 (signed int, signed short);
extern signed short (*v6) (signed int, signed short);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (signed char);
extern unsigned char (*v12) (signed char);
extern signed int v13 (signed int);
extern signed int (*v14) (signed int);
extern unsigned short v15 (unsigned int, signed short, unsigned short, signed char);
extern unsigned short (*v16) (unsigned int, signed short, unsigned short, signed char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
unsigned char v19 (signed int, unsigned char, signed char, unsigned int);
unsigned char (*v20) (signed int, unsigned char, signed char, unsigned int) = v19;
signed int v21 (signed int, signed char, unsigned char, unsigned char);
signed int (*v22) (signed int, signed char, unsigned char, unsigned char) = v21;
extern unsigned int v23 (unsigned char, unsigned int, unsigned short, signed int);
extern unsigned int (*v24) (unsigned char, unsigned int, unsigned short, signed int);
extern signed short v25 (signed short, unsigned char, signed short, signed int);
extern signed short (*v26) (signed short, unsigned char, signed short, signed int);
void v27 (signed short, signed char, signed int);
void (*v28) (signed short, signed char, signed int) = v27;
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v94 = 0;
unsigned short v93 = 1;
unsigned int v92 = 4U;

void v27 (signed short v95, signed char v96, signed int v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 3U;
signed int v99 = -4;
signed char v98 = -2;
trace++;
switch (trace)
{
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

signed int v21 (signed int v101, signed char v102, unsigned char v103, unsigned char v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 5U;
unsigned short v106 = 2;
unsigned short v105 = 3;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v108;
unsigned int v109;
unsigned short v110;
signed int v111;
unsigned int v112;
v108 = v104 + v104;
v109 = v107 + 3U;
v110 = v105 + 3;
v111 = v101 - v101;
v112 = v23 (v108, v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 4: 
{
unsigned char v113;
unsigned int v114;
unsigned short v115;
signed int v116;
unsigned int v117;
v113 = v103 + v104;
v114 = 2U + v107;
v115 = v106 - v106;
v116 = 1 - 1;
v117 = v23 (v113, v114, v115, v116);
history[history_index++] = (int)v117;
}
break;
case 12: 
return -4;
case 14: 
return v101;
default: abort ();
}
}
}
}

unsigned char v19 (signed int v118, unsigned char v119, signed char v120, unsigned int v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed char v124 = 2;
signed short v123 = 1;
signed short v122 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
unsigned int v127 = 2U;
unsigned int v126 = 0U;
signed short v125 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
