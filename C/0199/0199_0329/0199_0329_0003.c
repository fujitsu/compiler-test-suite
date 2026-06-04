#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern unsigned short v5 (signed char, signed int, signed int);
extern unsigned short (*v6) (signed char, signed int, signed int);
extern void v7 (signed int, unsigned short, signed char);
extern void (*v8) (signed int, unsigned short, signed char);
extern unsigned short v9 (signed short);
extern unsigned short (*v10) (signed short);
extern signed int v11 (signed short, signed short, signed int);
extern signed int (*v12) (signed short, signed short, signed int);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern signed short v15 (signed int, signed int, unsigned short);
extern signed short (*v16) (signed int, signed int, unsigned short);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned short v19 (signed int, signed char, signed char);
extern unsigned short (*v20) (signed int, signed char, signed char);
extern void v21 (signed char, unsigned int, unsigned char, signed int);
extern void (*v22) (signed char, unsigned int, unsigned char, signed int);
extern signed char v23 (void);
extern signed char (*v24) (void);
void v25 (void);
void (*v26) (void) = v25;
unsigned short v27 (unsigned int, unsigned short);
unsigned short (*v28) (unsigned int, unsigned short) = v27;
extern unsigned int v29 (unsigned int);
extern unsigned int (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v88 = 0U;
signed int v87 = -2;
signed short v86 = -4;

unsigned short v27 (unsigned int v89, unsigned short v90)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
{
for (;;) {
signed char v93 = 0;
signed char v92 = 0;
unsigned int v91 = 4U;
trace++;
switch (trace)
{
case 9: 
return v90;
default: abort ();
}
}
}
}

void v25 (void)
{
{
for (;;) {
unsigned char v96 = 2;
unsigned int v95 = 0U;
unsigned short v94 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
unsigned int v99 = 4U;
signed char v98 = 0;
unsigned char v97 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
unsigned char v102 = 4;
unsigned int v101 = 3U;
signed char v100 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v103;
unsigned int v104;
unsigned char v105;
signed int v106;
v103 = v100 + -2;
v104 = v101 + v101;
v105 = 5 - 3;
v106 = -1 + -1;
v21 (v103, v104, v105, v106);
}
break;
case 2: 
{
signed short v107;
unsigned short v108;
v107 = -1 - -3;
v108 = v9 (v107);
history[history_index++] = (int)v108;
}
break;
case 6: 
{
signed int v109;
signed int v110;
unsigned short v111;
signed short v112;
v109 = 1 + 2;
v110 = 1 - 0;
v111 = 4 - 3;
v112 = v15 (v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 12: 
return 7U;
default: abort ();
}
}
}
}
