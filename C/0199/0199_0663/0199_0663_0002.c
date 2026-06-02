#include <stdlib.h>
unsigned short v1 (signed int, signed short, unsigned short);
unsigned short (*v2) (signed int, signed short, unsigned short) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
signed char v7 (unsigned short, unsigned char);
signed char (*v8) (unsigned short, unsigned char) = v7;
unsigned int v9 (signed char, unsigned int, signed char);
unsigned int (*v10) (signed char, unsigned int, signed char) = v9;
static signed int v11 (void);
static signed int (*v12) (void) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned short v15 (signed short, unsigned int, signed int, signed short);
extern unsigned short (*v16) (signed short, unsigned int, signed int, signed short);
extern void v17 (unsigned char, unsigned int);
extern void (*v18) (unsigned char, unsigned int);
unsigned int v19 (signed short);
unsigned int (*v20) (signed short) = v19;
static unsigned char v21 (unsigned int, signed int, signed short);
static unsigned char (*v22) (unsigned int, signed int, signed short) = v21;
extern unsigned char v23 (unsigned char);
extern unsigned char (*v24) (unsigned char);
extern unsigned char v25 (signed char, signed char);
extern unsigned char (*v26) (signed char, signed char);
extern unsigned int v27 (unsigned char, signed short, signed int);
extern unsigned int (*v28) (unsigned char, signed short, signed int);
extern signed char v29 (unsigned short, signed int, signed short);
extern signed char (*v30) (unsigned short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v70 = -2;
signed int v69 = 2;
unsigned int v68 = 3U;

static unsigned char v21 (unsigned int v71, signed int v72, signed short v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 7U;
signed int v75 = -4;
unsigned char v74 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed int v77;
v77 = v11 ();
history[history_index++] = (int)v77;
}
break;
case 5: 
{
signed int v78;
v78 = v11 ();
history[history_index++] = (int)v78;
}
break;
case 13: 
return v74;
default: abort ();
}
}
}
}

unsigned int v19 (signed short v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = 2;
unsigned int v81 = 3U;
unsigned short v80 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v11 (void)
{
{
for (;;) {
unsigned char v85 = 5;
unsigned char v84 = 2;
signed short v83 = -4;
trace++;
switch (trace)
{
case 4: 
return -4;
case 6: 
{
unsigned char v86;
unsigned char v87;
v86 = v85 - 1;
v87 = v23 (v86);
history[history_index++] = (int)v87;
}
break;
case 8: 
{
unsigned char v88;
unsigned char v89;
v88 = 0 + v85;
v89 = v23 (v88);
history[history_index++] = (int)v89;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

unsigned int v9 (signed char v90, unsigned int v91, signed char v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 1U;
unsigned int v94 = 4U;
unsigned char v93 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned short v96, unsigned char v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = 1;
signed char v99 = 3;
signed int v98 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed int v101, signed short v102, unsigned short v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 4U;
signed int v105 = 2;
unsigned char v104 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v107;
signed short v108;
signed int v109;
unsigned int v110;
v107 = v104 + v104;
v108 = -1 - 1;
v109 = v101 - v101;
v110 = v27 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 2: 
{
unsigned int v111;
signed int v112;
signed short v113;
unsigned char v114;
v111 = 7U - v106;
v112 = -1 - v101;
v113 = v102 + v102;
v114 = v21 (v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
