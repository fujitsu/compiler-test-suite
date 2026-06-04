#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned char v5 (unsigned short, unsigned char);
extern unsigned char (*v6) (unsigned short, unsigned char);
signed char v7 (signed char, unsigned int, unsigned short, unsigned int);
signed char (*v8) (signed char, unsigned int, unsigned short, unsigned int) = v7;
unsigned short v9 (unsigned char);
unsigned short (*v10) (unsigned char) = v9;
unsigned int v11 (signed int, unsigned short, signed char);
unsigned int (*v12) (signed int, unsigned short, signed char) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (signed short, unsigned char);
extern unsigned short (*v16) (signed short, unsigned char);
extern signed short v17 (signed char, signed int, unsigned int, unsigned int);
extern signed short (*v18) (signed char, signed int, unsigned int, unsigned int);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed short v25 (unsigned char, unsigned short, unsigned char, signed char);
extern signed short (*v26) (unsigned char, unsigned short, unsigned char, signed char);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
void v29 (signed short, signed short, unsigned char, unsigned int);
void (*v30) (signed short, signed short, unsigned char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v71 = 1;
signed int v70 = -3;
unsigned short v69 = 0;

void v29 (signed short v72, signed short v73, unsigned char v74, unsigned int v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
unsigned int v78 = 7U;
signed char v77 = 3;
signed char v76 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed int v79, unsigned short v80, signed char v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
unsigned int v84 = 3U;
unsigned short v83 = 5;
signed int v82 = -1;
trace++;
switch (trace)
{
case 4: 
{
signed int v85;
unsigned short v86;
signed char v87;
unsigned int v88;
v85 = v82 - v79;
v86 = v83 + v80;
v87 = v81 + v81;
v88 = v11 (v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 5: 
{
signed int v89;
unsigned short v90;
signed char v91;
unsigned int v92;
v89 = v82 + v82;
v90 = v83 + 7;
v91 = v81 - -2;
v92 = v11 (v89, v90, v91);
history[history_index++] = (int)v92;
}
break;
case 6: 
{
signed int v93;
unsigned short v94;
signed char v95;
unsigned int v96;
v93 = -3 + -3;
v94 = v83 + 1;
v95 = 3 + v81;
v96 = v11 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 7: 
{
unsigned int v97;
v97 = v84 + v84;
v21 (v97);
}
break;
case 11: 
return 3U;
case 12: 
return 3U;
case 13: 
return 0U;
case 14: 
return v84;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned char v98)
{
history[history_index++] = (int)v98;
{
for (;;) {
signed char v101 = -3;
signed int v100 = -1;
unsigned short v99 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed char v102, unsigned int v103, unsigned short v104, unsigned int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = -4;
signed char v107 = 2;
signed char v106 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
