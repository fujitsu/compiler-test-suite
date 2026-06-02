#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
static unsigned char v3 (signed char, signed short);
static unsigned char (*v4) (signed char, signed short) = v3;
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
extern unsigned short v7 (signed char, signed int, unsigned char, unsigned short);
extern unsigned short (*v8) (signed char, signed int, unsigned char, unsigned short);
signed int v9 (unsigned int);
signed int (*v10) (unsigned int) = v9;
extern signed short v11 (void);
extern signed short (*v12) (void);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed int v19 (unsigned short, unsigned char);
extern signed int (*v20) (unsigned short, unsigned char);
extern signed int v21 (unsigned int, signed short);
extern signed int (*v22) (unsigned int, signed short);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
unsigned int v25 (unsigned char, signed char);
unsigned int (*v26) (unsigned char, signed char) = v25;
extern signed short v27 (unsigned short, unsigned short);
extern signed short (*v28) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v102 = 5;
unsigned short v101 = 7;
unsigned char v100 = 0;

unsigned int v25 (unsigned char v103, signed char v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned short v107 = 1;
unsigned short v106 = 1;
unsigned char v105 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned int v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -3;
signed short v110 = -3;
signed char v109 = -3;
trace++;
switch (trace)
{
case 8: 
{
signed char v112;
signed short v113;
unsigned char v114;
v112 = 0 - -4;
v113 = 2 - v111;
v114 = v3 (v112, v113);
history[history_index++] = (int)v114;
}
break;
case 10: 
{
signed char v115;
signed short v116;
unsigned char v117;
v115 = 2 - v109;
v116 = v111 - v111;
v117 = v3 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

static unsigned char v3 (signed char v118, signed short v119)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = -2;
unsigned int v121 = 5U;
signed int v120 = 1;
trace++;
switch (trace)
{
case 9: 
return 4;
case 11: 
return 2;
default: abort ();
}
}
}
}
