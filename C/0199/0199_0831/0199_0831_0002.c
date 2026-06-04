#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned int);
extern unsigned char (*v2) (unsigned char, unsigned int);
extern unsigned char v3 (unsigned int, signed short, unsigned char);
extern unsigned char (*v4) (unsigned int, signed short, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed int v9 (signed short, unsigned char, signed char);
extern signed int (*v10) (signed short, unsigned char, signed char);
void v11 (unsigned char);
void (*v12) (unsigned char) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v17 (unsigned int, unsigned int);
extern signed short (*v18) (unsigned int, unsigned int);
signed char v19 (unsigned char);
signed char (*v20) (unsigned char) = v19;
signed char v21 (signed int, unsigned int, unsigned char);
signed char (*v22) (signed int, unsigned int, unsigned char) = v21;
extern unsigned char v23 (signed int, signed int, signed short);
extern unsigned char (*v24) (signed int, signed int, signed short);
extern signed int v25 (unsigned int, signed char);
extern signed int (*v26) (unsigned int, signed char);
extern unsigned char v27 (signed short, unsigned char, signed char);
extern unsigned char (*v28) (signed short, unsigned char, signed char);
static signed char v29 (void);
static signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v93 = 3U;
signed char v92 = 2;
signed short v91 = -1;

static signed char v29 (void)
{
{
for (;;) {
unsigned int v96 = 5U;
unsigned char v95 = 5;
unsigned short v94 = 1;
trace++;
switch (trace)
{
case 5: 
return -2;
case 7: 
{
signed short v97;
unsigned char v98;
signed char v99;
signed int v100;
v97 = 0 - -4;
v98 = 3 + v95;
v99 = 1 - 2;
v100 = v9 (v97, v98, v99);
history[history_index++] = (int)v100;
}
break;
case 9: 
{
signed short v101;
unsigned char v102;
signed char v103;
signed int v104;
v101 = -3 + 1;
v102 = v95 + v95;
v103 = 3 - -4;
v104 = v9 (v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

signed char v21 (signed int v105, unsigned int v106, unsigned char v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 1;
unsigned char v109 = 5;
unsigned int v108 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned char v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
signed char v114 = -3;
signed char v113 = -2;
signed short v112 = -1;
trace++;
switch (trace)
{
case 4: 
{
signed char v115;
v115 = v29 ();
history[history_index++] = (int)v115;
}
break;
case 6: 
{
signed char v116;
v116 = v29 ();
history[history_index++] = (int)v116;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

void v11 (unsigned char v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = -3;
signed char v119 = -3;
unsigned int v118 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
