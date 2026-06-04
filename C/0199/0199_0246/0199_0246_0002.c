#include <stdlib.h>
unsigned char v3 (signed int, unsigned int);
unsigned char (*v4) (signed int, unsigned int) = v3;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned int v9 (unsigned short);
extern unsigned int (*v10) (unsigned short);
static signed char v11 (unsigned int, signed int, signed char);
static signed char (*v12) (unsigned int, signed int, signed char) = v11;
extern unsigned int v13 (signed char, unsigned int);
extern unsigned int (*v14) (signed char, unsigned int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (signed char, signed short);
extern unsigned int (*v18) (signed char, signed short);
extern unsigned int v19 (unsigned char, unsigned char, signed int);
extern unsigned int (*v20) (unsigned char, unsigned char, signed int);
unsigned short v21 (signed short);
unsigned short (*v22) (signed short) = v21;
extern unsigned int v23 (unsigned int, signed short, unsigned char);
extern unsigned int (*v24) (unsigned int, signed short, unsigned char);
extern unsigned char v25 (signed char, signed int, signed int, signed char);
extern unsigned char (*v26) (signed char, signed int, signed int, signed char);
extern unsigned char v27 (signed short, signed short, unsigned int);
extern unsigned char (*v28) (signed short, signed short, unsigned int);
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v72 = 0;
signed char v71 = 1;
unsigned char v70 = 1;

unsigned short v21 (signed short v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = -3;
unsigned short v75 = 5;
unsigned int v74 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v11 (unsigned int v77, signed int v78, signed char v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed char v82 = 3;
unsigned int v81 = 4U;
signed int v80 = 0;
trace++;
switch (trace)
{
case 2: 
{
signed char v83;
signed int v84;
signed int v85;
signed char v86;
unsigned char v87;
v83 = v82 + v79;
v84 = v78 + v80;
v85 = -2 - 1;
v86 = 0 - v82;
v87 = v25 (v83, v84, v85, v86);
history[history_index++] = (int)v87;
}
break;
case 4: 
return -2;
case 8: 
return 2;
default: abort ();
}
}
}
}

unsigned char v3 (signed int v88, unsigned int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 1;
signed short v91 = -2;
unsigned int v90 = 6U;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v93;
signed int v94;
signed char v95;
signed char v96;
v93 = v89 - 4U;
v94 = -1 - -1;
v95 = -3 - 3;
v96 = v11 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 5: 
{
signed char v97;
signed int v98;
signed int v99;
signed char v100;
unsigned char v101;
v97 = -3 + -2;
v98 = v88 + 1;
v99 = v88 - 0;
v100 = -3 + 0;
v101 = v25 (v97, v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 7: 
{
unsigned int v102;
signed int v103;
signed char v104;
signed char v105;
v102 = v89 - v90;
v103 = 2 + 1;
v104 = -3 - 0;
v105 = v11 (v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 9: 
return 0;
default: abort ();
}
}
}
}
