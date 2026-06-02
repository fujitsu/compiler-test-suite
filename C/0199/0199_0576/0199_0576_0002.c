#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern unsigned int v3 (unsigned int, signed char);
extern unsigned int (*v4) (unsigned int, signed char);
unsigned short v5 (signed int);
unsigned short (*v6) (signed int) = v5;
signed char v7 (void);
signed char (*v8) (void) = v7;
extern signed int v9 (signed short, signed int, signed short);
extern signed int (*v10) (signed short, signed int, signed short);
extern unsigned int v11 (signed int, unsigned char);
extern unsigned int (*v12) (signed int, unsigned char);
extern signed int v13 (unsigned short, unsigned short, unsigned int, signed int);
extern signed int (*v14) (unsigned short, unsigned short, unsigned int, signed int);
extern unsigned int v15 (unsigned short, signed char, signed short);
extern unsigned int (*v16) (unsigned short, signed char, signed short);
void v17 (void);
void (*v18) (void) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed char v21 (signed char, signed int);
extern signed char (*v22) (signed char, signed int);
extern signed int v25 (signed char, signed int);
extern signed int (*v26) (signed char, signed int);
extern unsigned int v27 (unsigned short, signed short, signed int);
extern unsigned int (*v28) (unsigned short, signed short, signed int);
extern signed short v29 (signed char, unsigned int, unsigned short);
extern signed short (*v30) (signed char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v87 = -2;
unsigned char v86 = 5;
unsigned int v85 = 3U;

void v17 (void)
{
{
for (;;) {
signed short v90 = 1;
signed short v89 = 2;
unsigned int v88 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
unsigned char v93 = 2;
unsigned short v92 = 6;
unsigned short v91 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed int v94)
{
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = 0;
unsigned int v96 = 5U;
unsigned short v95 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
signed char v100 = 2;
unsigned char v99 = 3;
signed short v98 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed char v101;
unsigned int v102;
unsigned short v103;
signed short v104;
v101 = v100 - -2;
v102 = 4U + 3U;
v103 = 6 - 5;
v104 = v29 (v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 2: 
{
unsigned short v105;
signed short v106;
signed int v107;
unsigned int v108;
v105 = 7 + 3;
v106 = 1 - -1;
v107 = -2 - -3;
v108 = v27 (v105, v106, v107);
history[history_index++] = (int)v108;
}
break;
case 4: 
{
unsigned int v109;
signed char v110;
unsigned int v111;
v109 = 2U + 3U;
v110 = v100 - -4;
v111 = v3 (v109, v110);
history[history_index++] = (int)v111;
}
break;
case 6: 
{
signed int v112;
unsigned char v113;
unsigned int v114;
v112 = -4 - -4;
v113 = v99 - 7;
v114 = v11 (v112, v113);
history[history_index++] = (int)v114;
}
break;
case 12: 
return 7;
default: abort ();
}
}
}
}
