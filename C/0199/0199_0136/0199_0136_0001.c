#include <stdlib.h>
signed char v1 (signed char);
signed char (*v2) (signed char) = v1;
extern unsigned char v3 (unsigned char, signed char, signed short, unsigned short);
extern unsigned char (*v4) (unsigned char, signed char, signed short, unsigned short);
signed short v5 (unsigned short, unsigned short);
signed short (*v6) (unsigned short, unsigned short) = v5;
extern unsigned char v7 (unsigned char, signed char, unsigned int);
extern unsigned char (*v8) (unsigned char, signed char, unsigned int);
extern signed short v9 (signed char, signed char, unsigned char, unsigned short);
extern signed short (*v10) (signed char, signed char, unsigned char, unsigned short);
extern unsigned short v11 (unsigned short, signed short);
extern unsigned short (*v12) (unsigned short, signed short);
extern signed short v13 (unsigned int, signed char);
extern signed short (*v14) (unsigned int, signed char);
extern signed short v15 (signed int, signed int);
extern signed short (*v16) (signed int, signed int);
extern unsigned short v17 (signed int, signed short, unsigned int, unsigned char);
extern unsigned short (*v18) (signed int, signed short, unsigned int, unsigned char);
extern signed short v19 (signed char, signed short);
extern signed short (*v20) (signed char, signed short);
unsigned char v21 (unsigned char, signed int, signed short, unsigned char);
unsigned char (*v22) (unsigned char, signed int, signed short, unsigned char) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed short v25 (signed char, unsigned char, unsigned short);
extern signed short (*v26) (signed char, unsigned char, unsigned short);
void v27 (unsigned char, signed int, unsigned int, unsigned char);
void (*v28) (unsigned char, signed int, unsigned int, unsigned char) = v27;
extern signed char v29 (unsigned int, unsigned short);
extern signed char (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v76 = 3U;
unsigned char v75 = 3;
signed char v74 = -3;

void v27 (unsigned char v77, signed int v78, unsigned int v79, unsigned char v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed short v83 = 3;
signed int v82 = 1;
signed short v81 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (unsigned char v84, signed int v85, signed short v86, unsigned char v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = 2;
unsigned char v89 = 5;
signed short v88 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned short v91, unsigned short v92)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 4U;
unsigned short v94 = 1;
unsigned short v93 = 7;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

signed char v1 (signed char v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
signed int v99 = 3;
unsigned int v98 = 1U;
signed short v97 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed int v100;
signed int v101;
signed short v102;
v100 = -4 - 1;
v101 = -3 + -1;
v102 = v15 (v100, v101);
history[history_index++] = (int)v102;
}
break;
case 2: 
{
signed int v103;
signed short v104;
unsigned int v105;
unsigned char v106;
unsigned short v107;
v103 = -2 - v99;
v104 = 0 + 1;
v105 = v98 - v98;
v106 = 5 - 4;
v107 = v17 (v103, v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 16: 
return v96;
default: abort ();
}
}
}
}
