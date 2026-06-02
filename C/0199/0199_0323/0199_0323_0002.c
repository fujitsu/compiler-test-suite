#include <stdlib.h>
unsigned short v3 (signed int, unsigned char, signed int, unsigned char);
unsigned short (*v4) (signed int, unsigned char, signed int, unsigned char) = v3;
extern signed short v5 (signed short, unsigned short, signed char);
extern signed short (*v6) (signed short, unsigned short, signed char);
unsigned char v7 (unsigned char);
unsigned char (*v8) (unsigned char) = v7;
extern unsigned char v9 (unsigned char, unsigned int, signed char);
extern unsigned char (*v10) (unsigned char, unsigned int, signed char);
extern unsigned char v11 (unsigned char);
extern unsigned char (*v12) (unsigned char);
extern unsigned short v13 (signed int, unsigned int, unsigned int);
extern unsigned short (*v14) (signed int, unsigned int, unsigned int);
void v15 (unsigned short, signed short, signed short, unsigned char);
void (*v16) (unsigned short, signed short, signed short, unsigned char) = v15;
extern signed char v17 (unsigned int, unsigned int, unsigned char, signed short);
extern signed char (*v18) (unsigned int, unsigned int, unsigned char, signed short);
extern unsigned char v19 (unsigned int, signed char, unsigned short, signed char);
extern unsigned char (*v20) (unsigned int, signed char, unsigned short, signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
unsigned char v23 (unsigned int, unsigned short, unsigned short, unsigned short);
unsigned char (*v24) (unsigned int, unsigned short, unsigned short, unsigned short) = v23;
extern void v25 (signed short, signed short);
extern void (*v26) (signed short, signed short);
extern unsigned char v27 (unsigned int, signed short);
extern unsigned char (*v28) (unsigned int, signed short);
extern signed int v29 (signed char, signed short);
extern signed int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v75 = 5;
unsigned int v74 = 6U;
signed char v73 = 3;

unsigned char v23 (unsigned int v76, unsigned short v77, unsigned short v78, unsigned short v79)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 0U;
unsigned char v81 = 4;
unsigned char v80 = 7;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v83;
signed short v84;
unsigned char v85;
v83 = v76 + v76;
v84 = -4 + 3;
v85 = v27 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 5: 
return v80;
case 7: 
return 0;
default: abort ();
}
}
}
}

void v15 (unsigned short v86, signed short v87, signed short v88, unsigned char v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 6;
unsigned char v91 = 2;
signed char v90 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned char v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
signed int v96 = -3;
unsigned int v95 = 5U;
signed char v94 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v97;
signed char v98;
unsigned short v99;
signed char v100;
unsigned char v101;
v97 = 3U + v95;
v98 = v94 + 0;
v99 = 4 - 2;
v100 = -2 - -4;
v101 = v19 (v97, v98, v99, v100);
history[history_index++] = (int)v101;
}
break;
case 9: 
{
unsigned int v102;
signed char v103;
unsigned short v104;
signed char v105;
unsigned char v106;
v102 = v95 - v95;
v103 = 0 - -4;
v104 = 5 - 4;
v105 = v94 + -2;
v106 = v19 (v102, v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned short v3 (signed int v107, unsigned char v108, signed int v109, unsigned char v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned short v113 = 6;
unsigned int v112 = 0U;
unsigned short v111 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
