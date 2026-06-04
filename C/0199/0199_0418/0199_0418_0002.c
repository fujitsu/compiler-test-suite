#include <stdlib.h>
extern signed int v1 (unsigned int, signed char);
extern signed int (*v2) (unsigned int, signed char);
unsigned char v3 (signed int, signed short);
unsigned char (*v4) (signed int, signed short) = v3;
extern unsigned char v5 (unsigned short, unsigned char, signed int);
extern unsigned char (*v6) (unsigned short, unsigned char, signed int);
signed char v7 (signed short, unsigned int);
signed char (*v8) (signed short, unsigned int) = v7;
extern void v9 (signed int, unsigned char, unsigned int);
extern void (*v10) (signed int, unsigned char, unsigned int);
extern void v11 (unsigned int, unsigned int, signed short, unsigned short);
extern void (*v12) (unsigned int, unsigned int, signed short, unsigned short);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
static unsigned short v15 (signed short, unsigned int, signed char, signed short);
static unsigned short (*v16) (signed short, unsigned int, signed char, signed short) = v15;
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern unsigned char v19 (unsigned char, unsigned short, signed short);
extern unsigned char (*v20) (unsigned char, unsigned short, signed short);
extern signed char v21 (signed short, unsigned int);
extern signed char (*v22) (signed short, unsigned int);
unsigned short v23 (signed char, unsigned char, signed int, unsigned short);
unsigned short (*v24) (signed char, unsigned char, signed int, unsigned short) = v23;
extern signed int v25 (void);
extern signed int (*v26) (void);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v75 = 1;
signed short v74 = 2;
unsigned char v73 = 1;

unsigned short v23 (signed char v76, unsigned char v77, signed int v78, unsigned short v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 0;
unsigned char v81 = 6;
signed short v80 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v15 (signed short v83, unsigned int v84, signed char v85, signed short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 4;
signed int v88 = -4;
signed short v87 = 1;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v90;
v90 = 2 - 3;
v17 (v90);
}
break;
case 8: 
{
unsigned char v91;
v91 = 6 - 0;
v17 (v91);
}
break;
case 10: 
{
signed char v92;
unsigned short v93;
v92 = 2 - v85;
v93 = v27 (v92);
history[history_index++] = (int)v93;
}
break;
case 12: 
return v89;
default: abort ();
}
}
}
}

signed char v7 (signed short v94, unsigned int v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = -3;
unsigned short v97 = 6;
unsigned char v96 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed int v99;
v99 = v25 ();
history[history_index++] = (int)v99;
}
break;
case 5: 
{
signed short v100;
unsigned int v101;
signed char v102;
signed short v103;
unsigned short v104;
v100 = 3 + 1;
v101 = 0U + 3U;
v102 = 3 + 3;
v103 = v94 - v94;
v104 = v15 (v100, v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

unsigned char v3 (signed int v105, signed short v106)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = 1;
unsigned int v108 = 5U;
unsigned int v107 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
