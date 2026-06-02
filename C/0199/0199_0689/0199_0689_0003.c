#include <stdlib.h>
unsigned short v3 (unsigned char, unsigned char, unsigned char);
unsigned short (*v4) (unsigned char, unsigned char, unsigned char) = v3;
extern unsigned int v5 (unsigned short, signed char);
extern unsigned int (*v6) (unsigned short, signed char);
extern signed int v7 (signed char, signed short);
extern signed int (*v8) (signed char, signed short);
extern unsigned int v9 (unsigned char, unsigned char);
extern unsigned int (*v10) (unsigned char, unsigned char);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
extern unsigned char v13 (signed int, unsigned int);
extern unsigned char (*v14) (signed int, unsigned int);
extern signed int v15 (signed short, signed int);
extern signed int (*v16) (signed short, signed int);
static unsigned int v17 (void);
static unsigned int (*v18) (void) = v17;
extern signed short v19 (signed int);
extern signed short (*v20) (signed int);
extern unsigned char v21 (signed char, unsigned short, signed int, signed char);
extern unsigned char (*v22) (signed char, unsigned short, signed int, signed char);
extern signed char v23 (unsigned int);
extern signed char (*v24) (unsigned int);
extern void v25 (unsigned char, signed int);
extern void (*v26) (unsigned char, signed int);
extern unsigned short v27 (unsigned char, signed int, unsigned char, signed short);
extern unsigned short (*v28) (unsigned char, signed int, unsigned char, signed short);
static signed char v29 (unsigned int, unsigned int, unsigned short);
static signed char (*v30) (unsigned int, unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v92 = 6;
signed int v91 = -3;
signed int v90 = -3;

static signed char v29 (unsigned int v93, unsigned int v94, unsigned short v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed char v98 = -1;
signed int v97 = 2;
unsigned char v96 = 6;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v99;
signed char v100;
unsigned int v101;
v99 = 5 + v95;
v100 = 0 + v98;
v101 = v5 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 9: 
return -4;
default: abort ();
}
}
}
}

static unsigned int v17 (void)
{
{
for (;;) {
unsigned int v104 = 0U;
signed int v103 = -2;
signed char v102 = -2;
trace++;
switch (trace)
{
case 11: 
return v104;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v105, unsigned char v106, unsigned char v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = -1;
signed int v109 = 3;
signed char v108 = -2;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v111;
signed char v112;
v111 = 3U - 0U;
v112 = v23 (v111);
history[history_index++] = (int)v112;
}
break;
case 4: 
{
unsigned int v113;
signed char v114;
v113 = 6U - 2U;
v114 = v23 (v113);
history[history_index++] = (int)v114;
}
break;
case 6: 
{
unsigned int v115;
unsigned int v116;
unsigned short v117;
signed char v118;
v115 = 7U - 3U;
v116 = 4U - 4U;
v117 = 5 + 0;
v118 = v29 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 10: 
{
unsigned int v119;
v119 = v17 ();
history[history_index++] = (int)v119;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}
