#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned int v3 (unsigned int, signed char, unsigned int, signed short);
unsigned int (*v4) (unsigned int, signed char, unsigned int, signed short) = v3;
extern unsigned int v5 (unsigned char, unsigned int);
extern unsigned int (*v6) (unsigned char, unsigned int);
extern signed short v7 (signed short, unsigned int, unsigned short, signed char);
extern signed short (*v8) (signed short, unsigned int, unsigned short, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned int v11 (signed short, unsigned int);
extern unsigned int (*v12) (signed short, unsigned int);
extern signed int v13 (unsigned short, signed short);
extern signed int (*v14) (unsigned short, signed short);
void v15 (unsigned char, unsigned int, unsigned char, signed char);
void (*v16) (unsigned char, unsigned int, unsigned char, signed char) = v15;
signed char v17 (signed int, unsigned int, signed short);
signed char (*v18) (signed int, unsigned int, signed short) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (unsigned short, unsigned short, unsigned char, unsigned short);
extern signed char (*v22) (unsigned short, unsigned short, unsigned char, unsigned short);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned int v27 (unsigned char, signed int, unsigned int);
extern unsigned int (*v28) (unsigned char, signed int, unsigned int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v83 = 6U;
signed short v82 = 2;
unsigned char v81 = 7;

signed int v23 (void)
{
{
for (;;) {
unsigned int v86 = 0U;
signed short v85 = -2;
signed int v84 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed int v87, unsigned int v88, signed short v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 4U;
signed int v91 = -1;
signed char v90 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned char v93, unsigned int v94, unsigned char v95, signed char v96)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 1;
unsigned char v98 = 1;
signed char v97 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v100, signed char v101, unsigned int v102, signed short v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 1;
unsigned char v105 = 1;
signed char v104 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v107;
v107 = v19 ();
history[history_index++] = (int)v107;
}
break;
case 3: 
{
signed short v108;
unsigned int v109;
unsigned int v110;
v108 = v103 - v103;
v109 = v100 - v102;
v110 = v11 (v108, v109);
history[history_index++] = (int)v110;
}
break;
case 7: 
{
unsigned char v111;
v111 = v19 ();
history[history_index++] = (int)v111;
}
break;
case 9: 
{
unsigned char v112;
v112 = v19 ();
history[history_index++] = (int)v112;
}
break;
case 11: 
return v102;
default: abort ();
}
}
}
}
