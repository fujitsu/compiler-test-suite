#include <stdlib.h>
signed short v1 (void);
signed short (*v2) (void) = v1;
extern signed int v3 (unsigned char, unsigned short, unsigned short, signed char);
extern signed int (*v4) (unsigned char, unsigned short, unsigned short, signed char);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
extern void v9 (signed int, unsigned int, signed int, unsigned short);
extern void (*v10) (signed int, unsigned int, signed int, unsigned short);
extern unsigned int v11 (unsigned char, unsigned char, signed int);
extern unsigned int (*v12) (unsigned char, unsigned char, signed int);
extern unsigned int v13 (unsigned short, unsigned short);
extern unsigned int (*v14) (unsigned short, unsigned short);
void v15 (unsigned char, signed char, signed int, unsigned short);
void (*v16) (unsigned char, signed char, signed int, unsigned short) = v15;
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern signed int v21 (signed short, unsigned char, signed int);
extern signed int (*v22) (signed short, unsigned char, signed int);
extern unsigned short v23 (unsigned int, signed char);
extern unsigned short (*v24) (unsigned int, signed char);
signed short v25 (signed short, unsigned int, unsigned short, signed short);
signed short (*v26) (signed short, unsigned int, unsigned short, signed short) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed short v29 (unsigned char, signed char);
extern signed short (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v77 = 3;
unsigned int v76 = 7U;
unsigned short v75 = 4;

signed short v25 (signed short v78, unsigned int v79, unsigned short v80, signed short v81)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed int v84 = 3;
unsigned int v83 = 4U;
unsigned short v82 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
signed char v87 = 2;
unsigned int v86 = 0U;
signed short v85 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
unsigned int v90 = 4U;
signed char v89 = 1;
signed short v88 = -4;
trace++;
switch (trace)
{
case 2: 
return 6;
case 10: 
{
unsigned int v91;
v91 = v27 ();
history[history_index++] = (int)v91;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}

void v15 (unsigned char v92, signed char v93, signed int v94, unsigned short v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 5;
unsigned short v97 = 5;
signed int v96 = 2;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v99;
signed char v100;
unsigned short v101;
v99 = 1U - 6U;
v100 = 3 - -2;
v101 = v23 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 6: 
{
unsigned int v102;
signed char v103;
unsigned short v104;
v102 = 6U + 3U;
v103 = v93 - 3;
v104 = v23 (v102, v103);
history[history_index++] = (int)v104;
}
break;
case 8: 
return;
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
signed short v107 = 0;
unsigned short v106 = 0;
signed short v105 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (void)
{
{
for (;;) {
unsigned short v110 = 7;
unsigned char v109 = 4;
signed short v108 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v111;
unsigned char v112;
signed int v113;
unsigned int v114;
v111 = 0 - 2;
v112 = v109 - v109;
v113 = 3 + 2;
v114 = v11 (v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 14: 
return v108;
default: abort ();
}
}
}
}
