#include <stdlib.h>
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern signed char v5 (unsigned int, unsigned int);
extern signed char (*v6) (unsigned int, unsigned int);
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
extern unsigned short v9 (signed char);
extern unsigned short (*v10) (signed char);
extern signed short v13 (unsigned int, signed char, signed int);
extern signed short (*v14) (unsigned int, signed char, signed int);
extern unsigned int v15 (unsigned int, unsigned int, unsigned int);
extern unsigned int (*v16) (unsigned int, unsigned int, unsigned int);
signed char v17 (unsigned char, unsigned short);
signed char (*v18) (unsigned char, unsigned short) = v17;
extern signed char v19 (signed int, signed int);
extern signed char (*v20) (signed int, signed int);
extern unsigned int v21 (unsigned char, unsigned int, unsigned short);
extern unsigned int (*v22) (unsigned char, unsigned int, unsigned short);
signed int v23 (unsigned int, unsigned char);
signed int (*v24) (unsigned int, unsigned char) = v23;
extern unsigned char v25 (signed char, unsigned char, signed char, unsigned short);
extern unsigned char (*v26) (signed char, unsigned char, signed char, unsigned short);
unsigned char v27 (signed int, signed char, signed char, unsigned short);
unsigned char (*v28) (signed int, signed char, signed char, unsigned short) = v27;
extern signed int v29 (unsigned int);
extern signed int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v78 = 4;
unsigned int v77 = 2U;
unsigned char v76 = 5;

unsigned char v27 (signed int v79, signed char v80, signed char v81, unsigned short v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned short v85 = 4;
signed short v84 = 2;
unsigned int v83 = 2U;
trace++;
switch (trace)
{
case 11: 
return 4;
default: abort ();
}
}
}
}

signed int v23 (unsigned int v86, unsigned char v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = 2;
signed char v89 = 3;
signed char v88 = -4;
trace++;
switch (trace)
{
case 9: 
{
signed char v91;
unsigned char v92;
signed char v93;
unsigned short v94;
unsigned char v95;
v91 = v90 - v88;
v92 = 0 - v87;
v93 = v89 + v90;
v94 = 4 - 0;
v95 = v25 (v91, v92, v93, v94);
history[history_index++] = (int)v95;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

signed char v17 (unsigned char v96, unsigned short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned int v100 = 3U;
signed short v99 = -4;
signed char v98 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed int v101;
signed int v102;
signed char v103;
v101 = 0 + 3;
v102 = -4 - 2;
v103 = v19 (v101, v102);
history[history_index++] = (int)v103;
}
break;
case 6: 
return v98;
default: abort ();
}
}
}
}
