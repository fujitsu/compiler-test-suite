#include <stdlib.h>
extern void v1 (unsigned short, unsigned char, unsigned short, signed char);
extern void (*v2) (unsigned short, unsigned char, unsigned short, signed char);
void v3 (signed short, unsigned char, unsigned char);
void (*v4) (signed short, unsigned char, unsigned char) = v3;
static unsigned int v5 (unsigned int, unsigned int, signed short, signed int);
static unsigned int (*v6) (unsigned int, unsigned int, signed short, signed int) = v5;
extern signed short v7 (signed short, signed int);
extern signed short (*v8) (signed short, signed int);
unsigned short v9 (unsigned char, unsigned int);
unsigned short (*v10) (unsigned char, unsigned int) = v9;
extern unsigned char v11 (signed short, signed short, signed short, unsigned int);
extern unsigned char (*v12) (signed short, signed short, signed short, unsigned int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
extern unsigned int v19 (signed int, unsigned int, unsigned int, unsigned char);
extern unsigned int (*v20) (signed int, unsigned int, unsigned int, unsigned char);
extern signed char v21 (unsigned int, unsigned int, unsigned char, signed int);
extern signed char (*v22) (unsigned int, unsigned int, unsigned char, signed int);
signed short v23 (void);
signed short (*v24) (void) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v69 = 6;
unsigned char v68 = 7;
unsigned int v67 = 7U;

signed short v23 (void)
{
{
for (;;) {
unsigned char v72 = 2;
unsigned int v71 = 5U;
signed short v70 = 2;
trace++;
switch (trace)
{
case 6: 
return 3;
case 10: 
return 1;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v73, unsigned int v74)
{
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = 3;
signed char v76 = 3;
unsigned int v75 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v5 (unsigned int v78, unsigned int v79, signed short v80, signed int v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 0;
signed short v83 = -4;
signed int v82 = -1;
trace++;
switch (trace)
{
case 2: 
return v78;
case 4: 
{
signed char v85;
unsigned short v86;
v85 = 1 + 0;
v86 = v17 (v85);
history[history_index++] = (int)v86;
}
break;
case 8: 
{
signed char v87;
unsigned short v88;
v87 = 3 + 0;
v88 = v17 (v87);
history[history_index++] = (int)v88;
}
break;
case 12: 
return v78;
default: abort ();
}
}
}
}

void v3 (signed short v89, unsigned char v90, unsigned char v91)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
{
for (;;) {
signed int v94 = 3;
unsigned short v93 = 5;
unsigned short v92 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v95;
unsigned int v96;
signed short v97;
signed int v98;
unsigned int v99;
v95 = 5U + 3U;
v96 = 1U - 2U;
v97 = -3 - v89;
v98 = v94 + v94;
v99 = v5 (v95, v96, v97, v98);
history[history_index++] = (int)v99;
}
break;
case 3: 
{
unsigned int v100;
unsigned int v101;
signed short v102;
signed int v103;
unsigned int v104;
v100 = 0U - 4U;
v101 = 2U + 3U;
v102 = -4 - v89;
v103 = -2 - v94;
v104 = v5 (v100, v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
