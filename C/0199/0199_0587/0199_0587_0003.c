#include <stdlib.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
extern signed int v3 (signed char, unsigned int, signed short);
extern signed int (*v4) (signed char, unsigned int, signed short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed char v7 (signed int, unsigned char, unsigned int);
extern signed char (*v8) (signed int, unsigned char, unsigned int);
extern unsigned char v9 (unsigned short);
extern unsigned char (*v10) (unsigned short);
signed char v11 (unsigned short);
signed char (*v12) (unsigned short) = v11;
extern unsigned int v13 (unsigned char);
extern unsigned int (*v14) (unsigned char);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
static signed char v17 (unsigned short);
static signed char (*v18) (unsigned short) = v17;
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
extern unsigned short v21 (signed char, signed short);
extern unsigned short (*v22) (signed char, signed short);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed char v25 (signed char, signed short, signed char, unsigned int);
extern signed char (*v26) (signed char, signed short, signed char, unsigned int);
extern unsigned int v27 (unsigned char, signed int, signed char, signed int);
extern unsigned int (*v28) (unsigned char, signed int, signed char, signed int);
static signed int v29 (unsigned char, unsigned short, unsigned short);
static signed int (*v30) (unsigned char, unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v95 = -4;
unsigned int v94 = 6U;
signed int v93 = -1;

static signed int v29 (unsigned char v96, unsigned short v97, unsigned short v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = 2;
unsigned int v100 = 5U;
unsigned char v99 = 1;
trace++;
switch (trace)
{
case 8: 
return -3;
default: abort ();
}
}
}
}

static signed char v17 (unsigned short v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 4;
signed int v104 = 1;
unsigned short v103 = 4;
trace++;
switch (trace)
{
case 10: 
{
signed char v106;
signed short v107;
unsigned short v108;
v106 = -1 + 1;
v107 = -3 + 3;
v108 = v21 (v106, v107);
history[history_index++] = (int)v108;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned int v111 = 6U;
signed short v110 = -2;
unsigned int v109 = 7U;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v112;
unsigned short v113;
unsigned short v114;
signed int v115;
v112 = 7 - 4;
v113 = 2 - 4;
v114 = 0 + 7;
v115 = v29 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 9: 
{
unsigned short v116;
signed char v117;
v116 = 4 + 6;
v117 = v17 (v116);
history[history_index++] = (int)v117;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

signed char v11 (unsigned short v118)
{
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = -4;
signed char v120 = 3;
unsigned int v119 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
