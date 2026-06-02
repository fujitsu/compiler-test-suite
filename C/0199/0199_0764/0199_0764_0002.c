#include <stdlib.h>
unsigned int v1 (unsigned char, signed short);
unsigned int (*v2) (unsigned char, signed short) = v1;
extern signed short v3 (unsigned int, unsigned short, unsigned char);
extern signed short (*v4) (unsigned int, unsigned short, unsigned char);
extern unsigned char v5 (signed short, unsigned short, unsigned short);
extern unsigned char (*v6) (signed short, unsigned short, unsigned short);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern unsigned short v9 (signed int, unsigned int, unsigned char);
extern unsigned short (*v10) (signed int, unsigned int, unsigned char);
extern unsigned int v11 (unsigned short, signed int);
extern unsigned int (*v12) (unsigned short, signed int);
extern signed int v13 (signed short, signed short);
extern signed int (*v14) (signed short, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed short v17 (unsigned int, signed short, unsigned char, signed int);
extern signed short (*v18) (unsigned int, signed short, unsigned char, signed int);
unsigned int v19 (signed short, signed short, signed char, signed char);
unsigned int (*v20) (signed short, signed short, signed char, signed char) = v19;
static unsigned int v21 (signed int, unsigned short);
static unsigned int (*v22) (signed int, unsigned short) = v21;
extern unsigned char v23 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned char);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (signed char);
extern unsigned int (*v28) (signed char);
extern unsigned char v29 (signed int, signed short, unsigned short);
extern unsigned char (*v30) (signed int, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v86 = -3;
signed short v85 = 3;
signed short v84 = 2;

static unsigned int v21 (signed int v87, unsigned short v88)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
signed short v91 = -2;
signed char v90 = -2;
signed int v89 = 0;
trace++;
switch (trace)
{
case 3: 
return 0U;
default: abort ();
}
}
}
}

unsigned int v19 (signed short v92, signed short v93, signed char v94, signed char v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 2;
signed int v97 = 3;
unsigned short v96 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned char v99, signed short v100)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
unsigned char v103 = 2;
signed int v102 = 0;
signed short v101 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v104;
signed short v105;
unsigned char v106;
signed int v107;
signed short v108;
v104 = 3U - 6U;
v105 = -3 - v101;
v106 = v103 + v99;
v107 = v102 - v102;
v108 = v17 (v104, v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 2: 
{
signed int v109;
unsigned short v110;
unsigned int v111;
v109 = -4 - v102;
v110 = 3 + 4;
v111 = v21 (v109, v110);
history[history_index++] = (int)v111;
}
break;
case 4: 
{
signed int v112;
unsigned int v113;
unsigned char v114;
unsigned short v115;
v112 = -2 - 3;
v113 = 7U - 1U;
v114 = 0 - v103;
v115 = v9 (v112, v113, v114);
history[history_index++] = (int)v115;
}
break;
case 12: 
return 0U;
default: abort ();
}
}
}
}
