#include <stdlib.h>
void v1 (unsigned char);
void (*v2) (unsigned char) = v1;
signed char v3 (void);
signed char (*v4) (void) = v3;
extern signed int v5 (unsigned char, signed short, unsigned short);
extern signed int (*v6) (unsigned char, signed short, unsigned short);
extern unsigned short v7 (signed short, unsigned char, signed int);
extern unsigned short (*v8) (signed short, unsigned char, signed int);
extern unsigned int v9 (signed char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char);
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
signed char v13 (void);
signed char (*v14) (void) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
signed short v19 (signed short, unsigned char, unsigned short, signed short);
signed short (*v20) (signed short, unsigned char, unsigned short, signed short) = v19;
extern void v21 (signed short, unsigned int);
extern void (*v22) (signed short, unsigned int);
extern unsigned short v23 (unsigned short, unsigned short, signed short, signed short);
extern unsigned short (*v24) (unsigned short, unsigned short, signed short, signed short);
signed int v25 (signed short);
signed int (*v26) (signed short) = v25;
extern unsigned short v27 (signed short, unsigned int, unsigned short);
extern unsigned short (*v28) (signed short, unsigned int, unsigned short);
extern signed short v29 (unsigned char, signed char, unsigned int);
extern signed short (*v30) (unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v75 = 2;
signed int v74 = -1;
signed char v73 = 2;

signed int v25 (signed short v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
signed int v79 = -3;
unsigned char v78 = 7;
signed char v77 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed short v80, unsigned char v81, unsigned short v82, signed short v83)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 0;
signed char v85 = -1;
signed int v84 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed short v89 = 1;
unsigned char v88 = 7;
signed char v87 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
signed short v92 = -4;
signed int v91 = 3;
signed short v90 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
unsigned int v95 = 5U;
unsigned short v94 = 1;
signed short v93 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned char v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 2;
unsigned char v98 = 0;
signed int v97 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v100;
unsigned short v101;
signed short v102;
signed short v103;
unsigned short v104;
v100 = 1 - 0;
v101 = 0 + 7;
v102 = 1 - -2;
v103 = 0 + -2;
v104 = v23 (v100, v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 2: 
{
unsigned short v105;
unsigned short v106;
signed short v107;
signed short v108;
unsigned short v109;
v105 = 6 - 7;
v106 = 1 + 3;
v107 = 1 + -1;
v108 = 3 - -3;
v109 = v23 (v105, v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 4: 
{
signed short v110;
unsigned int v111;
v110 = -4 + 3;
v111 = 3U + 2U;
v21 (v110, v111);
}
break;
case 6: 
{
signed short v112;
unsigned int v113;
v112 = -1 + 2;
v113 = 5U + 2U;
v21 (v112, v113);
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
