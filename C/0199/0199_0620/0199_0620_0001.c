#include <stdlib.h>
unsigned short v1 (unsigned char, unsigned short, unsigned int);
unsigned short (*v2) (unsigned char, unsigned short, unsigned int) = v1;
extern signed short v3 (unsigned int, unsigned char, unsigned int);
extern signed short (*v4) (unsigned int, unsigned char, unsigned int);
signed short v5 (signed char, signed char, unsigned char, unsigned int);
signed short (*v6) (signed char, signed char, unsigned char, unsigned int) = v5;
void v7 (signed short, signed short, signed short, signed short);
void (*v8) (signed short, signed short, signed short, signed short) = v7;
void v9 (unsigned short, unsigned short);
void (*v10) (unsigned short, unsigned short) = v9;
extern unsigned short v11 (signed short, signed int, signed char, signed char);
extern unsigned short (*v12) (signed short, signed int, signed char, signed char);
extern signed int v13 (signed char);
extern signed int (*v14) (signed char);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
unsigned int v17 (signed short, unsigned char, signed int, signed int);
unsigned int (*v18) (signed short, unsigned char, signed int, signed int) = v17;
extern signed int v19 (signed short, unsigned short, signed int, signed int);
extern signed int (*v20) (signed short, unsigned short, signed int, signed int);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
unsigned char v23 (unsigned int);
unsigned char (*v24) (unsigned int) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed int v27 (signed char, unsigned int, unsigned int);
extern signed int (*v28) (signed char, unsigned int, unsigned int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v64 = 0;
unsigned short v63 = 7;
unsigned short v62 = 4;

unsigned char v23 (unsigned int v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
signed short v68 = 2;
signed short v67 = 3;
signed char v66 = -3;
trace++;
switch (trace)
{
case 11: 
return 6;
default: abort ();
}
}
}
}

unsigned int v17 (signed short v69, unsigned char v70, signed int v71, signed int v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed short v75 = 3;
signed int v74 = -1;
signed int v73 = 0;
trace++;
switch (trace)
{
case 9: 
{
signed char v76;
signed int v77;
v76 = -2 + -2;
v77 = 3 - -2;
v21 (v76, v77);
}
break;
case 13: 
return 6U;
default: abort ();
}
}
}
}

void v9 (unsigned short v78, unsigned short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned short v82 = 6;
unsigned short v81 = 4;
unsigned char v80 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed short v83, signed short v84, signed short v85, signed short v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = -1;
signed int v88 = 1;
signed char v87 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed char v90, signed char v91, unsigned char v92, unsigned int v93)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 1U;
unsigned int v95 = 7U;
signed short v94 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned char v97, unsigned short v98, unsigned int v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 3;
unsigned short v101 = 2;
signed short v100 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v103;
unsigned char v104;
unsigned int v105;
signed short v106;
v103 = 4U - 0U;
v104 = v97 - v97;
v105 = 0U - 4U;
v106 = v3 (v103, v104, v105);
history[history_index++] = (int)v106;
}
break;
case 4: 
{
signed short v107;
v107 = v25 ();
history[history_index++] = (int)v107;
}
break;
case 6: 
return v98;
case 7: 
{
unsigned char v108;
signed char v109;
v108 = v97 - v102;
v109 = v15 (v108);
history[history_index++] = (int)v109;
}
break;
case 15: 
return v98;
default: abort ();
}
}
}
}
