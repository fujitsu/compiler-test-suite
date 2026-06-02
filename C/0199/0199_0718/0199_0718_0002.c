#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern signed short v3 (unsigned int, signed char);
extern signed short (*v4) (unsigned int, signed char);
extern signed short v5 (unsigned int);
extern signed short (*v6) (unsigned int);
static signed short v7 (unsigned int, signed int, signed int);
static signed short (*v8) (unsigned int, signed int, signed int) = v7;
extern signed short v9 (unsigned short, unsigned int, unsigned int);
extern signed short (*v10) (unsigned short, unsigned int, unsigned int);
signed short v11 (unsigned char, unsigned char);
signed short (*v12) (unsigned char, unsigned char) = v11;
extern unsigned int v13 (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned int (*v14) (unsigned char, unsigned int, unsigned char, signed int);
extern signed char v15 (unsigned char, signed int, unsigned int);
extern signed char (*v16) (unsigned char, signed int, unsigned int);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern unsigned int v19 (signed int, signed int);
extern unsigned int (*v20) (signed int, signed int);
extern unsigned char v21 (signed short, unsigned int, unsigned int);
extern unsigned char (*v22) (signed short, unsigned int, unsigned int);
extern signed char v23 (unsigned int, signed short, signed int, signed char);
extern signed char (*v24) (unsigned int, signed short, signed int, signed char);
extern unsigned short v25 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
signed int v29 (unsigned char, unsigned short);
signed int (*v30) (unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v76 = 5U;
unsigned int v75 = 7U;
signed short v74 = 2;

signed int v29 (unsigned char v77, unsigned short v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = 2;
signed int v80 = -2;
signed short v79 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned char v82, unsigned char v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed char v86 = 2;
signed short v85 = -2;
unsigned short v84 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v7 (unsigned int v87, signed int v88, signed int v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned char v92 = 7;
unsigned short v91 = 7;
unsigned char v90 = 7;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v93;
unsigned int v94;
unsigned int v95;
signed short v96;
v93 = 5 + 6;
v94 = v87 - v87;
v95 = 7U - v87;
v96 = v9 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed char v99 = -1;
signed char v98 = -2;
unsigned char v97 = 5;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v100;
signed int v101;
signed int v102;
signed short v103;
v100 = 0U + 6U;
v101 = 2 + -3;
v102 = -3 + 2;
v103 = v7 (v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 12: 
return v98;
default: abort ();
}
}
}
}
