#include <stdlib.h>
extern signed char v1 (unsigned short, unsigned char, signed int, unsigned short);
extern signed char (*v2) (unsigned short, unsigned char, signed int, unsigned short);
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
extern signed char v5 (signed int, unsigned char);
extern signed char (*v6) (signed int, unsigned char);
extern signed short v7 (unsigned short, signed char, unsigned short);
extern signed short (*v8) (unsigned short, signed char, unsigned short);
extern unsigned char v9 (unsigned char, signed short, signed int);
extern unsigned char (*v10) (unsigned char, signed short, signed int);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
signed int v13 (unsigned int, signed short, unsigned short, unsigned int);
signed int (*v14) (unsigned int, signed short, unsigned short, unsigned int) = v13;
extern signed char v15 (unsigned char, unsigned int);
extern signed char (*v16) (unsigned char, unsigned int);
extern unsigned short v17 (unsigned int, unsigned int, unsigned char);
extern unsigned short (*v18) (unsigned int, unsigned int, unsigned char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
signed char v23 (void);
signed char (*v24) (void) = v23;
unsigned char v25 (signed int, signed int, signed short);
unsigned char (*v26) (signed int, signed int, signed short) = v25;
extern signed int v27 (signed char);
extern signed int (*v28) (signed char);
extern signed int v29 (signed char, signed int, signed short);
extern signed int (*v30) (signed char, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v101 = 7;
unsigned int v100 = 7U;
signed int v99 = -1;

unsigned char v25 (signed int v102, signed int v103, signed short v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = 1;
signed char v106 = -2;
unsigned int v105 = 5U;
trace++;
switch (trace)
{
case 5: 
{
signed char v108;
signed int v109;
v108 = -1 + -3;
v109 = v27 (v108);
history[history_index++] = (int)v109;
}
break;
case 7: 
{
unsigned char v110;
unsigned int v111;
signed char v112;
v110 = 4 - 0;
v111 = 3U + v105;
v112 = v15 (v110, v111);
history[history_index++] = (int)v112;
}
break;
case 9: 
{
signed char v113;
signed int v114;
v113 = -4 + v106;
v114 = v27 (v113);
history[history_index++] = (int)v114;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}

signed char v23 (void)
{
{
for (;;) {
unsigned int v117 = 5U;
signed short v116 = -4;
unsigned int v115 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned int v118, signed short v119, unsigned short v120, unsigned int v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 5;
unsigned char v123 = 4;
signed short v122 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
