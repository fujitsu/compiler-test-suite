#include <stdlib.h>
unsigned short v1 (signed short, signed short, unsigned int, signed int);
unsigned short (*v2) (signed short, signed short, unsigned int, signed int) = v1;
extern signed short v3 (signed int);
extern signed short (*v4) (signed int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v7 (signed int, signed int, unsigned char, unsigned short);
extern signed short (*v8) (signed int, signed int, unsigned char, unsigned short);
static signed short v9 (signed int);
static signed short (*v10) (signed int) = v9;
extern unsigned int v11 (signed int, unsigned int);
extern unsigned int (*v12) (signed int, unsigned int);
extern signed short v13 (signed short, signed char, unsigned short);
extern signed short (*v14) (signed short, signed char, unsigned short);
extern void v15 (signed short, signed char);
extern void (*v16) (signed short, signed char);
static unsigned int v17 (signed char, signed int, signed int);
static unsigned int (*v18) (signed char, signed int, signed int) = v17;
extern unsigned int v19 (signed char, unsigned int);
extern unsigned int (*v20) (signed char, unsigned int);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern signed char v23 (signed short);
extern signed char (*v24) (signed short);
extern unsigned int v25 (signed short, unsigned short, unsigned int);
extern unsigned int (*v26) (signed short, unsigned short, unsigned int);
extern signed char v27 (unsigned int, signed char);
extern signed char (*v28) (unsigned int, signed char);
extern unsigned int v29 (unsigned short, unsigned short, signed int, signed int);
extern unsigned int (*v30) (unsigned short, unsigned short, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v91 = -1;
signed char v90 = 1;
signed int v89 = 3;

static unsigned int v17 (signed char v92, signed int v93, signed int v94)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
unsigned short v97 = 4;
unsigned char v96 = 3;
signed int v95 = 2;
trace++;
switch (trace)
{
case 7: 
return 3U;
default: abort ();
}
}
}
}

static signed short v9 (signed int v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = 1;
signed short v100 = -4;
signed int v99 = -2;
trace++;
switch (trace)
{
case 3: 
return 2;
default: abort ();
}
}
}
}

unsigned short v1 (signed short v102, signed short v103, unsigned int v104, signed int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = 2;
signed char v107 = 2;
unsigned int v106 = 6U;
trace++;
switch (trace)
{
case 0: 
{
signed short v109;
signed char v110;
v109 = -3 - v103;
v110 = v23 (v109);
history[history_index++] = (int)v110;
}
break;
case 2: 
{
signed int v111;
signed short v112;
v111 = v105 - 2;
v112 = v9 (v111);
history[history_index++] = (int)v112;
}
break;
case 4: 
{
unsigned char v113;
unsigned short v114;
v113 = 3 - 7;
v114 = v21 (v113);
history[history_index++] = (int)v114;
}
break;
case 6: 
{
signed char v115;
signed int v116;
signed int v117;
unsigned int v118;
v115 = v108 + v108;
v116 = v105 + 0;
v117 = v105 - -2;
v118 = v17 (v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 8: 
{
signed short v119;
signed char v120;
v119 = v102 + 3;
v120 = v23 (v119);
history[history_index++] = (int)v120;
}
break;
case 10: 
{
signed int v121;
unsigned int v122;
unsigned int v123;
v121 = v105 + v105;
v122 = 3U - 4U;
v123 = v11 (v121, v122);
history[history_index++] = (int)v123;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
