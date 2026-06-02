#include <stdlib.h>
extern void v1 (unsigned int, signed int, signed char);
extern void (*v2) (unsigned int, signed int, signed char);
extern signed short v3 (signed short, unsigned char, signed char, unsigned short);
extern signed short (*v4) (signed short, unsigned char, signed char, unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
signed short v7 (signed int, signed int);
signed short (*v8) (signed int, signed int) = v7;
extern signed char v9 (unsigned char, signed short, unsigned short);
extern signed char (*v10) (unsigned char, signed short, unsigned short);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern unsigned short v13 (unsigned short, signed char, signed char, signed int);
extern unsigned short (*v14) (unsigned short, signed char, signed char, signed int);
unsigned char v15 (signed char, unsigned char, signed char);
unsigned char (*v16) (signed char, unsigned char, signed char) = v15;
extern unsigned char v17 (unsigned int, signed int);
extern unsigned char (*v18) (unsigned int, signed int);
void v19 (signed int, signed int, signed short);
void (*v20) (signed int, signed int, signed short) = v19;
unsigned int v21 (signed short, unsigned short);
unsigned int (*v22) (signed short, unsigned short) = v21;
extern signed char v23 (unsigned short, signed short);
extern signed char (*v24) (unsigned short, signed short);
extern signed short v25 (void);
extern signed short (*v26) (void);
signed int v29 (unsigned short, unsigned int, unsigned char, unsigned short);
signed int (*v30) (unsigned short, unsigned int, unsigned char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v69 = -4;
signed int v68 = 1;
unsigned short v67 = 0;

signed int v29 (unsigned short v70, unsigned int v71, unsigned char v72, unsigned short v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed int v76 = -3;
unsigned short v75 = 0;
unsigned int v74 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed short v77, unsigned short v78)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed char v81 = 3;
signed short v80 = 3;
signed short v79 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed int v82, signed int v83, signed short v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = -4;
signed short v86 = -3;
signed short v85 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed char v88, unsigned char v89, signed char v90)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
unsigned int v93 = 0U;
unsigned short v92 = 4;
signed int v91 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (signed int v94, signed int v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed char v98 = -1;
signed short v97 = 0;
unsigned int v96 = 2U;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v99;
signed short v100;
signed char v101;
v99 = 7 + 7;
v100 = -2 + v97;
v101 = v23 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 5: 
{
unsigned short v102;
signed short v103;
signed char v104;
v102 = 0 + 6;
v103 = v97 - v97;
v104 = v23 (v102, v103);
history[history_index++] = (int)v104;
}
break;
case 7: 
{
unsigned short v105;
signed short v106;
signed char v107;
v105 = 2 + 1;
v106 = v97 + v97;
v107 = v23 (v105, v106);
history[history_index++] = (int)v107;
}
break;
case 9: 
return v97;
default: abort ();
}
}
}
}
