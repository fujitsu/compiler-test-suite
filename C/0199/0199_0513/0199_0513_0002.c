#include <stdlib.h>
extern unsigned char v1 (unsigned short);
extern unsigned char (*v2) (unsigned short);
void v3 (unsigned char, unsigned int, unsigned char, signed short);
void (*v4) (unsigned char, unsigned int, unsigned char, signed short) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned int v7 (unsigned char, signed int, signed int);
extern unsigned int (*v8) (unsigned char, signed int, signed int);
extern signed char v9 (signed char, unsigned short);
extern signed char (*v10) (signed char, unsigned short);
extern signed short v11 (unsigned int, unsigned int, signed char, signed char);
extern signed short (*v12) (unsigned int, unsigned int, signed char, signed char);
extern signed short v13 (unsigned short, unsigned short);
extern signed short (*v14) (unsigned short, unsigned short);
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
signed int v17 (unsigned int, signed char, signed char, signed int);
signed int (*v18) (unsigned int, signed char, signed char, signed int) = v17;
extern unsigned short v19 (signed char, signed short, unsigned short, unsigned short);
extern unsigned short (*v20) (signed char, signed short, unsigned short, unsigned short);
signed short v21 (unsigned char, signed int, unsigned int, signed int);
signed short (*v22) (unsigned char, signed int, unsigned int, signed int) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed int, signed int, signed int);
extern signed int (*v26) (signed int, signed int, signed int);
static unsigned int v27 (signed short, signed short, unsigned int, unsigned int);
static unsigned int (*v28) (signed short, signed short, unsigned int, unsigned int) = v27;
extern unsigned int v29 (signed short, signed short);
extern unsigned int (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v75 = 5;
signed int v74 = 1;
unsigned char v73 = 2;

static unsigned int v27 (signed short v76, signed short v77, unsigned int v78, unsigned int v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 4U;
signed short v81 = -4;
unsigned char v80 = 0;
trace++;
switch (trace)
{
case 7: 
{
signed short v83;
signed short v84;
unsigned int v85;
v83 = -3 + v76;
v84 = v81 + 2;
v85 = v29 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 13: 
return v79;
default: abort ();
}
}
}
}

signed short v21 (unsigned char v86, signed int v87, unsigned int v88, signed int v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 7;
signed short v91 = 1;
signed int v90 = 3;
trace++;
switch (trace)
{
case 2: 
return -3;
case 4: 
{
signed int v93;
signed int v94;
signed int v95;
signed int v96;
v93 = v87 + v89;
v94 = 1 - v89;
v95 = v90 - v90;
v96 = v25 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 6: 
{
signed short v97;
signed short v98;
unsigned int v99;
unsigned int v100;
unsigned int v101;
v97 = -1 - v91;
v98 = -1 + -3;
v99 = v88 + 1U;
v100 = 7U - v88;
v101 = v27 (v97, v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}

signed int v17 (unsigned int v102, signed char v103, signed char v104, signed int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 5U;
signed int v107 = 0;
signed char v106 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned char v109, unsigned int v110, unsigned char v111, signed short v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 2U;
unsigned char v114 = 1;
unsigned short v113 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
