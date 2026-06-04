#include <stdlib.h>
extern signed short v1 (unsigned short, signed char, signed short);
extern signed short (*v2) (unsigned short, signed char, signed short);
extern signed char v3 (unsigned char, unsigned char, signed int, signed int);
extern signed char (*v4) (unsigned char, unsigned char, signed int, signed int);
signed char v7 (signed char, signed short);
signed char (*v8) (signed char, signed short) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
void v11 (unsigned short, unsigned char);
void (*v12) (unsigned short, unsigned char) = v11;
extern unsigned int v13 (unsigned short, unsigned char);
extern unsigned int (*v14) (unsigned short, unsigned char);
extern signed short v15 (signed char, unsigned int, unsigned char, signed char);
extern signed short (*v16) (signed char, unsigned int, unsigned char, signed char);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned char v19 (signed int, signed int, unsigned int);
extern unsigned char (*v20) (signed int, signed int, unsigned int);
signed short v21 (signed short);
signed short (*v22) (signed short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (signed short, unsigned char, unsigned char);
extern unsigned char (*v26) (signed short, unsigned char, unsigned char);
static signed char v27 (void);
static signed char (*v28) (void) = v27;
extern signed int v29 (unsigned short, signed short, unsigned int);
extern signed int (*v30) (unsigned short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v97 = 0U;
signed int v96 = 0;
signed char v95 = -3;

static signed char v27 (void)
{
{
for (;;) {
unsigned int v100 = 0U;
unsigned short v99 = 7;
signed int v98 = -1;
trace++;
switch (trace)
{
case 9: 
return 3;
case 11: 
return 2;
default: abort ();
}
}
}
}

signed short v21 (signed short v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 6;
unsigned char v103 = 7;
unsigned short v102 = 1;
trace++;
switch (trace)
{
case 8: 
{
signed char v105;
v105 = v27 ();
history[history_index++] = (int)v105;
}
break;
case 10: 
{
signed char v106;
v106 = v27 ();
history[history_index++] = (int)v106;
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}

void v11 (unsigned short v107, unsigned char v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = 3;
unsigned int v110 = 6U;
signed short v109 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed char v112, signed short v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = 0;
signed char v115 = -3;
unsigned short v114 = 3;
trace++;
switch (trace)
{
case 2: 
return v116;
case 4: 
{
signed char v117;
unsigned int v118;
unsigned char v119;
signed char v120;
signed short v121;
v117 = v116 + v112;
v118 = 2U - 0U;
v119 = 2 - 3;
v120 = v112 - v112;
v121 = v15 (v117, v118, v119, v120);
history[history_index++] = (int)v121;
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}
