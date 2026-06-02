#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern void v3 (signed char, signed char, signed short, unsigned char);
extern void (*v4) (signed char, signed char, signed short, unsigned char);
signed int v5 (unsigned int, signed int, unsigned char, signed int);
signed int (*v6) (unsigned int, signed int, unsigned char, signed int) = v5;
extern signed char v7 (signed int, unsigned char, signed char);
extern signed char (*v8) (signed int, unsigned char, signed char);
extern unsigned int v9 (signed int, signed char, unsigned int, unsigned char);
extern unsigned int (*v10) (signed int, signed char, unsigned int, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
void v13 (signed char, unsigned int);
void (*v14) (signed char, unsigned int) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed char v17 (signed short, unsigned int, unsigned short);
extern signed char (*v18) (signed short, unsigned int, unsigned short);
unsigned char v19 (signed int, signed short, signed char);
unsigned char (*v20) (signed int, signed short, signed char) = v19;
signed int v21 (signed char, signed short, unsigned short);
signed int (*v22) (signed char, signed short, unsigned short) = v21;
extern void v23 (unsigned short);
extern void (*v24) (unsigned short);
extern signed short v25 (unsigned short, signed int, signed char);
extern signed short (*v26) (unsigned short, signed int, signed char);
extern unsigned char v27 (unsigned short, signed int);
extern unsigned char (*v28) (unsigned short, signed int);
extern unsigned char v29 (unsigned int);
extern unsigned char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v75 = 0U;
unsigned short v74 = 4;
unsigned char v73 = 7;

signed int v21 (signed char v76, signed short v77, unsigned short v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned char v81 = 1;
signed char v80 = -1;
unsigned char v79 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed int v82, signed short v83, signed char v84)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
unsigned short v87 = 1;
unsigned short v86 = 2;
signed short v85 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed char v88, unsigned int v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = 0;
signed int v91 = 1;
signed char v90 = 1;
trace++;
switch (trace)
{
case 4: 
{
signed short v93;
unsigned int v94;
unsigned short v95;
signed char v96;
v93 = 1 - 2;
v94 = 2U - v89;
v95 = 1 + 7;
v96 = v17 (v93, v94, v95);
history[history_index++] = (int)v96;
}
break;
case 10: 
{
unsigned char v97;
unsigned int v98;
v97 = 1 - 6;
v98 = v1 (v97);
history[history_index++] = (int)v98;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed int v5 (unsigned int v99, signed int v100, unsigned char v101, signed int v102)
{
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned char v105 = 6;
unsigned int v104 = 5U;
signed short v103 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
