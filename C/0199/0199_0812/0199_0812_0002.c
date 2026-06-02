#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed char v7 (unsigned int, signed char);
extern signed char (*v8) (unsigned int, signed char);
extern signed short v9 (unsigned short, signed int, unsigned int);
extern signed short (*v10) (unsigned short, signed int, unsigned int);
unsigned int v11 (unsigned char, signed char, unsigned int, unsigned short);
unsigned int (*v12) (unsigned char, signed char, unsigned int, unsigned short) = v11;
extern void v13 (unsigned char, unsigned int, unsigned int, unsigned int);
extern void (*v14) (unsigned char, unsigned int, unsigned int, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v17 (signed char);
extern unsigned int (*v18) (signed char);
unsigned short v19 (signed char);
unsigned short (*v20) (signed char) = v19;
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
unsigned char v23 (unsigned int, signed char, signed short, unsigned short);
unsigned char (*v24) (unsigned int, signed char, signed short, unsigned short) = v23;
extern unsigned short v25 (unsigned int, signed short, unsigned char);
extern unsigned short (*v26) (unsigned int, signed short, unsigned char);
signed char v27 (unsigned short);
signed char (*v28) (unsigned short) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed short v80 = 1;
signed char v79 = 3;
unsigned char v78 = 1;

signed char v27 (unsigned short v81)
{
history[history_index++] = (int)v81;
{
for (;;) {
unsigned char v84 = 6;
unsigned short v83 = 7;
unsigned char v82 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned int v85, signed char v86, signed short v87, unsigned short v88)
{
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
{
for (;;) {
unsigned short v91 = 2;
signed int v90 = -1;
unsigned int v89 = 4U;
trace++;
switch (trace)
{
case 4: 
{
signed char v92;
signed char v93;
v92 = -3 + v86;
v93 = v21 (v92);
history[history_index++] = (int)v93;
}
break;
case 6: 
{
unsigned int v94;
signed short v95;
unsigned char v96;
unsigned short v97;
v94 = v89 + v89;
v95 = -3 + v87;
v96 = 1 + 3;
v97 = v25 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 12: 
return 1;
case 14: 
return 2;
default: abort ();
}
}
}
}

unsigned short v19 (signed char v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
unsigned char v101 = 1;
unsigned char v100 = 4;
unsigned int v99 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v102, signed char v103, unsigned int v104, unsigned short v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 4;
signed char v107 = 1;
unsigned char v106 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
